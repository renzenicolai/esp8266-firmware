#include <esp8266.h>

os_timer_t heapTimer;
/*
static void heapTimerCb(void *arg)
{
  system_print_meminfo();
} */

#ifdef UART_MENU
os_timer_t uartTimer;
static void uartTimerCb(void *arg)
{
  uint8_t uart_buf[128]={0};
  uint16_t len = 0;
  len = rx_buff_deq(uart_buf, 128 );
  if (len>0) {
    tx_buff_enq(uart_buf,len);
  }
  int i;
  uint8_t tx_buf[128]={0};
  for (i = 0; i < len; i++) {
    if (uart_buf[i]=='?') {
      os_sprintf(tx_buf, "Menu:\n\r?. Help\ns. heap info (debug)\n\ru. udp test\n\r");
    } else if (uart_buf[i]=='s') {
      system_print_meminfo();
    } else if (uart_buf[i]=='u') {
      uint8_t server[4] = {192, 168, 0, 117};
      int port = 1337;
      char data[64];
      os_sprintf(data, "Hello world!");
      uint16 length = os_strlen( data );
      os_sprintf(tx_buf, "UDP test result: %d.\n\r", send_udp((uint8_t*) &server, port, (char*) &data, length));
    }
    uint8_t tx_buf_len = os_strlen(tx_buf);
    if (tx_buf_len>0) {
      tx_buff_enq(tx_buf,tx_buf_len);
    }
  }
}
#endif

//[1] Pre-os start function
void user_rf_pre_init(void)
{
  //Do nothing
}

//[3] System init done (system init happens after user_init)
void system_init_done(void)
{
  //os_printf("System init done. Starting services...\n");
  espFsInit((void*)(0x40200000 + 0x1FC000));
  httpdInit(cgi_get_builtInUrls(), 80);
  captdnsInit();
  //initRTC();
}

//[2] Init function
void user_init(void)
{
  uart_init( BIT_RATE_115200,BIT_RATE_115200 );
  //system_set_os_print( OS_DEBUG );
  os_printf("RN+ FirmwaRe [Version: %d]\n\r", FIRMWARE_VERSION);
  os_printf("Device: %s\n\r", DEVICE_TYPE_NAME);
  os_printf("Boot: %d\n\r", system_get_boot_mode()); //system_get_boot_version()

  /* Hardware */
  board_init();
  board_statusLed(0);
  board_statusLed2(0);

  /* Load settings */
  settings_load( settings_get_pointer() );
  settings_apply( settings_get_pointer(), true );
  //settings_print( settings_get_pointer() );

  /* Start WiFi */
  wifiInit();

  /* Debug: Memory information */
  /* os_memset(&heapTimer,0,sizeof(os_timer_t));
  os_timer_disarm(&heapTimer);
  os_timer_setfn(&heapTimer, (os_timer_func_t *)heapTimerCb, NULL);
  os_timer_arm(&heapTimer, 10000, 1); */

  /* Debug: Serial port */
  #ifdef UART_MENU
  os_memset(&uartTimer,0,sizeof(os_timer_t));
  os_timer_disarm(&uartTimer);
  os_timer_setfn(&uartTimer, (os_timer_func_t *)uartTimerCb, NULL);
  os_timer_arm(&uartTimer, 10, 1);
  #endif

  /* Tell os about post system start callback */
  system_init_done_cb(system_init_done);
}
