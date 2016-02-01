#define USE_US_TIMER
#include <esp8266.h>
#include "rboot-bigflash.c" //Fix for loading rBoot version of Cache_Read_Enable_New instead of SDK version
#include "util/base64.h"
#include "driver/esplight.h"
#include "rainbow.h"

os_timer_t heapTimer;

uint32_t free_heap_at_boot = 0;

static void ICACHE_FLASH_ATTR heapTimerCb(void *arg)
{
  //system_print_meminfo();
  uint32_t free = system_get_free_heap_size();
  os_printf("Heap [Free: %d, Used since boot: %d]\r\n", free, free_heap_at_boot-free);
}

void ICACHE_FLASH_ATTR otaCheckAvailableCb(char * response, int http_status, char * full_response)
{
  uint8_t tx_buf[128]={0};
  if (http_status==HTTP_STATUS_GENERIC_ERROR) {
    os_sprintf(tx_buf, "Could not connect to OTA update server.\r\n");
  } else if (http_status==200) {
    uint8_t available_version = atoi(response);
    if (available_version>FIRMWARE_VERSION) {
      os_sprintf(tx_buf, "New firmware version (%d) available!\r\n", available_version);
    } else if (available_version<FIRMWARE_VERSION) {
      os_sprintf(tx_buf, "No new firmware available, ota server supplies old version %d.\r\n", available_version);
    } else {
      os_sprintf(tx_buf, "Firmware is up-to-date!\r\n");
    }
    //os_printf("strlen(full_response)=%d\n", strlen(full_response));
    //os_printf("response=%s<EOF>\n", response);
  } else {
    os_sprintf(tx_buf, "OTA service unavailable (%d)\r\n", http_status);
  }
  tx_buff_enq(tx_buf, os_strlen(tx_buf));
}

uint32_t otaSector;
uint32_t otaWriteTo;
uint32_t otaAvailableVersion;
uint32_t otaSize;


void ICACHE_FLASH_ATTR otaDoUpdateStep3Cb(char * response, int http_status, char * full_response)
{
  uint8_t tx_buf[128]={0};
  if (http_status==200) {
    unsigned char sectordata[SPI_FLASH_SEC_SIZE];
    uint32_t io = base64_decode(strlen(response), response, SPI_FLASH_SEC_SIZE, sectordata); //Might need to be changed to &sensordata
    uint32_t max = SPI_FLASH_SEC_SIZE;
    if ((io==max)||(io<max)) {
      uint32_t sector = otaWriteTo+otaSector;
      uint32_t sector_address = sector*SPI_FLASH_SEC_SIZE;
      os_sprintf(tx_buf, "Writing to sector 0x%x...\r\n", sector);
      spi_flash_erase_sector(sector);
      spi_flash_write(sector_address, (uint32 *) sectordata, io);
      otaSector++;
      if (otaSector*SPI_FLASH_SEC_SIZE>=otaSize) {
        os_sprintf(tx_buf, "OTA update completed. Restarting...\r\n");
        uint8_t rom = 0;
        if (rboot_get_current_rom()==0) rom = 1;
        rboot_set_current_rom(rom);
        tx_buff_enq(tx_buf, os_strlen(tx_buf));
        //os_delay_us(2000000); //Wait 2 seconds.
	system_restart();
	while(1); //Halt.
      } else {
        char url[128];
        os_sprintf(url, "http://%s?device=%d&version=%d&get=%d&sector=%d", UPDATE_SVR, DEVICE_TYPE, FIRMWARE_VERSION, otaAvailableVersion, otaSector);
        http_get( url, "", otaDoUpdateStep3Cb );
      }
    } else {
      os_sprintf(tx_buf, "Error at sector #%d: too much data (%d)!\r\n", otaSector, io);
    }
  } else {
    os_sprintf(tx_buf, "OTA service unavailable (%d)\r\n", http_status);
  }
  tx_buff_enq(tx_buf, os_strlen(tx_buf));
}

void ICACHE_FLASH_ATTR otaDoUpdateStep2Cb(char * response, int http_status, char * full_response)
{
  uint8_t tx_buf[128]={0};
  if (http_status==200) {
    otaSize = atoi(response);
    os_sprintf(tx_buf, "Update size: %d bytes.\r\n", otaSize);
    if ((otaSize>0) && (otaSize<FLASH_FIRMWARE_SECTORS*SPI_FLASH_SEC_SIZE)) {
      uint8_t rom = 0;
      otaSector = 0;
      otaWriteTo = FLASH_USER1_SECTOR;
      if (rboot_get_current_rom()==0) {
        rom = 1;
        otaWriteTo = FLASH_USER2_SECTOR;
      }
      char url[128];
      os_sprintf(url, "http://%s?device=%d&version=%d&rom=%d&get=%d&sector=%d", UPDATE_SVR, DEVICE_TYPE, FIRMWARE_VERSION, rom, otaAvailableVersion, otaSector);
      http_get( url, "", otaDoUpdateStep3Cb );
    } else {
      os_sprintf(tx_buf, "OTA error: invalid size.\r\n");
    }
  } else {
    os_sprintf(tx_buf, "OTA service unavailable (%d)\r\n", http_status);
  }
  tx_buff_enq(tx_buf, os_strlen(tx_buf));
}

