#include <esp8266.h>

wifiSettings_t wifisettings;

os_timer_t connTestTimer;
os_timer_t wifiApplyTimer;
bool connectionTest;
bool connectionTestEnded;
bool connectionResult;
bool connectionHasIp;

/* Timer callbacks */
static void ICACHE_FLASH_ATTR connTestTimerCb(void *arg)
{
  if (connectionTest) {
    connectionTest = false;
    connectionTestEnded = true;
    connectionResult = false;
    wifiApply(&wifisettings);
  }
}

static void ICACHE_FLASH_ATTR wifiApplyTimerCb(void *arg)
{
  wifiApply( &wifisettings );
}

void ICACHE_FLASH_ATTR wifiInit( void )
{
  connectionTest = false;
  connectionTestEnded = false;
  connectionResult = false;
  connectionHasIp = false;

  if (!wifiSettingsReadFromFlash(&wifisettings)) {
    os_printf("Wifi settings corrupt, using default values.\r\n");
    wifiSettingsRestoreDefault(&wifisettings);
    wifiSettingsWriteToFlash(&wifisettings);
  }

  wifi_set_event_handler_cb(wifiHandleEventCb);

  os_memset(&connTestTimer,0,sizeof(os_timer_t));
  os_timer_disarm(&connTestTimer);
  os_timer_setfn(&connTestTimer, (os_timer_func_t *)connTestTimerCb, NULL);

  os_memset(&wifiApplyTimer,0,sizeof(os_timer_t));
  os_timer_disarm(&wifiApplyTimer);
  os_timer_setfn(&wifiApplyTimer, (os_timer_func_t *)wifiApplyTimerCb, NULL);

  wifiApply(&wifisettings);
}

wifiSettings_t* ICACHE_FLASH_ATTR wifiSettingsGetPointer( void )
{
  return &wifisettings;
}

bool ICACHE_FLASH_ATTR wifiSettingsReadFromFlash( wifiSettings_t *settings )
{
  if (settings==NULL) return false;
  spi_flash_read(WIFI_SETTINGS_SECTOR*SPI_FLASH_SEC_SIZE, (uint32 *) settings,sizeof(wifiSettings_t));
  if ((settings->magic==0x42) && (settings->version==WIFI_SETTINGS_VERSION)) {
    return true;
  }
  return false;
}

void ICACHE_FLASH_ATTR wifiSettingsRestoreDefault( wifiSettings_t *settings )
{
  if (settings==NULL) return;
  settings->magic = 0x42;
  settings->version = WIFI_SETTINGS_VERSION;
  settings->checksum = 0x00;
  settings->setupEnabled = true;
  strcpy(settings->ssid, "");
  strcpy(settings->password, "");
  settings->enable_dhcp = true;
  settings->static_ip_1 = 192;
  settings->static_ip_2 = 168;
  settings->static_ip_3 = 1;
  settings->static_ip_4 = 100;
  settings->static_gateway_1 = 192;
  settings->static_gateway_2 = 168;
  settings->static_gateway_3 = 1;
  settings->static_gateway_4 = 1;
  settings->static_netmask_1 = 255;
  settings->static_netmask_2 = 255;
  settings->static_netmask_3 = 255;
  settings->static_netmask_4 = 0;
  settings->static_dns_1 = 8;
  settings->static_dns_2 = 8;
  settings->static_dns_3 = 8;
  settings->static_dns_4 = 8;
  settings->static_altdns_1 = 8;
  settings->static_altdns_2 = 8;
  settings->static_altdns_3 = 4;
  settings->static_altdns_4 = 4;
}

void ICACHE_FLASH_ATTR wifiSettingsWriteToFlash( wifiSettings_t *settings )
{
  if (settings==NULL) return;
  spi_flash_erase_sector(WIFI_SETTINGS_SECTOR);
  spi_flash_write(WIFI_SETTINGS_SECTOR*SPI_FLASH_SEC_SIZE, (uint32 *) settings,sizeof(wifiSettings_t));
}

