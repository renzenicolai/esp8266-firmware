#ifndef ESP8266_H
#define ESP8266_H

#include <math.h>

/* Config */
#include "user_config.h"

/* SDK */
#include "ets_sys.h"
#include "os_type.h"
#include "osapi.h"
#include "user_interface.h"
#include "mem.h"
#include "espconn.h"
#include "spi_flash.h"
#include "gpio.h"

#include "util/ftoa.h"

/* FLASH INFO */
#include "flash.h"

/* DRIVERS */
#include "driver/uart.h"
#include "driver/gpio16.h"
#include "driver/hw_timer.h"
#include "driver/i2c_master.h"
#include "driver/i2c_bmp180.h"
#include "driver/i2c_mma8451.h"
#include "driver/i2c_mcp23008.h"

//#ifdef I2S_WS2812 //WS2812 ledstrip using i2s (Uses UART0 RX as data)
  #include "driver/ws2812.h"
//#endif

#include "driver/ws2812gpio.h"

#include "driver/slc_register.h"
#include "driver/pin_mux_register.h"

/* Sprite_tm */
#include "heatshrink_config.h"
#include "heatshrink_decoder.h"
#include "espfs.h"
#include "espfsformat.h"
#include "httpd/httpd.h"
#include "httpd/httpd_espfs.h"
#include "httpd/httpd_auth.h"
#include "captdns.h"


//---
#include "user_main.h"
#include "user_settings.h"
#include "wifi.h"
#include "board.h"
#include "user_io.h"
#include "cgi.h"
#include "rtc.h"
//---

#include "httpclient.h"
#include "rboot-api.h"

#ifdef DMX
  #include "artnet.h"
#endif

#include "driver/ws2801.h"

//Definition for missing function ets_strstr
char *ets_strstr(const char *haystack, const char *needle);

#endif
