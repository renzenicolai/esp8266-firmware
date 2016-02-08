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
  #ifdef RAINBOW
    rainbow_init(); //Only needs to be initialized once
  #endif
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
