#include <esp8266.h>

os_timer_t heapTimer;
static void heapTimerCb(void *arg)
{
  system_print_meminfo();
}


os_timer_t uartTimer;
static void uartTimerCb(void *arg)
{
  uint8 uart_buf[128]={0};
  uint16 len = 0;
  len = rx_buff_deq(uart_buf, 128 );
  if (len>0) {
    tx_buff_enq(uart_buf,len);
  }
}

//[1] Pre-os start function
void user_rf_pre_init(void)
{
  //Do nothing
}

//[3] System init done (system init happens after user_init)
void system_init_done(void)
{
  os_printf("System init done. Starting services...\n");
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
  settings_print( settings_get_pointer() );

  /* Start WiFi */
  wifiInit();

  /* Debug: Memory information */
  os_memset(&heapTimer,0,sizeof(os_timer_t));
  os_timer_disarm(&heapTimer);
  os_timer_setfn(&heapTimer, (os_timer_func_t *)heapTimerCb, NULL);
  //os_timer_arm(&heapTimer, 5000, 1);

  /* Debug: Serial port */
  os_memset(&uartTimer,0,sizeof(os_timer_t));
  os_timer_disarm(&uartTimer);
  os_timer_setfn(&uartTimer, (os_timer_func_t *)uartTimerCb, NULL);
  os_timer_arm(&uartTimer, 50, 1);

  /* Tell os about post system start callback */
  system_init_done_cb(system_init_done);
}
