/*
 * user_settings.c
 * Handles settings storage
 * Copyright 2015 RN+ (Renze Nicolai)
 * License: GPLv2
 */

#include <esp8266.h>

userSettings_t settings;

userSettings_t* settings_get_pointer( void )
{
  return &settings;
}

void ICACHE_FLASH_ATTR settings_load_default( userSettings_t *settings )
{
  //Description
  settings->magic = 0x42;
  settings->version = SETTINGS_VERSION;
  //Device information
  strcpy(settings->name, DEFAULT_HOSTNAME);
  //MDNS
  settings->enable_mdns = 0;
  //NTP
  settings->enable_ntp = true;
  strcpy(settings->ntpserver, NTP_DEFAULT_SERVER);
  settings->timezone = 13; //UTC+1 (UTC is 12)
  settings->enable_summertime = true; //True for Netherlands
  //Security
  strcpy(settings->device_password, "");
  //Digital outputs
  settings->bootstate = 0;
  //ESPLight
  settings->ledstrip_type = 0;
  settings->ledstrip_length = 0;
  settings->bootstate_R = 0;
  settings->bootstate_G = 0;
  settings->bootstate_B = 0;
  //PKA
  settings->pka_wb = 0;
  settings->pka_wb_time = 30;
}

bool ICACHE_FLASH_ATTR settings_load( userSettings_t *settings )
{
  spi_flash_read(SETTINGS_SECTOR*SPI_FLASH_SEC_SIZE, (uint32 *) settings,sizeof(userSettings_t));
  if (settings->magic==0x42) {
    if (settings->version==SETTINGS_VERSION) {
      return true;
    } else {
      os_printf("Unknown or corrupted settings found (Version '%d').\n\r", settings->version);
      settings_load_default( settings );
      return false;
    }
  } else {
    os_printf("Device has not been configured, loading default settings.\n\r");
    settings_load_default( settings );
  }
}

void ICACHE_FLASH_ATTR settings_store( userSettings_t *settings )
{
  spi_flash_erase_sector(SETTINGS_SECTOR);
  spi_flash_write(SETTINGS_SECTOR*SPI_FLASH_SEC_SIZE, (uint32 *) settings,sizeof(userSettings_t));
  os_printf("Settings saved to flash!\n\r");
}

void ICACHE_FLASH_ATTR settings_print( userSettings_t *settings )
{
  if (settings->magic==0x42)
  {
    os_printf("Version: %d\n\r", settings->version);
    if (settings->version==SETTINGS_VERSION)
    {
      os_printf("Device name: %s\n\r", settings->name);
      if (settings->enable_mdns) {
        os_printf("MDNS is enabled\n\r");
      } else {
        os_printf("MDNS is disabled\n\r");
      }
      if (settings->enable_ntp) {
        os_printf("NTP is enabled\n\r");
        os_printf("NTP server: %s\n\r", settings->ntpserver);
        os_printf("Timezone (UTC=12): %d\n\r", settings->timezone);
        os_printf("Automatic summertime adjust: %d\n\r", settings->enable_summertime);
      } else {
        os_printf("NTP is disabled\n\r");
      }
      os_printf("Password: %s\n\r", settings->device_password);
      os_printf("Bootstate: %x\n\r", settings->bootstate);
      os_printf("Ledstrip type: %d\n\r", settings->ledstrip_type);
      os_printf("Ledstrip length: %d\n\r", settings->ledstrip_length);
      os_printf("Bootstate RED: %d\n\r", settings->bootstate_R);
      os_printf("Bootstate GREEN: %d\n\r", settings->bootstate_G);
      os_printf("Bootstate BLUE: %d\n\r", settings->bootstate_B);
      os_printf("PKA WB: %d\n\r", settings->pka_wb);
      os_printf("PKA WB TIME: %d\n\r", settings->pka_wb_time);
    }
    else
    {
      os_printf("Unknown version.\n\r");
    }
  }
  else
  {
    os_printf("Invalid magic.\n\r");
  }
}

void ICACHE_FLASH_ATTR settings_apply( userSettings_t *settings, bool apply_bootstate )
{
  //Description
  if (!((settings->magic==0x42)&&(settings->version==SETTINGS_VERSION))) {
    os_printf("<ERROR: CAN NOT APPLY CORRUPT SETTINGS!>\n\r");
    return;
  }
    
  //Device information
  wifi_station_set_hostname(settings->name);
    
  //MDNS
  if (settings->enable_mdns)
  {
    /*wifi_set_broadcast_if(STATIONAP_MODE);
    struct mdns_info *info = (struct mdns_info *) os_zalloc(sizeof(struct mdns_info));
    info->host_name = settings->mdns_hostname;
    info->ipAddr = station_ipconfig.ip.addr; //ESP8266 station IP
    info->server_name = "FirmwaRe MDNS";
    info->server_port = 80;
    info->txt_data[0] = “version = now”;
    info->txt_data[1] = “user1 = data1”;
    info->txt_data[2] = “user2 = data2”;
    espconn_mdns_init(info);*/
  }
  
  //NTP
  if (settings->enable_ntp)
  {
    //settings->ntpserver
    //settings->timezone
    //settings->enable_summertime
  }
  
  //Security
  /* settings->password; */

  //Digital outputs
  if (apply_bootstate) {
    #if OUTPUT1>-1
      if (settings->bootstate&1){
        board_setOutput(OUTPUT1, true);
      } else {
        board_setOutput(OUTPUT1, false);
      }
    #endif
    #if OUTPUT2>-1
      if (settings->bootstate&2) {
        board_setOutput(OUTPUT2, true);
      } else {
        board_setOutput(OUTPUT2, false);
      }
    #endif
    #if OUTPUT3>-1
      if (settings->bootstate&4) {
        board_setOutput(OUTPUT3, true);
      } else {
        board_setOutput(OUTPUT3, false);
      }
    #endif
    #if OUTPUT4>-1
      if (settings->bootstate&8) {
        board_setOutput(OUTPUT4, true);
      } else {
        board_setOutput(OUTPUT4, false);
      }
    #endif
    #if OUTPUT5>-1
      if (settings->bootstate&16) {
        board_setOutput(OUTPUT5, true);
      } else {
        board_setOutput(OUTPUT5, false);
      }
    #endif
    #if OUTPUT6>-1
      if (settings->bootstate&32) {
        board_setOutput(OUTPUT6, true);
      } else {
        board_setOutput(OUTPUT6, false);
      }
    #endif
    #if OUTPUT7>-1
      if (settings->bootstate&64) {
        board_setOutput(OUTPUT7, true);
      } else {
        board_setOutput(OUTPUT7, false);
      }
    #endif
    #if OUTPUT8>-1
      if (settings->bootstate&128) {
        board_setOutput(OUTPUT8, true);
      } else {
        board_setOutput(OUTPUT8, false);
      }
    #endif
    #ifdef PWM_ENABLE
      setPWM(settings->bootstate_R, settings->bootstate_G, settings->bootstate_B);
    #endif
  }

  //ESPLight
  //settings->ledstrip_type;
  //settings->ledstrip_length;
  
  //PKA
  /* settings->pka_wb settings->pka_wb_time */
}
