/*
 *    Generic IoT device firmware
 *    (c) Renze Nicolai 2016
 */

#ifndef USER_CONFIG_H
#define USER_CONFIG_H
  
  /* Supported devices */
  #define DEVICE_NONE 0
  #define DEVICE_RELAY_BOARD_1   1
  #define DEVICE_RELAY_BOARD_2   2
  #define DEVICE_ESPLIGHT_RN     3
  #define DEVICE_QUAKESENSE      4
  #define DEVICE_LAMP_RGB        5
  #define DEVICE_ESPLIGHT_FRIDGE 6
  #define DEVICE_LAMP_RGBW       7
  
  /* Build configuration */
  //#define DEVICE_TYPE DEVICE_NONE
  //#define DEVICE_TYPE DEVICE_RELAY_BOARD_1
  //#define DEVICE_TYPE DEVICE_RELAY_BOARD_2
  //#define DEVICE_TYPE DEVICE_ESPLIGHT_RN
  //#define DEVICE_TYPE DEVICE_QUAKESENSE
  //#define DEVICE_TYPE DEVICE_LAMP_RGB
  #define DEVICE_TYPE DEVICE_LAMP_RGBW
  #define FIRMWARE_VERSION 6
  
  /* Services */
  //#define UPDATE_SVR "upgrade.sensorcloud.nl"
  #define UPDATE_SVR "rnpl.us/ota.php"
  #define NTP_DEFAULT_SERVER "time.nist.gov"

  #if DEVICE_TYPE==DEVICE_NONE
    #define DEVICE_TYPE_NAME "FirmwaRe"
    #define DEVICE_NAME "FirmwaRe"
    #define SETUP_AP_NAME "FirmwaRe"
    #define DEFAULT_HOSTNAME "FirmwaRe"

  #elif DEVICE_TYPE==DEVICE_RELAY_BOARD_1
    #define DEVICE_TYPE_NAME "RN+ Relayboard v1.0"
    #define DEVICE_NAME "RN+ WiFi switch"
    #define SETUP_AP_NAME "wifiswitch"
    #define DEFAULT_HOSTNAME "wifiswitch"
    #define DHT22 14
    #define LED 16
    #define OUTPUT1 13
    #define OUTPUT2 12
    #define BUTTON1 0
    #define BUTTON2 2
    
  #elif DEVICE_TYPE==DEVICE_RELAY_BOARD_2
    #define DEVICE_TYPE_NAME "RN+ Relayboard v2.1"
    #define DEVICE_NAME "RN+ WiFi switch"
    #define SETUP_AP_NAME "wifiswitch"
    #define DEFAULT_HOSTNAME "wifiswitch"
    #define LED 16
    #define LED2 93
    #define OUTPUT1 90
    #define OUTPUT2 91
    #define OUTPUT3 92
    #define BUTTON1 0
    #define BUTTON2 97
    #define BUTTON3 96
    #define BUTTON4 95
    #define BUTTON5 94
    #define I2C_EN
    #define I2C_MCP 1
    #define I2C_BMP180
    #define I2C_MCP_INT 12
    #define ENABLE_DIGITAL_SENSORS
    #define ENABLE_PKAWB
    #define UART_MENU
    //#define DMX
    
  #elif DEVICE_TYPE==DEVICE_ESPLIGHT_FRIDGE
    #define DEVICE_TYPE_NAME "ESPLight 1.4 FRIDGE"
    #define DEVICE_NAME "ESPLight"
    #define SETUP_AP_NAME "esplight"
    #define DEFAULT_HOSTNAME "esplight"
    #define BUTTON1 0
    //#define PULLUP_ENABLE_0
    #define OUTPUT1 5 //PWM RED  (TEMP!)
    #define OUTPUT2 4 //PWM GREEN
    #define OUTPUT3 12 //PWM BLUE
    #define PWMR 5 //PWM RED
    #define PWMG 4 //PWM GREEN
    #define PWMB 12 //PWM BLUE
    #define WS2801 //Enable WS2801 support (uses GPIO13 and 14, SPI, as output)
    #define WS2812GPIO //Enable WS2812 support using SPI_DATA AS OUTPUT!!!!
    #define LED 16
    #define PWM //Enables PWM on output 1,2 and 3
    #define ESPLIGHT //UDP esplight receiver
    #define RAINBOW //Enable rainbow and fade effects
    
  #elif DEVICE_TYPE==DEVICE_ESPLIGHT_RN
    #define DEVICE_TYPE_NAME "ESPLight 1.4 RN"
    #define DEVICE_NAME "ESPLight"
    #define SETUP_AP_NAME "esplight"
    #define DEFAULT_HOSTNAME "esplight"
    #define BUTTON1 0
    //#define PULLUP_ENABLE_0
    #define OUTPUT1 5 //PWM RED  (TEMP!)
    #define OUTPUT2 4 //PWM GREEN
    #define OUTPUT3 12 //PWM BLUE
    #define PWMR 5 //PWM RED
    #define PWMG 4 //PWM GREEN
    #define PWMB 12 //PWM BLUE
    #define WS2801 //Enable WS2801 support (uses GPIO13 and 14, SPI, as output)
    #define WS2812 //Enable WS2812 support (uses i2s_dat pin, RX, as output)
    #define LED 16
    #define PWM //Enables PWM on output 1,2 and 3
    #define ESPLIGHT //UDP esplight receiver
    #define RAINBOW //Enable rainbow and fade effects

  #elif DEVICE_TYPE==DEVICE_QUAKESENSE
    #define DEVICE_TYPE_NAME "RN+ Earthquake sensor PR.1"
    #define DEVICE_NAME "quakesense"
    #define SETUP_AP_NAME "quakesense"
    #define DEFAULT_HOSTNAME "quakesense"
    #define LED 16
    #define BUTTON1 0
    #define I2C_EN
    #define I2C_MMA8451
    
  #elif DEVICE_TYPE==DEVICE_LAMP_RGB
    #define DEVICE_TYPE_NAME "Generic RGB led light"
    #define DEVICE_NAME "RGBlamp"
    #define SETUP_AP_NAME "RGBlamp"
    #define DEFAULT_HOSTNAME "rgblamp"
    #define BUTTON1 0
    #define BUTTON2 2
    #define PWMR 12 //PWM RED
    #define PWMG 13 //PWM GREEN
    #define PWMB 14 //PWM BLUE
    #define PWM //Enables PWM on output 1,2 and 3

  #elif DEVICE_TYPE==DEVICE_LAMP_RGBW
    #define DEVICE_TYPE_NAME "RGBW Lamp"
    #define DEVICE_NAME "RGBWlamp"
    #define SETUP_AP_NAME "light"
    #define DEFAULT_HOSTNAME "rgbwlight"
    #define BUTTON1 0
    #define LED 16
    #define OUTPUT1 12
    #define OUTPUT2 13
    #define OUTPUT3 14
    #define OUTPUT4 5
    #define PWMR 5 //PWM RED
    #define PWMG 14 //PWM GREEN
    #define PWMB 13 //PWM BLUE
    #define PWMW 12 //PWM WHITE
    #define PWM
    #define ESPLIGHT //UDP esplight receiver
    #define RAINBOW //Enable rainbow and fade effects
  #endif
  
  #define WEBSERVER_NAME DEVICE_NAME "/" FIRMWARE_VERSION
#endif
