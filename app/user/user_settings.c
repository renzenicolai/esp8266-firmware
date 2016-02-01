/*
 * File: user_settings.c
 * Description: User settings storage
 * License: GPLv2
 * Author: Renze Nicolai
 * Date: 16-01-2016
 * Copyright: RN+ 2016
 */

#include "ets_sys.h"
#include "user_interface.h"
#include "flash.h"
#include "user_settings.h"

userSettings_t settings;

userSettings_t* ICACHE_FLASH_ATTR settings_get_pointer( void )
{
  return &settings;
}

uint32_t ICACHE_FLASH_ATTR settings_calculate_checksum( userSettings_t *s )
{
  char *data = (char*) s;
  size_t amount = sizeof(userSettings_t) - sizeof(uint32_t);
  //os_printf("Calculating checksum of settings at %x with length %d...\r\n", (uint32_t) &data, amount);
  uint32_t chksum = 0;
  while (amount > 1) {
    chksum += *data++;
    amount -= 1;
  }
  os_printf("[CHKSUM] %d\r\n", chksum);
  return chksum;
}

void ICACHE_FLASH_ATTR settings_load_default( userSettings_t *settings )
{
  if (settings==NULL) return;
  //Description
  settings->magic = 0x42;
  settings->version = SETTINGS_VERSION;
  settings->checksum = 0x00;
  //Device
  strcpy(settings->name, DEVICE_TYPE_NAME);
  //Network
  strcpy(settings->hostname, DEFAULT_HOSTNAME);
  settings->enable_mdns = false;
  //Time
  settings->enable_ntp = false;
  strcpy(settings->ntpserver, NTP_DEFAULT_SERVER);
  settings->timezone = 13; //UTC+1 (UTC is 12)
  settings->enable_summertime = true; //True for Netherlands
  //Security
  settings->authEnable = false;
  strcpy(settings->authUser, "");
  strcpy(settings->authPassword, "");
  //Digital outputs
  settings->bootstate = 0;
  #ifdef ENABLE_PKAWB
    settings->pka_wb = 0; //Off
    settings->pka_wb_time = 30; //Seconds
  #endif
  #ifdef PWM
  settings->pwmBootstateR = 0x00;
  settings->pwmBootstateG = 0x00;
  settings->pwmBootstateB = 0x00;
  #endif
  #ifdef WS2801
    settings->ws2801Enabled = false;
    settings->ws2801Length = 0;
    settings->ws2801BootstateR = 0x00;
    settings->ws2801BootstateG = 0x00;
    settings->ws2801BootstateB = 0x00;
  #endif
  #if defined(WS2812) || defined(WS2812GPIO)
    settings->ws2812Enabled = false;
    settings->ws2812Length = 0;
    settings->ws2812BootstateR = 0x00; 
    settings->ws2812BootstateG = 0x00;
    settings->ws2812BootstateB = 0x00;
  #endif
  #ifdef ESPLIGHT
    settings->esplightEnabled = true;
  #endif
  //sensors
  uint8_t i = 0;
  for (i = 0; i<8; i++) {
    settings->actSensor[i] = 0;
    settings->sensorTimeout[i] = 0;
    if (i<4) {
      os_sprintf(settings->sensorActionUrl[i], "http://<server>");
    }
  }
  strcpy(settings->sensorUrl, "http://api.sensorcloud.nl");
  settings->sensorUrlType = 0;
  settings->sensorUrlInterval = 0;
  settings->sensorUrlIntervalEnable = false;
}

bool ICACHE_FLASH_ATTR settings_update( userSettings_t *settings )
{
  return false;
}

bool ICACHE_FLASH_ATTR settings_load( userSettings_t *settings )
{
  if (settings==NULL) return false;
  spi_flash_read(SETTINGS_SECTOR*SPI_FLASH_SEC_SIZE, (uint32 *) settings,sizeof(userSettings_t));
  if (settings->magic==0x42) {
    if (settings->version==SETTINGS_VERSION) {
      if (settings->checksum==settings_calculate_checksum(settings)) {
        os_printf("Settings loaded from flash.\r\n");
        return true;
      } else {
        os_printf("Settings not loaded: invalid checksum!\r\n");
      }
    } else {
      if (settings->version==SETTINGS_VERSION-1) {
        return settings_update( settings );
      } else {
        os_printf("Settings not loaded: invalid version!\r\n");
      }
    }
  } else { os_printf("Settings not loaded: invalid magic!\r\n"); }
  return false;
}

void ICACHE_FLASH_ATTR settings_store( userSettings_t *settings )
{
  if (settings==NULL) return;
  settings->checksum = settings_calculate_checksum( settings );
  spi_flash_erase_sector(SETTINGS_SECTOR);
  spi_flash_write(SETTINGS_SECTOR*SPI_FLASH_SEC_SIZE, (uint32 *) settings,sizeof(userSettings_t));
}
