#include <esp8266.h>

wifiSettings_t wifisettings;

os_timer_t connTestTimer;
os_timer_t wifiApplyTimer;
bool connectionTest;
bool connectionTestEnded;
bool connectionResult;

/* Timer callbacks */
static void connTestTimerCb(void *arg)
{
  if (connectionTest) {
    //Timeout!
    os_printf("connTestTimerCb: timeout, connecting in client mode failed.\n\r");
    connectionTest = false;
    connectionTestEnded = true;
    connectionResult = false;
    wifiApply( &wifisettings );
  } else {
    os_printf("Error: connTestTimerCb called while conntest is disabled.\n\r");
  }
}

static void wifiApplyTimerCb(void *arg)
{
  os_printf("wifiApplyTimerCb\n\r");
  wifiApply( &wifisettings );
}

/* Init: run at boot */

void ICACHE_FLASH_ATTR wifiInit( void ) //Run once at boot
{
  connectionTest = false;
  connectionTestEnded = false;
  connectionResult = false;
  if (wifiSettingsReadFromFlash(&wifisettings)) {
    os_printf("Loaded WiFi configuration from flash!\n\r");
  } else {
    os_printf("Could not load WiFi configuration. Loading factory settings.");
    wifiSettingsRestoreDefault(&wifisettings);
  }
  wifiApply(&wifisettings);

  wifi_set_event_handler_cb(wifiHandleEventCb);

  os_memset(&connTestTimer,0,sizeof(os_timer_t));
  os_timer_disarm(&connTestTimer);
  os_timer_setfn(&connTestTimer, (os_timer_func_t *)connTestTimerCb, NULL);

  os_memset(&wifiApplyTimer,0,sizeof(os_timer_t));
  os_timer_disarm(&wifiApplyTimer);
  os_timer_setfn(&wifiApplyTimer, (os_timer_func_t *)wifiApplyTimerCb, NULL);
}

/* Settings: storing, restoring and defaults */

wifiSettings_t* wifiSettingsGetPointer( void )
{
  return &wifisettings;
}

bool ICACHE_FLASH_ATTR wifiSettingsReadFromFlash( wifiSettings_t *settings )
{
  spi_flash_read(WIFI_SETTINGS_SECTOR*SPI_FLASH_SEC_SIZE, (uint32 *) settings,sizeof(wifiSettings_t));
  if (settings->magic==0x42) {
    if (settings->version==WIFI_SETTINGS_VERSION) {
      return true;
    } else {
      os_printf("Unknown or corrupted wifi settings found (Version '%d').\n\r", settings->version);
    }
  } else {
    os_printf("Wifi has not been configured, loading default settings.\n\r");
  }
  return false;
}

void wifiSettingsRestoreDefault( wifiSettings_t *settings )
{
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
  spi_flash_erase_sector(WIFI_SETTINGS_SECTOR);
  spi_flash_write(WIFI_SETTINGS_SECTOR*SPI_FLASH_SEC_SIZE, (uint32 *) settings,sizeof(wifiSettings_t));
  os_printf("Settings saved to flash!\n\r");
}

/* Actual wifi control functions */

void wifiSetStation( wifiSettings_t *settings, bool disable )
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
    os_printf("Note: CLIENT DISABLED!\n\r");
    os_memcpy( &stationConf.ssid, "", 32 );
    os_memcpy( &stationConf.password, "", 64 );
  } else {
    board_statusLed(2);
    os_printf("Note: CLIENT SETTINGS APPLIED (%s, %s)!\n\r", settings->ssid, settings->password);
    os_memcpy( &stationConf.ssid, settings->ssid, 32 );
    os_memcpy( &stationConf.password, settings->password, 64 );
    if (settings->enable_dhcp) {
      wifi_station_dhcpc_start(); //Using DHCP: start DHCP client
      userSettings_t* settings = settings_get_pointer();
      bool sethostname = wifi_station_set_hostname(settings->hostname);
      if (!sethostname) {
        os_printf("Setting hostname to '%s' failed!\n\r", settings->hostname);
        strcpy(settings->hostname, DEFAULT_HOSTNAME);
        wifi_station_set_hostname(settings->hostname);
      }
      os_printf("Note: Using DHCP for station IP (Hostname: %s)\n\r", wifi_station_get_hostname());
    } else {
      os_printf("Note: Using static IP for station\n\r");
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
    }

  }
  wifi_station_set_config_current( &stationConf ); //Apply new client config
  wifi_station_connect();
}

void wifiSetAp( wifiSettings_t *settings, bool disable )
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

void wifiApply( wifiSettings_t *settings )
{
  //wifi_set_opmode(NULL_MODE);
  os_timer_disarm(&connTestTimer);
  if (settings->setupEnabled) {
    //os_printf("Note: wifi in setup mode!\n\r");
    wifi_set_opmode_current( STATIONAP_MODE );
    wifiSetAp( settings, false); //Start setup AP
    if (connectionTest) {
      connectionTestEnded = false;
      connectionResult = false;
      os_printf("Note: Connection test mode!\n\r");
      wifiSetStation( settings, false ); //Enable client
      os_timer_arm(&connTestTimer, 10000, false); //Enable timer for connTest timeout
    } else {
      wifiSetStation( settings, true ); //Disable client
    }
  } else {
    //os_printf("Note: wifi in normal mode.\n\r");
    wifi_set_opmode_current( STATION_MODE );
    wifiSetAp( settings, true); //Disable setup AP
    wifiSetStation( settings, false ); //Enable client
    //Print settings:
    os_printf("Network SSID: %s\n\r", settings->ssid);
    os_printf("Network password: %s\n\r", settings->password);
    if (settings->enable_dhcp) {
      os_printf("IP configuration is done using DHCP.\n\r");
    } else {
      os_printf("IP configuration is done manually.\n\r");
      os_printf("IP: %d.%d.%d.%d\n\r", settings->static_ip_1, settings->static_ip_2, settings->static_ip_3, settings->static_ip_4);
      os_printf("Gateway: %d.%d.%d.%d\n\r", settings->static_gateway_1, settings->static_gateway_2, settings->static_gateway_3, settings->static_gateway_4);
      os_printf("Netmask: %d.%d.%d.%d\n\r", settings->static_netmask_1, settings->static_netmask_2, settings->static_netmask_3, settings->static_netmask_4);
      mdnsStart();
    }
  }

  //Change this...
  board_statusLed2(settings->setupEnabled);
}

