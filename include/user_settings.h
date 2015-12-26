#ifndef __USER_SETTINGS_H__
#define __USER_SETTINGS_H__

  #define SETTINGS_VERSION 5

  typedef struct __attribute__((packed, aligned(4))) { //Size must always be a multiple of 4!
    //Description of settings
    uint8_t magic;		//0x42
    uint8_t version;		//SETTINGS_VERSION
    uint8_t checksum;		//Checksum (not used yet)
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
    uint8_t pka_wb;		//Mode
    uint8_t pka_wb_time;	//Time in seconds
    uint8_t ledstrip_type;
    uint8_t ledstrip_length;
    uint8_t bootstate_R;
    uint8_t bootstate_G;
    uint8_t bootstate_B;
    //Sensors
    uint8_t actSensor[16];
  } userSettings_t;

  userSettings_t* settings_get_pointer( void );
  bool settings_load ( userSettings_t *settings );
  void settings_store( userSettings_t *settings );
  void settings_print( userSettings_t *settings );
  void settings_apply( userSettings_t *settings, bool apply_bootstate );
#endif