void ICACHE_FLASH_ATTR wifiSetStation( wifiSettings_t *settings, bool disable )
{
  board_statusLed(0);
  wifi_station_disconnect();
  wifi_station_dhcpc_stop(); //Stop DHCP client
  struct station_config stationConf;
  /* station_config
     uint8 ssid[32]
     uint8 password[64]
     uint8 bssid_set
     uint8 bssid[6] */
  stationConf.bssid_set = 0; //Do not set a custom station mac address
  if (disable) {
    os_memcpy( &stationConf.ssid, "", 32 );
    os_memcpy( &stationConf.password, "", 64 );
  } else {
    board_statusLed(2);
    //os_printf("Note: CLIENT SETTINGS APPLIED (%s, %s)!\r\n", settings->ssid, settings->password);
    os_memcpy( &stationConf.ssid, settings->ssid, 32 );
    os_memcpy( &stationConf.password, settings->password, 64 );
    if (settings->enable_dhcp) {
      wifi_station_dhcpc_start(); //Using DHCP: start DHCP client
      userSettings_t* settings = settings_get_pointer();
      bool sethostname = wifi_station_set_hostname(settings->hostname);
      if (!sethostname) {
        //os_printf("Setting hostname to '%s' failed!\r\n", settings->hostname);
        strcpy(settings->hostname, DEFAULT_HOSTNAME);
        wifi_station_set_hostname(settings->hostname);
      }
      //os_printf("Note: Using DHCP for station IP (Hostname: %s)\r\n", wifi_station_get_hostname());
      connectionHasIp = false;
    } else {
      //os_printf("Note: Using static IP for station\r\n");
      struct ip_info dhcpc_ip_info; //Using static IP, set static IP
      IP4_ADDR(&dhcpc_ip_info.ip, settings->static_ip_1, settings->static_ip_2, settings->static_ip_3, settings->static_ip_4);
      IP4_ADDR(&dhcpc_ip_info.gw, settings->static_gateway_1, settings->static_gateway_2, settings->static_gateway_3, settings->static_gateway_4);
      IP4_ADDR(&dhcpc_ip_info.netmask, settings->static_netmask_1, settings->static_netmask_2, settings->static_netmask_3, settings->static_netmask_4);
      wifi_set_ip_info(STATION_IF, &dhcpc_ip_info);
      struct ip_addr dns0;
      IP4_ADDR(&dns0, settings->static_dns_1, settings->static_dns_2, settings->static_dns_3, settings->static_dns_4);
      struct ip_addr dns1;
      IP4_ADDR(&dns1, settings->static_altdns_1, settings->static_altdns_2, settings->static_altdns_3, settings->static_altdns_4);
      espconn_dns_setserver(0, &dns0);
      espconn_dns_setserver(1, &dns1);
      connectionHasIp = true;
    }
  }
  wifi_station_set_config_current( &stationConf ); //Apply new client config
  wifi_station_connect();
}

void ICACHE_FLASH_ATTR wifiSetAp( wifiSettings_t *settings, bool disable )
{
  struct softap_config softapConf;
  /* softap_config:
      uint8 ssid[32], uint8 password[64]
      uint8 ssid_len
      uint8 channel (support 1 ~ 13)
      uint8 authmode (no AUTH_WEP)
      uint8 ssid_hidden
      uint8 max_connection // default 4, max 4
      uint16 beacon_interval; // 100 ~ 60000 ms, default 100
    authmode:
      AUTH_OPEN = 0
      AUTH_WEP
      AUTH_WPA_PSK
      AUTH_WPA2_PSK
      AUTH_WPA_WPA2_PSK */
  char* apssid[32];
  char sta_mac[6] = {0};
  if (disable) {
    wifi_softap_dhcps_stop(); //Stop DHCP server
  } else {
    wifi_get_macaddr(STATION_IF, sta_mac);
    os_sprintf(apssid, "%s_%x%x%x", SETUP_AP_NAME, sta_mac[3], sta_mac[4], sta_mac[5]);
    os_memcpy( &softapConf.ssid, apssid, 32 );
    os_memcpy( &softapConf.password, "", 64 );
    softapConf.ssid_len=os_strlen( &apssid );
    softapConf.channel = 1;
    softapConf.authmode= AUTH_OPEN;
    softapConf.ssid_hidden = false;
    softapConf.max_connection= 4;
    softapConf.beacon_interval = 100;
    wifi_softap_set_config_current(&softapConf);
    wifi_softap_dhcps_start();
  }
}

void ICACHE_FLASH_ATTR wifiApply( wifiSettings_t *settings )
{
  //wifi_set_opmode(NULL_MODE);
  os_timer_disarm(&connTestTimer);
  if (settings->setupEnabled) {
    //os_printf("Setup mode!\r\n");
    wifi_set_opmode_current( STATIONAP_MODE );
    wifiSetAp( settings, false); //Start setup AP
    if (connectionTest) {
      connectionTestEnded = false;
      connectionResult = false;
      //os_printf("Note: Connection test mode!\r\n");
      wifiSetStation( settings, false ); //Enable client
      os_timer_arm(&connTestTimer, 10000, false); //Enable timer for connTest timeout
    } else {
      wifiSetStation( settings, true ); //Disable client
    }
  } else {
    wifi_set_opmode_current( STATION_MODE );
    wifiSetAp( settings, true); //Disable setup AP
    wifiSetStation( settings, false ); //Enable client
    mdnsStart();
  }
  if (settings->setupEnabled) {
    board_statusLed2(1);
  } else {
    board_statusLed2(0);
  }
}