void wifiSetup( void )
{
  if (!wifisettings.setupEnabled) {
    //os_printf("wifiSetup: Enabled setup mode!\n\r");
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

void wifiReconnectAfterFail ( void )
{
  if (wifisettings.magic==0x42) {
    if (wifisettings.setupEnabled == false) {
      if (connectionTest == false) {
        os_printf("reconnectAfterFail: reconnecting station mode...\n\r");
        wifiSetStation( &wifisettings, false ); //Try again
      }
    }// else { os_printf("reconnectAfterFail: ignored, setup active!\n\r"); }
  }// else { os_printf("reconnectAfterFail: ignored, settings not valid!\n\r"); }
}
void wifiHandleEventCb ( System_Event_t *evt )
{
  switch (evt->event) {
    case EVENT_STAMODE_CONNECTED:
      os_printf("WiFi Event: Connected to %s on channel %d.\n\r",
      evt->event_info.connected.ssid,
      evt->event_info.connected.channel);
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
      break;
    case EVENT_STAMODE_DISCONNECTED:
      os_printf("WiFi Event: Disconnected from %s, reason %d\n\r",
      evt->event_info.disconnected.ssid,
      evt->event_info.disconnected.reason);
      wifiReconnectAfterFail();
      break;
    /*case EVENT_STAMODE_AUTHMODE_CHANGE:
      os_printf("WiFi Event: Authmode has changed from %d to %d.\n\r",
      evt->event_info.auth_change.old_mode,
      evt->event_info.auth_change.new_mode);
      break;*/
    case EVENT_STAMODE_GOT_IP:
      os_printf("WiFi Event: Got ip address " IPSTR " with subnetmask " IPSTR " from gateway " IPSTR "\n\r",
      IP2STR(&evt->event_info.got_ip.ip),
      IP2STR(&evt->event_info.got_ip.mask),
      IP2STR(&evt->event_info.got_ip.gw));
      board_statusLed(1);
      mdnsStart();
      break;
    /*case EVENT_SOFTAPMODE_STACONNECTED:
      os_printf("WiFi Event: A client connected to the AP (" MACSTR ", AID = %d).\n\r",
      MAC2STR(evt->event_info.sta_connected.mac),
      evt->event_info.sta_connected.aid);
      break;
    case EVENT_SOFTAPMODE_STADISCONNECTED:
      os_printf("WiFi Event: A client disconnected from the AP (" MACSTR ", AID = %d).\n\r",
      MAC2STR(evt->event_info.sta_disconnected.mac),
      evt->event_info.sta_disconnected.aid);
      break;*/
    case EVENT_STAMODE_DHCP_TIMEOUT:
      os_printf("Wifi Event: DHCP client timeout\n\r");
      wifiReconnectAfterFail();
      break;
    /* case EVENT_SOFTAPMODE_PROBEREQRECVED:
      os_printf("Wifi Event: PROBEREQRECVED\n\r");
      break;
    case EVENT_MAX:
      os_printf("Wifi Event: MAX\n\r");
      break; */
    default:
      //os_printf("WiFi Event: Unknown event (%d)\n", evt->event);
      break; 
  }
}

bool wifiGetConnectionTest ( void )
{
  return connectionTest;
}
bool wifiGetConnectionTestEnded ( void )
{
  return connectionTestEnded;
}
bool wifiGetConnectionResult ( void )
{
  return connectionResult;
}
bool wifiGetSetupActive( void )
{
  return wifisettings.setupEnabled;
}
void mdnsStart( void )
{
  struct ip_info ipconfig;
  struct mdns_info *info = (struct mdns_info *) os_zalloc(sizeof(struct mdns_info));
  userSettings_t* settings = settings_get_pointer();
  
  espconn_mdns_close(); //Close old server if exists
  
  if (settings->enable_mdns)
  {
    os_printf("Starting MDNS!\n\r");
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

int ICACHE_FLASH_ATTR send_udp( uint8_t* server, int port, char* data, uint16 length )
{ //sends udp packets
  int result = -9999;
  struct espconn *conn = (struct espconn *) os_zalloc(sizeof(struct espconn));
  if (conn!=NULL) {
    conn->type = ESPCONN_UDP;
    conn->state = ESPCONN_NONE;
    conn->proto.udp = (esp_udp*)os_zalloc(sizeof(esp_udp));
    conn->proto.udp->local_port = espconn_port();
    conn->proto.udp->remote_port = port;
    os_memcpy(conn->proto.udp->remote_ip, server, 4);

    result = espconn_create(conn);
    if (result==0) {
      result = espconn_sendto(conn, (uint8*) data, length);
	  }
	}
	if (conn) {
	  espconn_delete(conn);
		os_free(conn->proto.udp);
		os_free(conn);
		conn = 0;
	}
  return result; //Success
}

/*
  if (wifi_station_get_connect_status()==STATION_IDLE) {
    os_printf("Wifi was idle, connecting...\n\r");
    wifi_station_connect();
    board_statusLed(0);
  }
*/
