#ifndef USER_CONFIG_H
#define USER_CONFIG_H

/*
 *    Generic IoT device firmware
 *    (c) Renze Nicolai 2015
 */
 
 /* Device type list:
 * - 0: No hardware specific code or functions enabled
 * - 1: RN+ Relay board (HW V1.0) [2 relays, DHT22, 2 user inputs]
 * - 2: RN+ Relay board (HW V2.1) [3 relays, BMP180, 5 user inputs, ledstrip support, optional DS18B20]
 * - 3: ESPLight (Development version) [3 pwm outputs, ledstrip support, 2 user inputs]
 * - 4: Accelerometer test board
 * - 5: Generic RGB light (PWM)
 */
 
  /* Supported devices */
  #define DEVICE_NONE 0
  #define DEVICE_RELAY_BOARD_1 1
  #define DEVICE_RELAY_BOARD_2 2
  #define DEVICE_ESPLIGHT 3
  #define DEVICE_QUAKESENSE 4
  #define DEVICE_LAMP_RGB 5
  
  /* Build configuration */
  #define DEVICE_TYPE DEVICE_RELAY_BOARD_2 //Build for relayboard v2
  //#define DEVICE_TYPE DEVICE_LAMP_RGB
  #define FIRMWARE_VERSION 2
  #define SETTINGS_SECTOR 0xFC
  #define WIFI_SETTINGS_SECTOR 0xFD
  
  /* Services */
  #define UPDATE_SVR "upgrade.sensorcloud.nl"
  #define NTP_DEFAULT_SERVER "time.nist.gov"

  #if DEVICE_TYPE==DEVICE_RELAY_BOARD_1
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
    
  #elif DEVICE_TYPE==DEVICE_ESPLIGHT
    #define DEVICE_TYPE_NAME "ESPLight 1.0"
    #define DEVICE_NAME "ESPLight"
    #define SETUP_AP_NAME "esplight"
    #define DEFAULT_HOSTNAME "esplight"
    #define BUTTON1 0
    #define PULLUP_ENABLE_0
    #define BUTTON2 12
    #define PULLUP_ENABLE_12
    #define OUTPUT1 5 //PWM RED
    #define OUTPUT2 4 //PWM GREEN
    #define OUTPUT3 2 //PWM BLUE
    #define OUTPUT4 13 //DIGITAL DATA
    #define PWM_ENABLE //Enables PWM on output 1,2 and 3
    //#define WS2812 13
    
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
    #define OUTPUT1 12 //PWM RED
    #define OUTPUT2 13 //PWM GREEN
    #define OUTPUT3 14 //PWM BLUE
    #define PWM_ENABLE //Enables PWM on output 1,2 and 3
  #endif
  
  #define WEBSERVER_NAME DEVICE_NAME "/" FIRMWARE_VERSION
#endif
