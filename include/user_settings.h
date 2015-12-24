#ifndef __USER_SETTINGS_H__
#define __USER_SETTINGS_H__

  #define SETTINGS_VERSION 3

  typedef struct __attribute__((packed, aligned(4))) { //Size must always be a multiple of 4!
    //Description of settings
    uint8_t magic;
    uint8_t version;
    //Device information
    char name[32];
    //MDNS
    bool enable_mdns;
    //NTP
    bool enable_ntp;
    char ntpserver[64];
    uint8_t timezone;
    bool enable_summertime;
    //Security
    char device_password[64];
    //Digital outputs
    uint8_t bootstate;
    //ESPLight
    uint8_t ledstrip_type;
    uint8_t ledstrip_length;
    uint8_t bootstate_R;
    uint8_t bootstate_G;
    uint8_t bootstate_B;
    //PKA
    uint8_t pka_wb;
    uint8_t pka_wb_time;
  } userSettings_t;

  userSettings_t* settings_get_pointer( void );
  bool settings_load ( userSettings_t *settings );
  void settings_store( userSettings_t *settings );
  void settings_print( userSettings_t *settings );
  void settings_apply( userSettings_t *settings, bool apply_bootstate );
#endif
