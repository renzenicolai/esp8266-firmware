#ifndef WIFI_H
#define WIFI_H

  #define WIFI_SETTINGS_VERSION 1
  typedef struct __attribute__((packed, aligned(4))) { //Size must always be a multiple of 4!
    //Info about stored data
    uint8_t magic;
    uint8_t version;
    uint8_t checksum;
    //Info about system state
    bool setupEnabled;
    //Settings
    char ssid[32];
    char password[64];
    bool enable_dhcp;
    uint8_t static_ip_1;
    uint8_t static_ip_2;
    uint8_t static_ip_3;
    uint8_t static_ip_4;
    uint8_t static_gateway_1;
    uint8_t static_gateway_2;
    uint8_t static_gateway_3;
    uint8_t static_gateway_4;
    uint8_t static_netmask_1;
    uint8_t static_netmask_2;
    uint8_t static_netmask_3;
    uint8_t static_netmask_4;
  } wifiSettings_t;

  void wifiInit( void ); //Call after boot
  wifiSettings_t* wifiSettingsGetPointer( void ); //To get the pointer to the active settings struct
  bool wifiSettingsReadFromFlash( wifiSettings_t *settings ); //Do not use
  void wifiSettingsRestoreDefault( wifiSettings_t *settings ); //Do not use
  void wifiSettingsWriteToFlash( wifiSettings_t *settings ); //Do not use
  void wifiSetStation( wifiSettings_t *settings, bool disable ); //Do not use
  void wifiSetAp( wifiSettings_t *settings, bool disable ); //Do not use
  void wifiApply( wifiSettings_t *settings ); //Do not use
  void wifiSetup( void ); //Call to enable setup (use in userbutton callback)
  void ICACHE_FLASH_ATTR wifiSetupCommit( wifiSettings_t *settings ); //Call to test new settings after user presses apply in setup mode
  static void connTestTimerCb( void *arg ); //Timer callback for connection test timeout. Do not use
  void wifiReconnectAfterFail( void ); //Do not use
  void wifiHandleEventCb( System_Event_t *evt ); //Do not use
  static void wifiApplyTimerCb( void *arg ); //Do not use
  bool wifiGetConnectionTest( void ); //Returns true while system tries to connect to configured AP
  bool wifiGetConnectionTestEnded( void ); //Returns true when system stopped trying to connect to the configured AP
  bool wifiGetConnectionResult( void ); //Returns true when connection to AP was succesfull, returns false when failed.

#endif
