#ifndef ESP8266_H
#define ESP8266_H

/* File with all needed includes */

#include "user_config.h"

#include "ets_sys.h"
#include "os_type.h"
#include "osapi.h"
#include "user_interface.h"

#include "functions.h"

#include "mem.h"
#include "espconn.h"
#include "spi_flash.h"
#include "gpio.h"

#include "driver/uart.h"
#include "driver/gpio16.h"
#include "driver/hw_timer.h"
#include "driver/i2c_master.h"
#include "driver/i2c_bmp180.h"
#include "driver/i2c_mma8451.h"
#include "driver/ws2812_i2s.h"
#include "driver/captdns.h"
#include "driver/auth.h"

#include "slc_register.h"
#include "pin_mux_register.h"

//---
#include "user_main.h"
#include "user_settings.h"
#include "wifi.h"
#include "board.h"
#include "user_io.h"
#include "cgi.h"
#include "rtc.h"
//---

//NTP
#include "ntp.h"

//Webserver
#include "httpd.h"
#include "httpdespfs.h"
#include "espfs.h"

//Definition for missing function ets_strstr
char *ets_strstr(const char *haystack, const char *needle);

#endif
