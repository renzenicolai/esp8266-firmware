#ifndef USER_SETTINGS_H
#define USER_SETTINGS_H

  #include "user_settings.h"

  #define SETTINGS_VERSION 7

  typedef struct __attribute__((packed, aligned(4))) { //Size must always be a multiple of 4!
    //Description of settings
    uint8_t magic;      //0x42   
    uint8_t version;    //SETTINGS_VERSION
    //Device
    char name[64];		//Shown on homepage
    //Network
    char hostname[32];		//Hostname
    bool enable_mdns;		//Not used
    //Time
    bool enable_ntp;		//Not used
    char ntpserver[64];		//Not used
    uint8_t timezone;		//Not used
    bool enable_summertime;	//Not used
    //Security
    bool authEnable;
    char authUser[64];
    char authPassword[64];
    //Hardware
    uint8_t bootstate;		//State of outputs at boot
    #ifdef ENABLE_PKAWB
      uint8_t pka_wb;		//Mode
      uint8_t pka_wb_time;	//Time in seconds
    #endif
    #ifdef PWM
    uint8_t pwmBootstateR;
    uint8_t pwmBootstateG;
    uint8_t pwmBootstateB;
    #endif
    #ifdef WS2801
      bool ws2801Enabled;
      uint16_t ws2801Length;
      uint8_t ws2801BootstateR;
      uint8_t ws2801BootstateG;
      uint8_t ws2801BootstateB;
    #endif
    #if defined(WS2812) || defined(WS2812GPIO)
      bool ws2812Enabled;
      uint16_t ws2812Length;
      uint8_t ws2812BootstateR;
      uint8_t ws2812BootstateG;
      uint8_t ws2812BootstateB;
    #endif
    #ifdef ESPLIGHT
      bool esplightEnabled;
    #endif
    //Sensors
    uint8_t actSensor[8];
    uint16_t sensorTimeout[8];
    char sensorActionUrl[4][256];
    char sensorUrl[256];
    uint8_t sensorUrlType;
    uint8_t sensorUrlInterval;
    bool sensorUrlIntervalEnable;
    
    //Checksum
    uint32_t checksum; //Must be last variable in struct
  } userSettings_t;

  userSettings_t* settings_get_pointer( void );
  bool settings_load ( userSettings_t *settings );
  void settings_load_default ( userSettings_t *settings );
  void settings_store( userSettings_t *settings );

  #define SENSORURL_NONE 0
  #define SENSORURL_THINGSPEAK 1
  #define SENSORURL_SENSORCLOUD 2
#endif