void ICACHE_FLASH_ATTR otaDoUpdateStep1Cb(char * response, int http_status, char * full_response)
{
  uint8_t tx_buf[128]={0};
  if (http_status==HTTP_STATUS_GENERIC_ERROR) {
    os_sprintf(tx_buf, "Could not connect to OTA update server.\r\n");
  } else if (http_status==200) {
    otaAvailableVersion = atoi(response);
    if (otaAvailableVersion>FIRMWARE_VERSION) {
      os_sprintf(tx_buf, "Updating to version %d.\r\n", otaAvailableVersion);
      char url[128];
      os_sprintf(url, "http://%s?device=%d&version=%d&get=%d&size", UPDATE_SVR, DEVICE_TYPE, FIRMWARE_VERSION, otaAvailableVersion);
      http_get( url, "", otaDoUpdateStep2Cb );
    } else {
      os_sprintf(tx_buf, "No update available, update canceled!\r\n");
    }
    //os_printf("strlen(full_response)=%d\n", strlen(full_response));
    //os_printf("response=%s<EOF>\n", response);
  } else {
    os_sprintf(tx_buf, "OTA service unavailable (%d)\r\n", http_status);
  }
  tx_buff_enq(tx_buf, os_strlen(tx_buf));
}

#ifdef UART_MENU
os_timer_t uartTimer;
static void ICACHE_FLASH_ATTR uartTimerCb(void *arg)
{
  uint8_t uart_buf[128]={0};
  uint16_t len = 0;
  len = rx_buff_deq(uart_buf, 128 );
  if (len>0) {
    //tx_buff_enq(uart_buf,len);
    int i;
    uint8_t tx_buf[128]={0};
    for (i = 0; i < len; i++) {
      if (uart_buf[i]=='?') {
        os_sprintf(tx_buf, "Menu:\r\n?. Help\ns. heap info (debug)\r\nv. Firmware version\r\no. OTA update\r\nc. check for new firmware\r\n"); //t. udp test\r\n
      } else if (uart_buf[i]=='s') {
        system_print_meminfo();
      } else if (uart_buf[i]=='v') {
        os_sprintf(tx_buf, "Device type: %d\r\nFirmware version: %d\r\nRunning app: %d\r\n", DEVICE_TYPE, FIRMWARE_VERSION, rboot_get_current_rom());
      } else if (uart_buf[i]=='c') {
        char url[128];
        os_sprintf(url, "http://%s?device=%d&version=%d&info=1", UPDATE_SVR, DEVICE_TYPE, FIRMWARE_VERSION);
        http_get( url, "", otaCheckAvailableCb );
        os_sprintf(tx_buf, "Checking for available updates... (%s)\r\n",url);
      } else if (uart_buf[i]=='o') {
        char url[128];
        os_sprintf(url, "http://%s?device=%d&version=%d&info=1", UPDATE_SVR, DEVICE_TYPE, FIRMWARE_VERSION);
        http_get( url, "", otaDoUpdateStep1Cb );
        os_sprintf(tx_buf, "OTA update started!\r\n",url);
      /*} else if (uart_buf[i]=='t') {
        uint8_t server[4] = {192, 168, 0, 117};
        int port = 1337;
        char data[64];
        os_sprintf(data, "Hello world!");
        uint16 length = os_strlen( data );
        os_sprintf(tx_buf, "UDP test result: %d.\r\n", send_udp((uint8_t*) &server, port, (char*) &data, length));
      } else if (uart_buf[i]=='h') {
        os_sprintf(tx_buf, "Running http client test...\r\n");
        httpClientConnect(); */
      } else {
        os_sprintf(tx_buf, "Unknown command (%c).\r\n", uart_buf[i]);
      }
      uint8_t tx_buf_len = os_strlen(tx_buf);
      if (tx_buf_len>0) {
        tx_buff_enq(tx_buf,tx_buf_len);
      }
    }
  }
}
#endif