void ICACHE_FLASH_ATTR wifiSetup( void )
{
  if (!wifisettings.setupEnabled) {
    wifisettings.setupEnabled = true;
    connectionTest = false;
    connectionTestEnded = false;
    connectionResult = false;
    wifiApply( &wifisettings );
  }
}

void ICACHE_FLASH_ATTR wifiSetupCommit( wifiSettings_t *settings )
{
  if ((settings->setupEnabled)&&(!connectionTest)) {
    connectionTest = true;
    connectionTestEnded = false;
    connectionResult = false;
    wifiApply( settings );
  }
}

void ICACHE_FLASH_ATTR wifiReconnectAfterFail ( void )
{
  if (wifisettings.magic==0x42) {
    if (wifisettings.setupEnabled == false) {
      if (connectionTest == false) {
        os_printf("Reconnecting...\r\n");
        wifiSetStation( &wifisettings, false ); //Try again
      } else {
        //os_printf("Connection test failed.\r\n");
        connectionTest = false;
        connectionTestEnded = true;
        connectionResult = false;
        wifiApply( &wifisettings );
      }
    }
  }
}
void ICACHE_FLASH_ATTR wifiHandleEventCb ( System_Event_t *evt )
{
  if (evt->event==EVENT_STAMODE_CONNECTED) {
    if (connectionTest) {
      connectionTest = false;
      connectionTestEnded = true;
      connectionResult = true;
      os_timer_disarm(&connTestTimer); //Disable timeout timer
      wifisettings.setupEnabled = false;
      wifiSettingsWriteToFlash( &wifisettings );
      os_timer_arm(&wifiApplyTimer, 15000, false);
      board_statusLed2(3);
    }
    board_statusLed(3);
  } else if (evt->event==EVENT_STAMODE_DISCONNECTED) {
    wifiReconnectAfterFail();
  } else if (evt->event==EVENT_STAMODE_GOT_IP) {
    /*os_printf("DHCP:\r\n - IP address: " IPSTR "\r\n - Subnetmask: " IPSTR "\r\n - Gateway: " IPSTR "\r\n",
    IP2STR(&evt->event_info.got_ip.ip),
    IP2STR(&evt->event_info.got_ip.mask),
    IP2STR(&evt->event_info.got_ip.gw));*/
    board_statusLed(1);
    connectionHasIp = true;
    mdnsStart();
  } else if (evt->event==EVENT_STAMODE_DHCP_TIMEOUT) {
     wifiReconnectAfterFail();
  }
}

bool ICACHE_FLASH_ATTR wifiGetConnectionTest ( void )
{
  return connectionTest;
}
bool ICACHE_FLASH_ATTR wifiGetConnectionTestEnded ( void )
{
  return connectionTestEnded;
}
bool ICACHE_FLASH_ATTR wifiGetConnectionResult ( void )
{
  return connectionResult;
}
bool ICACHE_FLASH_ATTR wifiGetSetupActive( void )
{
  return wifisettings.setupEnabled;
}
bool ICACHE_FLASH_ATTR wifiGetConnectionHasIp( void )
{
  return connectionHasIp;
}

void ICACHE_FLASH_ATTR mdnsStart( void )
{
  struct ip_info ipconfig;
  struct mdns_info *info = (struct mdns_info *) os_zalloc(sizeof(struct mdns_info));
  userSettings_t* settings = settings_get_pointer();
  
  espconn_mdns_close(); //Close old server if exists
  
  if (settings->enable_mdns)
  {
    //os_printf("Starting MDNS!\r\n");
    wifi_set_broadcast_if(STATION_MODE);
    wifi_get_ip_info(STATION_IF, &ipconfig);
    
    info->host_name = settings->hostname;
    info->ipAddr = ipconfig.ip.addr;
    info->server_name = "rnplus-iot";
    info->server_port = 80;
    uint8_t i = 0;
    for (i = 0; i<5; i++) {
      info->txt_data[i] = (char*)os_malloc(64);
    }    
    os_sprintf(info->txt_data[0], "device = %s", DEVICE_NAME);
    os_sprintf(info->txt_data[1], "version = %d", FIRMWARE_VERSION);
    os_sprintf(info->txt_data[2], "type = %d", DEVICE_TYPE);
    os_sprintf(info->txt_data[3], "name = %s", settings->name);
    //os_printf("data0: %s\n - data1: %s\n - data2: %s\n - data3: %s\n", info->txt_data[0], info->txt_data[1], info->txt_data[2], info->txt_data[3]);
    espconn_mdns_init(info);
  }
}