//[1] Pre-os start function
void user_rf_pre_init(void)
{
  free_heap_at_boot = system_get_free_heap_size(); //To know how much heap space we use we need to know the amount of heap space before doing anything.
  char buffer[128]; //For storing messages
  system_set_os_print(false); //Disable SDK debug and printf()
  uart_div_modify(0, 52*1000000 / 115200 ); //Set correct baudrate (CPU is running at 52mHz for now)
  os_sprintf(buffer, "RN+ FirmwaRe\r\nVersion: %d\r\nDevice: %s\r\n", FIRMWARE_VERSION, DEVICE_TYPE_NAME); //Greet user
  uart0_tx_buffer(buffer, os_strlen(buffer));
  board_init1(); //Init hardware (basic)
  wifi_station_set_auto_connect(false); //Avoid having sdk connect using the settings in the *** sdk settings storage
  board_statusLed(system_update_cpu_freq(80)); //Set CPU speed to 80mHz
  uart_div_modify(0, 80*1000000 / 115200 ); //Set correct UART baudrate (CPU is running at 80mHz)
  //os_delay_us(2000000);
}

//[3] System init done (system init happens after user_init)
void system_init_done(void)
{
  char buffer[128]; //For storing messages
  os_printf("Starting services...\r\n");
  userSettings_t* settings = settings_get_pointer();

  //ESPFS
  EspFsInitResult result = espFsInit((void*)(0x40200000 + 0x1FC000));   //Try to init espfs
  if ((result == ESPFS_INIT_RESULT_NO_IMAGE)||(result == ESPFS_INIT_RESULT_BAD_ALIGN)) { //ESPFS is bad, should fix (download new?)
    os_sprintf(buffer, "ESPFS could not be initialized!\r\n");
    uart0_tx_buffer(buffer, os_strlen(buffer));
  }

  //Start webserver
  httpdInit(cgi_get_builtInUrls(), 80);

  //Start captive dns server (DOES NOT WORK!)
  //captdnsInit(); //Needs to be fixed

  //Start real time clock servic (DOES NOT WORK!)
  //initRTC();

  //initUdpServerTest(); //UDP test

  //Start artnet (DOES NOT WORK!)
  #ifdef DMX
    //artnet_init(); //Start ARTNET receiver
  #endif
  init_drivers();
  rainbow_init(); //Only needs to be initialized once
  os_printf("Services started.\r\n");
}

//[2] Init function
void user_init(void)
{
  uart_init(115200, 115200); //Set UART baudrates
  system_set_os_print(true); //Enable debug
  board_init2();
  board_statusLed(0);
  board_statusLed2(0);


  userSettings_t* settings = settings_get_pointer();
  if (!settings_load(settings)) {
    settings_load_default(settings);
  }
  board_applybootstate(settings);

  #ifdef DMX
    dmxInit(); //Start DMX output
  #endif

  wifiInit();

  /* Debug: Memory information */
  os_memset(&heapTimer,0,sizeof(os_timer_t));
  os_timer_disarm(&heapTimer);
  os_timer_setfn(&heapTimer, (os_timer_func_t *)heapTimerCb, NULL);
  os_timer_arm(&heapTimer, 7500, 1);

  /* Serial port (should be changed to interrupt based handling!) */
  #ifdef UART_MENU
  os_memset(&uartTimer,0,sizeof(os_timer_t));
  os_timer_disarm(&uartTimer);
  os_timer_setfn(&uartTimer, (os_timer_func_t *)uartTimerCb, NULL);
  os_timer_arm(&uartTimer, 10, 1);
  #endif

  /* Tell os about post system start callback */
  system_init_done_cb(system_init_done);
}

void ICACHE_FLASH_ATTR init_drivers( void )
{
  userSettings_t* settings = settings_get_pointer();
  os_printf("INIT_DRIVERS:");
  #ifdef PWM
    pwm_stop(); //Stop driver
    if (true) {
      pwm_init(settings->pwmBootstateR, settings->pwmBootstateG, settings->pwmBootstateB); //Start driver
      os_printf("PWM ");
    }
  #endif
  #ifdef WS2801
    ws2801_stop(); //Stop driver
    if ((settings->ws2801Enabled)&&(settings->ws2801Length>0)) {
      ws2801_init(settings->ws2801Length, settings->ws2801BootstateR, settings->ws2801BootstateG, settings->ws2801BootstateB); //Start driver
      os_printf("WS2801 ");
    }
  #endif
  #if defined(WS2812) || defined(WS2812GPIO)
    ws2812_stop(); //Stop driver
    if ((settings->ws2812Enabled)&&(settings->ws2812Length>0)) {
      ws2812_init(settings->ws2812Length, settings->ws2812BootstateR, settings->ws2812BootstateG, settings->ws2812BootstateB); //Start driver
      os_printf("WS2812 ");
    }
  #endif
  #ifdef ESPLIGHT
    esplight_stop();
    if (settings->esplightEnabled) {
      initEsplightUdp();
      os_printf("ESPLIGHT ");
    }
  #endif
    os_printf("\r\n");
}

//system_get_chip_id(void)
