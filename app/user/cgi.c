#include <esp8266.h>
#include <util/ftoa.h>
#include "driver/ws2801.h"
#include "driver/ws2812.h"
#include "driver/ws2812gpio.h"
#include "driver/pwm.h"

//#define ESPFS_POS  0x1FC000
//#define ESPFS_SIZE 0x200000
//#define OTA_FLASH_SIZE_K 0x8000

/*#ifdef ESPFS_POS
CgiUploadFlashDef uploadParams={
	.type=CGIFLASH_TYPE_ESPFS,
	.fw1Pos=ESPFS_POS,
	.fw2Pos=0,
	.fwSize=ESPFS_SIZE,
};
#define INCLUDE_FLASH_FNS
#endif
#ifdef OTA_FLASH_SIZE_K
CgiUploadFlashDef uploadParams={
	.type=CGIFLASH_TYPE_FW,
	.fw1Pos=0x1000,
	.fw2Pos=((OTA_FLASH_SIZE_K*1024)/2)+0x1000,
	.fwSize=((OTA_FLASH_SIZE_K*1024)/2)-0x1000,
};
#define INCLUDE_FLASH_FNS
#endif*/

HttpdBuiltInUrl builtInUrls[] = {
  {"*", cgiRedirectApClientToHostname, "wifiswitch"},
  {"/", cgiRedirect, "/home"},
  {"/*", authBasicRn, NULL},
  {"/home", cgiEspFsTemplate, tplHomepage},

  {"/settings", cgiEspFsTemplate, tplSettings},
  {"/settings/store", cgiSettingsStore, NULL},

  {"/wifi", cgiEspFsTemplate, tplWifiSettings},
  {"/wifi/store", cgiWifiSettingsStore, NULL},
  {"/wifi/scan", cgiWiFiScan, NULL},
  {"/wifi/status", cgiWiFiStatus, NULL},

  {"/output", cgiSetOutput, NULL},
  {"/output/state", cgiGetOutput, NULL},
  {"/input", cgiGetInput, NULL},

  {"/sensor", cgiSensor, NULL},

  {"/WS2812set", cgiSetWS2812, NULL},

  #ifdef ENABLE_PKAWB
  {"/wb", cgiWb, NULL},
  #endif
  #ifdef PWM
  {"/pwmset", cgiSetPwm, NULL},
  #endif

  /*
  {"/flash/download", cgiReadFlash, NULL},
  {"/flash/next", cgiGetFirmwareNext, &uploadParams},
  {"/flash/upload", cgiUploadFirmware, &uploadParams},
  {"/flash/reboot", cgiRebootFirmware, NULL},*/
  //{"/flashraw.cgi", cgiUploadRaw, NULL},
  //{"/flashapp.cgi", cgiUpgradeRaw, NULL},
  //{"/getappver.cgi", cgiGetAppVer, NULL},
  //{"/websocket/ws.cgi", cgiWebsocket, myWebsocketConnect},
  {"/firmware/upload", cgiUploadTest, NULL},
  {"*", cgiEspFsHook, NULL}, //Catch-all cgi function for the filesystem
  {NULL, NULL, NULL}
};

HttpdBuiltInUrl* ICACHE_FLASH_ATTR cgi_get_builtInUrls( void )
{
  return builtInUrls;
}

//WiFi access point data
typedef struct {
  char ssid[32];
  char rssi;
  char enc;
} ApData;

//Scan result
typedef struct {
  char scanInProgress; //if 1, don't access the underlying stuff from the webpage.
  ApData **apData;
  int noAps;
} ScanResultData;

//Static scan status storage.
static ScanResultData cgiWifiAps;

#define CONNTRY_IDLE 0
#define CONNTRY_WORKING 1
#define CONNTRY_SUCCESS 2
#define CONNTRY_FAIL 3

//Callback the code calls when a wlan ap scan is done. Basically stores the result in
//the cgiWifiAps struct.
void ICACHE_FLASH_ATTR wifiScanDoneCb(void *arg, STATUS status)
{
  int n;
  struct bss_info *bss_link = (struct bss_info *)arg;
  //os_printf("wifiScanDoneCb %d\n", status);
  if (status!=OK) {
    cgiWifiAps.scanInProgress=0;
    return;
  }
  //Clear prev ap data if needed.
  if (cgiWifiAps.apData!=NULL) {
  for (n=0; n<cgiWifiAps.noAps; n++) os_free(cgiWifiAps.apData[n]);
    os_free(cgiWifiAps.apData);
  }

  //Count amount of access points found.
  n=0;
  while (bss_link != NULL) {
    bss_link = bss_link->next.stqe_next;
    n++;
  }

  //Allocate memory for access point data
  cgiWifiAps.apData=(ApData **)os_malloc(sizeof(ApData *)*n);
  cgiWifiAps.noAps=n;
  //os_printf("Scan done: found %d APs\n", n);
  //Copy access point data to the static struct
  n=0;
  bss_link = (struct bss_info *)arg;
  while (bss_link != NULL) {
    if (n>=cgiWifiAps.noAps) {
      //This means the bss_link changed under our nose. Shouldn't happen!
      //Break because otherwise we will write in unallocated memory.
      //os_printf("Huh? I have more than the allocated %d aps!\n", cgiWifiAps.noAps);
      break;
    }
    //Save the ap data.
    cgiWifiAps.apData[n]=(ApData *)os_malloc(sizeof(ApData));
    cgiWifiAps.apData[n]->rssi=bss_link->rssi;
    cgiWifiAps.apData[n]->enc=bss_link->authmode;
    strncpy(cgiWifiAps.apData[n]->ssid, (char*)bss_link->ssid, 32);

    bss_link = bss_link->next.stqe_next;
    n++;
  }
  //We're done.
  cgiWifiAps.scanInProgress=0;
}

//Routine to start a WiFi access point scan.
static void ICACHE_FLASH_ATTR wifiStartScan()
{
  if (cgiWifiAps.scanInProgress) return;
  cgiWifiAps.scanInProgress=1;
  wifi_station_scan(NULL, wifiScanDoneCb);
}

//------------------------------------------

int ICACHE_FLASH_ATTR cgiWiFiScan(HttpdConnData *connData)
{
  int pos=(int)connData->cgiData;
  int len;
  char buff[1024];

  if (!cgiWifiAps.scanInProgress && pos!=0) {
    //Fill in json code for an access point
    if (pos-1<cgiWifiAps.noAps) {
      len=os_sprintf(buff, "{\"essid\": \"%s\", \"rssi\": \"%d\", \"enc\": \"%d\"}%s\n",
          cgiWifiAps.apData[pos-1]->ssid, cgiWifiAps.apData[pos-1]->rssi,
          cgiWifiAps.apData[pos-1]->enc, (pos-1==cgiWifiAps.noAps-1)?"":",");
      httpdSend(connData, buff, len);
    }
    pos++;
    if ((pos-1)>=cgiWifiAps.noAps) {
      len=os_sprintf(buff, "]\n}\n}\n");
      httpdSend(connData, buff, len);
      //Also start a new scan.
      wifiStartScan();
      return HTTPD_CGI_DONE;
    } else {
      connData->cgiData=(void*)pos;
      return HTTPD_CGI_MORE;
    }
  }

  httpdStartResponse(connData, 200);
  httpdHeader(connData, "Content-Type", "text/json");
  httpdEndHeaders(connData);

  if (cgiWifiAps.scanInProgress==1) {
    //We're still scanning. Tell Javascript code that.
    len=os_sprintf(buff, "{\n \"result\": { \n\"inProgress\": \"1\"\n }\n}\n");
    httpdSend(connData, buff, len);
    return HTTPD_CGI_DONE;
  } else {
    //We have a scan result. Pass it on.
    len=os_sprintf(buff, "{\n \"result\": { \n\"inProgress\": \"0\", \n\"APs\": [\n");
    httpdSend(connData, buff, len);
    if (cgiWifiAps.apData==NULL) cgiWifiAps.noAps=0;
    connData->cgiData=(void *)1;
    return HTTPD_CGI_MORE;
  }
}

char temperatureString[10] = "Unknown";
char pressureString[10] = "Unknown";

void ICACHE_FLASH_ATTR updateSensorStrings ( void )
{
  float temperature = board_sensorGetTemperature()/10.0;
  os_memcpy(temperatureString, ftoa(temperature, 1), 10);

  float pressure = board_sensorGetAirPressure()/1000.0;
  os_memcpy(pressureString, ftoa(pressure, 3), 10);

  //os_printf("Sensordata: %s*c, %s kPa.\r\n", temperatureString, pressureString);
}

void ICACHE_FLASH_ATTR setLabelString(char* buff, uint8_t item)
{
  #ifdef ENABLE_PKAWB
    userSettings_t* settings = settings_get_pointer();
    if (settings->pka_wb==0) {
      os_sprintf(buff, "Output %d", item);
      return;
    } else if (item==1) {
      os_sprintf(buff, "Window blinds");
      return;
    } else if (item==3) {
      os_sprintf(buff, "Output");
      return;
    }
    os_sprintf(buff, "&nbsp;");
    return;
  #else
    os_sprintf(buff, "Output %d", item);
    return;
  #endif
}

void ICACHE_FLASH_ATTR setInputString(char* buff, uint8_t item, bool c)
{
  bool result = board_getInput(item);

  os_printf("setInputString: %d = %d", item, result);

  if (c) {
    if (result) {
      os_sprintf(buff, "fa-check-square-o");
      os_printf("fa-check-square-o");
    } else {
      os_sprintf(buff, "fa-square-o");
      os_printf("fa-square-o");
    }
  } else {
    if (result) {
      os_sprintf(buff, "<img src='lightbulb_on.png' />");
      os_printf("fa-square-o");
    } else {
      os_sprintf(buff, "<img src='lightbulb_off.png' />");
    }
  }
  os_printf(" -> %s\n", buff);
}

void ICACHE_FLASH_ATTR setSwitchUrl(char* buff, uint8_t item)
{
  bool normalbutton = false;
  uint32_t pin = 0;
  userSettings_t* settings = settings_get_pointer();
  #ifdef ENABLE_PKAWB
  if (settings->pka_wb==0) {
  #endif
    if (item==1) pin = 1;
    if (item==2) pin = 2;
    if (item==3) pin = 3;
    normalbutton = true;
  #ifdef ENABLE_PKAWB
  } else {
    if (item==1) {
      if (board_wbMode()==2) {
        if (board_wbState()) {
          os_sprintf(buff, "/wb?mode=0");
        } else {
          os_sprintf(buff, "/wb?mode=1");
        }
      } else {
        os_sprintf(buff, "/wb?mode=2");
      }
      return;
    }
    if (item==2) {
      os_sprintf(buff, "#");
      return;
    }
    if (item==3) {
      switch(settings->pka_wb) {
        case 4:
        case 6:
         pin = 1;
         normalbutton = true;
         break;
        case 2:
        case 5:
         pin = 2;
         normalbutton = true;
         break;
        case 1:
        case 3:
         pin = 3;
         normalbutton = true;
         break;
      }
    }
  }
  #endif

  if (normalbutton) {
    os_sprintf(buff, "/output?pin=%d&state=%d", item, !board_getOutput2(pin));
    return;
  }
  os_sprintf(buff, "#");
  return;
}

void ICACHE_FLASH_ATTR setSwitchC(char* buff, uint8_t item)
{
  bool normalbutton = false;
  uint32_t pin = 0;
  userSettings_t* settings = settings_get_pointer();
  #ifdef ENABLE_PKAWB
  if (settings->pka_wb==0) {
  #endif
    if (item==1) pin = 1;
    if (item==2) pin = 2;
    if (item==3) pin = 3;
    normalbutton = true;
  #ifdef ENABLE_PKAWB
  } else {
    if (item==1) {
      if (board_wbMode()==2) {
        if (board_wbState()) {
          os_sprintf(buff, "fa-caret-square-o-down");
        } else {
          os_sprintf(buff, "fa-caret-square-o-up");
        }
      } else {
        os_sprintf(buff, "fa-square");
      }
      return;
    }
    if (item==2) {
      os_sprintf(buff, "");
      return;
    }
    if (item==3) {
      switch(settings->pka_wb) {
        case 4:
        case 6:
         pin = 1;
         normalbutton = true;
         break;
        case 2:
        case 5:
         pin = 2;
         normalbutton = true;
         break;
        case 1:
        case 3:
         pin = 3;
         normalbutton = true;
         break;
      }
    }
  }
  #endif

  if (normalbutton) {
    if (board_getOutput2(pin)) {
      os_sprintf(buff, "fa-circle");
    } else {
      os_sprintf(buff, "fa-circle-o");
    }
    return;
  }
  os_sprintf(buff, "&nbsp;");
  return;
}

void ICACHE_FLASH_ATTR setSwitchString(char* buff, uint8_t item)
{
  bool normalbutton = false;
  uint32_t pin = 0;
  userSettings_t* settings = settings_get_pointer();
  #ifdef ENABLE_PKAWB
  if (settings->pka_wb==0) {
  #endif
    if (item==1) pin = 1;
    if (item==2) pin = 2;
    if (item==3) pin = 3;
    normalbutton = true;
  #ifdef ENABLE_PKAWB
  } else {
    if (item==1) {
      if (board_wbMode()==2) {
        if (board_wbState()) {
          os_sprintf(buff, "<a class='button' href='/wb?mode=0'>DOWN</a>");
        } else {
          os_sprintf(buff, "<a class='button' href='/wb?mode=1'>UP</a>");
        }
      } else {
        os_sprintf(buff, "<a class='button' href='/wb?mode=2'>STOP</a>");
      }
      return;
    }
    if (item==2) {
      if (board_wbMode()==2) {
        if (board_wbState()) {
          os_sprintf(buff, "State: up");
        } else {
          os_sprintf(buff, "State: down");
        }
      } else {
        if (board_wbState()) {
          os_sprintf(buff, "State: moving up");
        } else {
          os_sprintf(buff, "State: moving down");
        }
      }
      return;
    }
    if (item==3) {
      switch(settings->pka_wb) {
        case 4:
        case 6:
         pin = 1;
         normalbutton = true;
         break;
        case 2:
        case 5:
         pin = 2;
         normalbutton = true;
         break;
        case 1:
        case 3:
         pin = 3;
         normalbutton = true;
         break;
      }
    }
  }
  #endif

  if (normalbutton) {
    char text2[4] = "on";
    char text[4] = "OFF";
    if (board_getOutput2(pin)) {
      os_sprintf(text, "on");
      os_sprintf(text2, "off");
    }
    os_sprintf(buff, "<a class='button' href='/output?pin=%d&state=%d'>[%s] Switch %s</a>", pin, !board_getOutput2(pin), text, text2);
    return;
  }
  os_sprintf(buff, "&nbsp;");
  return;
}

//Template code for the homepage
int ICACHE_FLASH_ATTR tplHomepage(HttpdConnData *connData, char *token, void **arg) {
  char buff[512];
  if (token==NULL) return HTTPD_CGI_DONE;

  if (os_strcmp(token, "temperature")==0) {
    updateSensorStrings(); //Called 1st
    os_sprintf(buff, "%s", temperatureString);
  }
  if (os_strcmp(token, "pressure")==0) {
    //updateSensorStrings(); //Called 2nd, update not needed
    os_sprintf(buff, "%s", pressureString);
  }
  /*if (os_strcmp(token, "hour")==0) {
    updateSensorStrings();
    os_sprintf(buff, "--");
  }
  if (os_strcmp(token, "minute")==0) {
    updateSensorStrings();
    os_sprintf(buff, "--");
  }
  if (os_strcmp(token, "second")==0) {
    updateSensorStrings();
    os_sprintf(buff, "--");
  } */
  uint8_t c;
  char t[32];
  for (c=0;c<8;c++) {
    os_sprintf(t, "label%d", c);
    if (os_strcmp(token, t)==0) {
      setLabelString(buff, c);
    }
    os_sprintf(t, "output%d", c);
    if (os_strcmp(token, t)==0) {
      setSwitchString(buff, c);
    }
    os_sprintf(t, "output%dlink", c);
    if (os_strcmp(token, t)==0) {
      setSwitchUrl(buff, c);
    }
    os_sprintf(t, "output%dc", c);
    if (os_strcmp(token, t)==0) {
      setSwitchC(buff, c);
    }
    os_sprintf(t, "input%d", c);
    if (os_strcmp(token, t)==0) {
      setInputString(buff, c, false);
    }
    os_sprintf(t, "input%dc", c);
    if (os_strcmp(token, t)==0) {
      setInputString(buff, c, true);
    }
  }
  if (os_strcmp(token, "hidewarning")==0) {
    wifiSettings_t* settings = wifiSettingsGetPointer();
    if (!settings->setupEnabled) {
      os_sprintf(buff, " hidden");
    } else {
      os_sprintf(buff, "");
    }
  }

  if (os_strcmp(token, "hostname")==0) {
    os_memcpy( buff, settings_get_pointer()->name, 32 );
  }
    
  httpdSend(connData, buff, -1);
  return HTTPD_CGI_DONE;
}

int ICACHE_FLASH_ATTR cgiGetInput(HttpdConnData *connData) {
  int len;
  char buff[256];

  if (connData->conn==NULL) {
    //Connection aborted. Clean up.
    return HTTPD_CGI_DONE;
  }
  
  os_sprintf(buff, "ERROR" );
  len=httpdFindArg(connData->post->buff, "pin", buff, sizeof(buff));
  if (len<=0) len=httpdFindArg(connData->getArgs, "pin", buff, sizeof(buff));
  if (len>0) os_sprintf(buff, "%d", board_getInput(atoi(buff)));
  httpdSend(connData, buff, strlen(buff));
  return HTTPD_CGI_DONE;
}

int ICACHE_FLASH_ATTR cgiGetOutput(HttpdConnData *connData) {
  int len;
  char buff[256];

  if (connData->conn==NULL) {
    //Connection aborted. Clean up.
    return HTTPD_CGI_DONE;
  }
  
  os_sprintf(buff, "ERROR" );
  len=httpdFindArg(connData->post->buff, "pin", buff, sizeof(buff));
  if (len<=0) len=httpdFindArg(connData->getArgs, "pin", buff, sizeof(buff));
  if (len>0) os_sprintf(buff, "%d", board_getOutput2(atoi(buff)));

  len=httpdFindArg(connData->post->buff, "switchstring", buff, sizeof(buff));
  if (len<=0) len=httpdFindArg(connData->getArgs, "switchstring", buff, sizeof(buff));
  if (len>0) setSwitchString(buff, atoi(buff));

  len=httpdFindArg(connData->post->buff, "switchstringC", buff, sizeof(buff));
  if (len<=0) len=httpdFindArg(connData->getArgs, "switchstringC", buff, sizeof(buff));
  if (len>0) setSwitchC(buff, atoi(buff));

  httpdSend(connData, buff, strlen(buff));
  return HTTPD_CGI_DONE;
}

int ICACHE_FLASH_ATTR cgiGetJsonInfo(HttpdConnData *connData) {
  int len;
  char buff[256];

  if (connData->conn==NULL) {
    //Connection aborted. Clean up.
    return HTTPD_CGI_DONE;
  }
  
  os_sprintf(buff, "{'vendor':'RNPLUS','class':'IO_RELAY','device':'Device name','version':'5','digital_input':[['Sensor 1',0,0,0],['Sensor 2',0,0,0],['Sensor 3',0,0,0],['Sensor 4',0,0,0]],'digital_output':[['Output 1',0,0,0],['Output 2',0,0,0],['Output 3',0,0,0]]}" );

  httpdSend(connData, buff, strlen(buff));
  return HTTPD_CGI_DONE;
}

int ICACHE_FLASH_ATTR cgiSetOutput(HttpdConnData *connData) {
  int len;
  char buff[1024];

  if (connData->conn==NULL) {
    //Connection aborted. Clean up.
    return HTTPD_CGI_DONE;
  }

  uint32_t pin = 999;
  bool state = false;

  len=httpdFindArg(connData->post->buff, "pin", buff, sizeof(buff));
  if (len<=0) len=httpdFindArg(connData->getArgs, "pin", buff, sizeof(buff));
  if (len>0) pin=atoi(buff);
  len=httpdFindArg(connData->post->buff, "state", buff, sizeof(buff));
  if (len<=0) len=httpdFindArg(connData->getArgs, "state", buff, sizeof(buff));
  if (len>0) state=atoi(buff);

  bool result = board_setOutput2(pin, state);

  len=httpdFindArg(connData->post->buff, "cmd", buff, sizeof(buff));
  if (len<=0) len=httpdFindArg(connData->getArgs, "cmd", buff, sizeof(buff));
  if (len>0) {
    char buff[128];
    if (result) {
      os_sprintf(buff, "OK");
    } else {
      os_sprintf(buff, "ERROR");
    }
    httpdSend(connData, buff, strlen(buff));
    return HTTPD_CGI_DONE;
  }
  else
  {
    httpdRedirect(connData, "home");
    return HTTPD_CGI_DONE;
  }
}

#ifdef PWM
int ICACHE_FLASH_ATTR cgiSetPwm(HttpdConnData *connData) {
  int len;
  char buff[1024];

  if (connData->conn==NULL) {
    //Connection aborted. Clean up.
    return HTTPD_CGI_DONE;
  }

  bool result = false;
  int red = 0;
  int green = 0;
  int blue = 0;

  len=httpdFindArg(connData->post->buff, "color", buff, sizeof(buff));
  if (len<=0) len=httpdFindArg(connData->getArgs, "color", buff, sizeof(buff));
  if (len==6) {
    //pin=atoi(buff);
    char rstring[3] = {0};
    char gstring[3] = {0};
    char bstring[3] = {0};
    os_memcpy( rstring, buff, 2 );
    os_memcpy( gstring, buff+2, 2 );
    os_memcpy( bstring, buff+4, 2 );
    red = (int)strtol(rstring, NULL, 16);
    green = (int)strtol(gstring, NULL, 16);
    blue = (int)strtol(bstring, NULL, 16);

    #ifdef PWM
      //os_printf("CGI_PWMSET_PWM\r\n");
      pwm_set_all(red, green, blue);
      result = true;
    #endif
    #ifdef WS2801
      //os_printf("CGI_PWMSET_WS2801\r\n");
      ws2801_set_all(red, green, blue);
      ws2801_send(false);
      result = true;
    #endif
    #if defined(WS2812) || defined(WS2812GPIO)
      //os_printf("CGI_PWMSET_WS2812\r\n");
      ws2812_set_all(red, green, blue);
      ws2812_send(false);
      result = true;
    #endif
  }

  len=httpdFindArg(connData->post->buff, "cmd", buff, sizeof(buff));
  if (len<=0) len=httpdFindArg(connData->getArgs, "cmd", buff, sizeof(buff));
  if (len>0) {
    char buff[128];
    if (result) {
      os_sprintf(buff, "OK");
    } else {
      os_sprintf(buff, "ERROR");
    }
    httpdSend(connData, buff, strlen(buff));
    return HTTPD_CGI_DONE;
  }
  else
  {
    httpdRedirect(connData, "pwm");
    return HTTPD_CGI_DONE;
  }
}
#endif

int ICACHE_FLASH_ATTR cgiSetWS2812(HttpdConnData *connData) {
  int len;
  char buff[1024];

  if (connData->conn==NULL) {
    //Connection aborted. Clean up.
    return HTTPD_CGI_DONE;
  }

  bool result = false;
  int red = 0;
  int green = 0;
  int blue = 0;

  len=httpdFindArg(connData->post->buff, "color", buff, sizeof(buff));
  if (len<=0) len=httpdFindArg(connData->getArgs, "color", buff, sizeof(buff));
  if (len==6) {
    //pin=atoi(buff);
    char rstring[3] = {0};
    char gstring[3] = {0};
    char bstring[3] = {0};
    os_memcpy( rstring, buff, 2 );
    os_memcpy( gstring, buff+2, 2 );
    os_memcpy( bstring, buff+4, 2 );
    red = (int)strtol(rstring, NULL, 16);
    green = (int)strtol(gstring, NULL, 16);
    blue = (int)strtol(bstring, NULL, 16);
    uint8_t buffer[64] = {0};
    buffer[0] = green;
    buffer[1] = red;
    buffer[2] = blue;
    //board_setWS2812(buffer, 3);
    //os_printf("WS2812 SET TO %x,%x,%x\r\n", red, green, blue);
    result = true;
  }

  len=httpdFindArg(connData->post->buff, "cmd", buff, sizeof(buff));
  if (len<=0) len=httpdFindArg(connData->getArgs, "cmd", buff, sizeof(buff));
  if (len>0) {
    char buff[128];
    if (result) {
      os_sprintf(buff, "OK");
    } else {
      os_sprintf(buff, "ERROR");
    }
    httpdSend(connData, buff, strlen(buff));
    return HTTPD_CGI_DONE;
  }
  else
  {
    httpdRedirect(connData, "ws2812");
    return HTTPD_CGI_DONE;
  }
}


//Template code for the settings page
int ICACHE_FLASH_ATTR tplSettings(HttpdConnData *connData, char *token, void **arg)
{
  char buff[128];
  if (token==NULL) return HTTPD_CGI_DONE;

  if (os_strcmp(token, "hidewarning")==0) {
    wifiSettings_t* settings = wifiSettingsGetPointer();
    if (!settings->setupEnabled) {
      os_sprintf(buff, " hidden");
    } else {
      os_sprintf(buff, "");
    }
  }
  userSettings_t* settings = settings_get_pointer();
  if (os_strcmp(token, "name")==0) {
    os_memcpy( buff, settings->name, 64 );
  }
  if (os_strcmp(token, "hostname")==0) {
    os_memcpy( buff, settings->hostname, 32 );
  }
  if (os_strcmp(token, "enable_mdns")==0) {
    if (settings->enable_mdns) {
      os_sprintf(buff, " checked");
    } else {
      os_sprintf(buff, "");
    }
  }
  if (os_strcmp(token, "enable_ntp")==0) {
    if (settings->enable_ntp) {
      os_sprintf(buff, " checked");
    } else {
      os_sprintf(buff, "");
    }
  }
  if (os_strcmp(token, "ntp_server")==0) os_memcpy( buff, settings->ntpserver, 64 );
  if (os_strcmp(token, "timezone")==0) os_sprintf( buff, "%d", settings->timezone );
  if (os_strcmp(token, "ntp_summer")==0) {
    if (settings->enable_summertime) {
      os_sprintf(buff, " checked");
    } else {
      os_sprintf(buff, "");
    }
  }
  if (os_strcmp(token, "bootstate")==0) os_sprintf( buff, "%d", settings->bootstate );
  if (os_strcmp(token, "authEnable")==0) {
    if (settings->authEnable) {
      os_sprintf(buff, " checked");
    } else {
      os_sprintf(buff, "");
    }
  }
  if (os_strcmp(token, "authUser")==0) os_memcpy( buff, settings->authUser, 64 );
  if (os_strcmp(token, "authPassword")==0) os_memcpy( buff, settings->authPassword, 64 );
  
  #ifdef WS2801
    if (os_strcmp(token, "ws2801Enabled")==0) {
      if (settings->ws2801Enabled) {
        os_sprintf(buff, " checked");
      } else {
        os_sprintf(buff, "");
      }
    }
    if (os_strcmp(token, "ws2801Length")==0) os_sprintf( buff, "%d", settings->ws2801Length );
    if (os_strcmp(token, "ws2801BootstateR")==0) os_sprintf( buff, "%d", settings->ws2801BootstateR );
    if (os_strcmp(token, "ws2801BootstateG")==0) os_sprintf( buff, "%d", settings->ws2801BootstateG );
    if (os_strcmp(token, "ws2801BootstateB")==0) os_sprintf( buff, "%d", settings->ws2801BootstateB );
  #endif
  #if defined(WS2812) || defined(WS2812GPIO)
    if (os_strcmp(token, "ws2812Enabled")==0) {
      if (settings->ws2812Enabled) {
        os_sprintf(buff, " checked");
      } else {
        os_sprintf(buff, "");
      }
    }
    if (os_strcmp(token, "ws2812Length")==0) os_sprintf( buff, "%d", settings->ws2812Length );
    if (os_strcmp(token, "ws2812BootstateR")==0) os_sprintf( buff, "%d", settings->ws2812BootstateR );
    if (os_strcmp(token, "ws2812BootstateG")==0) os_sprintf( buff, "%d", settings->ws2812BootstateG );
    if (os_strcmp(token, "ws2812BootstateB")==0) os_sprintf( buff, "%d", settings->ws2812BootstateB );
  #endif
  #ifdef ENABLE_PKAWB
    if (os_strcmp(token, "pka_wb")==0) os_sprintf( buff, "%d", settings->pka_wb );
    if (os_strcmp(token, "pka_wb_time")==0) os_sprintf( buff, "%d", settings->pka_wb_time );
  #endif
  
  int i = 0;
  char t[12];
  for (i = 0; i<16; i++) {
    os_sprintf(t, "actSensor%d", i);
    if (os_strcmp(token, t)==0) os_sprintf( buff, "%d", settings->actSensor[i] ); 
    os_sprintf(t, "sensor%d_time", i);
    if (os_strcmp(token, t)==0) os_sprintf( buff, "%d", settings->sensorTimeout[i] );
    os_sprintf(t, "sensor%d_url", i);
    if (os_strcmp(token, t)==0) os_sprintf( buff, "%s", settings->sensorActionUrl[i] );
  }
  httpdSend(connData, buff, -1);
  return HTTPD_CGI_DONE;
}

//Template code for the wifi settings page
int ICACHE_FLASH_ATTR tplWifiSettings(HttpdConnData *connData, char *token, void **arg)
{
  char buff[128];
  if (token==NULL) return HTTPD_CGI_DONE;
  wifiSettings_t* settings = wifiSettingsGetPointer();
  if (settings->setupEnabled) {
    if (os_strcmp(token, "ssid")==0) {
      os_memcpy( buff, settings->ssid, 32 );
    }
    if (os_strcmp(token, "password")==0) {
      os_memcpy( buff, settings->password, 64 );
    }
    if (os_strcmp(token, "enable_dhcp")==0) {
      if (settings->enable_dhcp) {
        os_sprintf(buff, " checked");
      } else {
        os_sprintf(buff, "");
      }
    }
    if (os_strcmp(token, "static_ip_1")==0) os_sprintf(buff, "%d", settings->static_ip_1);
    if (os_strcmp(token, "static_ip_2")==0) os_sprintf(buff, "%d", settings->static_ip_2);
    if (os_strcmp(token, "static_ip_3")==0) os_sprintf(buff, "%d", settings->static_ip_3);
    if (os_strcmp(token, "static_ip_4")==0) os_sprintf(buff, "%d", settings->static_ip_4);
    if (os_strcmp(token, "static_gateway_1")==0) os_sprintf(buff, "%d", settings->static_gateway_1);
    if (os_strcmp(token, "static_gateway_2")==0) os_sprintf(buff, "%d", settings->static_gateway_2);
    if (os_strcmp(token, "static_gateway_3")==0) os_sprintf(buff, "%d", settings->static_gateway_3);
    if (os_strcmp(token, "static_gateway_4")==0) os_sprintf(buff, "%d", settings->static_gateway_4);
    if (os_strcmp(token, "static_netmask_1")==0) os_sprintf(buff, "%d", settings->static_netmask_1);
    if (os_strcmp(token, "static_netmask_2")==0) os_sprintf(buff, "%d", settings->static_netmask_2);
    if (os_strcmp(token, "static_netmask_3")==0) os_sprintf(buff, "%d", settings->static_netmask_3);
    if (os_strcmp(token, "static_netmask_4")==0) os_sprintf(buff, "%d", settings->static_netmask_4);
    if (os_strcmp(token, "static_dns_1")==0) os_sprintf(buff, "%d", settings->static_dns_1);
    if (os_strcmp(token, "static_dns_2")==0) os_sprintf(buff, "%d", settings->static_dns_2);
    if (os_strcmp(token, "static_dns_3")==0) os_sprintf(buff, "%d", settings->static_dns_3);
    if (os_strcmp(token, "static_dns_4")==0) os_sprintf(buff, "%d", settings->static_dns_4);
    if (os_strcmp(token, "static_altdns_1")==0) os_sprintf(buff, "%d", settings->static_altdns_1);
    if (os_strcmp(token, "static_altdns_2")==0) os_sprintf(buff, "%d", settings->static_altdns_2);
    if (os_strcmp(token, "static_altdns_3")==0) os_sprintf(buff, "%d", settings->static_altdns_3);
    if (os_strcmp(token, "static_altdns_4")==0) os_sprintf(buff, "%d", settings->static_altdns_4);
  } else {
    strcpy(buff, "NOT IN SETUP MODE");
  }
  httpdSend(connData, buff, -1);
  return HTTPD_CGI_DONE;
}

int ICACHE_FLASH_ATTR cgiSettingsStore(HttpdConnData *connData)
{
  int len;
  char buff[1024];
  userSettings_t* settings = settings_get_pointer();
  if (connData->conn==NULL) return HTTPD_CGI_DONE;
  len=httpdFindArg(connData->post->buff, "name", buff, sizeof(buff));
  if (len<=0) len=httpdFindArg(connData->getArgs, "name", buff, sizeof(buff));
  if (len>0) os_memcpy(settings->name, buff, 64);
  len=httpdFindArg(connData->post->buff, "hostname", buff, sizeof(buff));
  if (len<=0) len=httpdFindArg(connData->getArgs, "hostname", buff, sizeof(buff));
  if (len>0) os_memcpy(settings->hostname, buff, 32);
  len=httpdFindArg(connData->post->buff, "enable_mdns", buff, sizeof(buff));
  if (len<=0) len=httpdFindArg(connData->getArgs, "enable_mdns", buff, sizeof(buff));
  if (len>0) { settings->enable_mdns = atoi(buff); } else { settings->enable_mdns = false; }
  len=httpdFindArg(connData->post->buff, "enable_ntp", buff, sizeof(buff));
  if (len<=0) len=httpdFindArg(connData->getArgs, "enable_ntp", buff, sizeof(buff));
  if (len>0) { settings->enable_ntp = atoi(buff); } else { settings->enable_ntp = false; }
  len=httpdFindArg(connData->post->buff, "ntp_server", buff, sizeof(buff));
  if (len<=0) len=httpdFindArg(connData->getArgs, "ntp_server", buff, sizeof(buff));
  if (len>0) os_memcpy(settings->ntpserver, buff, 64);
  len=httpdFindArg(connData->post->buff, "timezone", buff, sizeof(buff));
  if (len<=0) len=httpdFindArg(connData->getArgs, "timezone", buff, sizeof(buff));
  if (len>0) settings->timezone = atoi(buff);
  len=httpdFindArg(connData->post->buff, "enable_summertime", buff, sizeof(buff));
  if (len<=0) len=httpdFindArg(connData->getArgs, "enable_summertime", buff, sizeof(buff));
  if (len>0) { settings->enable_summertime = atoi(buff); } else { settings->enable_summertime = false; }
  len=httpdFindArg(connData->post->buff, "authEnable", buff, sizeof(buff));
  if (len<=0) len=httpdFindArg(connData->getArgs, "authEnable", buff, sizeof(buff));
  if (len>0) { settings->authEnable = atoi(buff); } else { settings->authEnable = false; }
  len=httpdFindArg(connData->post->buff, "authUser", buff, sizeof(buff));
  if (len<=0) len=httpdFindArg(connData->getArgs, "authUser", buff, sizeof(buff));
  if (len>0) os_memcpy(settings->authUser, buff, 64);
  len=httpdFindArg(connData->post->buff, "authPassword", buff, sizeof(buff));
  if (len<=0) len=httpdFindArg(connData->getArgs, "authPassword", buff, sizeof(buff));
  if (len>0) os_memcpy(settings->authPassword, buff, 64);
  len=httpdFindArg(connData->post->buff, "bootstate", buff, sizeof(buff));
  if (len<=0) len=httpdFindArg(connData->getArgs, "bootstate", buff, sizeof(buff));
  if (len>0) settings->bootstate = atoi(buff);
  #ifdef WS2801
    len=httpdFindArg(connData->post->buff, "ws2801Enabled", buff, sizeof(buff));
    if (len<=0) len=httpdFindArg(connData->getArgs, "ws2801Enabled", buff, sizeof(buff));
    if (len>0) { settings->ws2801Enabled = atoi(buff); } else { settings->ws2801Enabled = false; }
    len=httpdFindArg(connData->post->buff, "ws2801Length", buff, sizeof(buff));
    if (len<=0) len=httpdFindArg(connData->getArgs, "ws2801Length", buff, sizeof(buff));
    if (len>0) settings->ws2801Length = atoi(buff);
    len=httpdFindArg(connData->post->buff, "ws2801BootstateR", buff, sizeof(buff));
    if (len<=0) len=httpdFindArg(connData->getArgs, "ws2801BootstateR", buff, sizeof(buff));
    if (len>0) settings->ws2801BootstateR = atoi(buff);
    len=httpdFindArg(connData->post->buff, "ws2801BootstateG", buff, sizeof(buff));
    if (len<=0) len=httpdFindArg(connData->getArgs, "ws2801BootstateG", buff, sizeof(buff));
    if (len>0) settings->ws2801BootstateG = atoi(buff);
    len=httpdFindArg(connData->post->buff, "ws2801BootstateB", buff, sizeof(buff));
    if (len<=0) len=httpdFindArg(connData->getArgs, "ws2801BootstateB", buff, sizeof(buff));
    if (len>0) settings->ws2801BootstateB = atoi(buff);
  #endif
  #if defined(WS2812) || defined(WS2812GPIO)
    len=httpdFindArg(connData->post->buff, "ws2812Enabled", buff, sizeof(buff));
    if (len<=0) len=httpdFindArg(connData->getArgs, "ws2812Enabled", buff, sizeof(buff));
    if (len>0) { settings->ws2812Enabled = atoi(buff); } else { settings->ws2812Enabled = false; }
    len=httpdFindArg(connData->post->buff, "ws2812Length", buff, sizeof(buff));
    if (len<=0) len=httpdFindArg(connData->getArgs, "ws2812Length", buff, sizeof(buff));
    if (len>0) settings->ws2812Length = atoi(buff);
    len=httpdFindArg(connData->post->buff, "ws2812BootstateR", buff, sizeof(buff));
    if (len<=0) len=httpdFindArg(connData->getArgs, "ws2812BootstateR", buff, sizeof(buff));
    if (len>0) settings->ws2812BootstateR = atoi(buff);
    len=httpdFindArg(connData->post->buff, "ws2812BootstateG", buff, sizeof(buff));
    if (len<=0) len=httpdFindArg(connData->getArgs, "ws2812BootstateG", buff, sizeof(buff));
    if (len>0) settings->ws2812BootstateG = atoi(buff);
    len=httpdFindArg(connData->post->buff, "ws2812BootstateB", buff, sizeof(buff));
    if (len<=0) len=httpdFindArg(connData->getArgs, "ws2812BootstateB", buff, sizeof(buff));
    if (len>0) settings->ws2812BootstateB = atoi(buff);
  #endif
  #ifdef ENABLE_PKAWB
    len=httpdFindArg(connData->post->buff, "pka_wb", buff, sizeof(buff));
    if (len<=0) len=httpdFindArg(connData->getArgs, "pka_wb", buff, sizeof(buff));
    if (len>0) settings->pka_wb = atoi(buff);
    len=httpdFindArg(connData->post->buff, "pka_wb_time", buff, sizeof(buff));
    if (len<=0) len=httpdFindArg(connData->getArgs, "pka_wb_time", buff, sizeof(buff));
    if (len>0) settings->pka_wb_time = atoi(buff); 
  #endif
  //Sensoractions
  int i = 0;
  char t[12];
  for (i = 0; i<16; i++) {
    os_sprintf(t, "actSensor%d", i);
    len=httpdFindArg(connData->post->buff, t, buff, sizeof(buff));
    if (len<=0) len=httpdFindArg(connData->getArgs, t, buff, sizeof(buff));
    if (len>0) settings->actSensor[i] = atoi(buff);
    os_sprintf(t, "sensor%d_time", i);
    len=httpdFindArg(connData->post->buff, t, buff, sizeof(buff));
    if (len<=0) len=httpdFindArg(connData->getArgs, t, buff, sizeof(buff));
    if (len>0) settings->sensorTimeout[i] = atoi(buff);
    os_sprintf(t, "sensor%d_url", i);
    len=httpdFindArg(connData->post->buff, t, buff, sizeof(buff));
    if (len<=0) len=httpdFindArg(connData->getArgs, t, buff, sizeof(buff));
    if (len>0) os_memcpy(settings->sensorActionUrl[i], buff, 256);
  }
  settings_store( settings );
  httpdRedirect(connData, "/settingsstored");
  //settings_apply( settings, false );
  //Apply settings:
  wifi_station_set_hostname(settings->hostname); //Try to set hostname (TO-DO: create function that handles this correctly)
  mdnsStart(); //(re-)init or disable MDNS according to settings
  init_drivers(); //(re-)init or disable drivers according to settings
  return HTTPD_CGI_DONE;
}

int ICACHE_FLASH_ATTR cgiWifiSettingsStore(HttpdConnData *connData)
{
  int len;
  char buff[1024];
  wifiSettings_t* settings = wifiSettingsGetPointer();
  if (connData->conn==NULL) return HTTPD_CGI_DONE;
  len=httpdFindArg(connData->post->buff, "ssid", buff, sizeof(buff));
  if (len<=0) len=httpdFindArg(connData->getArgs, "ssid", buff, sizeof(buff));
  if (len>0) os_memcpy(settings->ssid, buff, 32);
  len=httpdFindArg(connData->post->buff, "password", buff, sizeof(buff));
  if (len<=0) len=httpdFindArg(connData->getArgs, "password", buff, sizeof(buff));
  if (len>0) os_memcpy(settings->password, buff, 64);
  len=httpdFindArg(connData->post->buff, "enable_dhcp", buff, sizeof(buff));
  if (len<=0) len=httpdFindArg(connData->getArgs, "enable_dhcp", buff, sizeof(buff));
  if (len>0) { settings->enable_dhcp = atoi(buff); } else { settings->enable_dhcp = false; }
  len=httpdFindArg(connData->post->buff, "static_ip_1", buff, sizeof(buff));
  if (len<=0) len=httpdFindArg(connData->getArgs, "static_ip_1", buff, sizeof(buff));
  if (len>0) settings->static_ip_1 = atoi(buff);
  len=httpdFindArg(connData->post->buff, "static_ip_2", buff, sizeof(buff));
  if (len<=0) len=httpdFindArg(connData->getArgs, "static_ip_2", buff, sizeof(buff));
  if (len>0) settings->static_ip_2 = atoi(buff);
  len=httpdFindArg(connData->post->buff, "static_ip_3", buff, sizeof(buff));
  if (len<=0) len=httpdFindArg(connData->getArgs, "static_ip_3", buff, sizeof(buff));
  if (len>0) settings->static_ip_3 = atoi(buff);
  len=httpdFindArg(connData->post->buff, "static_ip_4", buff, sizeof(buff));
  if (len<=0) len=httpdFindArg(connData->getArgs, "static_ip_4", buff, sizeof(buff));
  if (len>0) settings->static_ip_4 = atoi(buff);
  len=httpdFindArg(connData->post->buff, "static_gateway_1", buff, sizeof(buff));
  if (len<=0) len=httpdFindArg(connData->getArgs, "static_gateway_1", buff, sizeof(buff));
  if (len>0) settings->static_gateway_1 = atoi(buff);
  len=httpdFindArg(connData->post->buff, "static_gateway_2", buff, sizeof(buff));
  if (len<=0) len=httpdFindArg(connData->getArgs, "static_gateway_2", buff, sizeof(buff));
  if (len>0) settings->static_gateway_2 = atoi(buff);
  len=httpdFindArg(connData->post->buff, "static_gateway_3", buff, sizeof(buff));
  if (len<=0) len=httpdFindArg(connData->getArgs, "static_gateway_3", buff, sizeof(buff));
  if (len>0) settings->static_gateway_3 = atoi(buff);
  len=httpdFindArg(connData->post->buff, "static_gateway_4", buff, sizeof(buff));
  if (len<=0) len=httpdFindArg(connData->getArgs, "static_gateway_4", buff, sizeof(buff));
  if (len>0) settings->static_gateway_4 = atoi(buff);
  len=httpdFindArg(connData->post->buff, "static_netmask_1", buff, sizeof(buff));
  if (len<=0) len=httpdFindArg(connData->getArgs, "static_netmask_1", buff, sizeof(buff));
  if (len>0) settings->static_netmask_1 = atoi(buff);
  len=httpdFindArg(connData->post->buff, "static_netmask_2", buff, sizeof(buff));
  if (len<=0) len=httpdFindArg(connData->getArgs, "static_netmask_2", buff, sizeof(buff));
  if (len>0) settings->static_netmask_2 = atoi(buff);
  len=httpdFindArg(connData->post->buff, "static_netmask_3", buff, sizeof(buff));
  if (len<=0) len=httpdFindArg(connData->getArgs, "static_netmask_3", buff, sizeof(buff));
  if (len>0) settings->static_netmask_3 = atoi(buff);
  len=httpdFindArg(connData->post->buff, "static_netmask_4", buff, sizeof(buff));
  if (len<=0) len=httpdFindArg(connData->getArgs, "static_netmask_4", buff, sizeof(buff));
  if (len>0) settings->static_netmask_4 = atoi(buff);
  len=httpdFindArg(connData->post->buff, "static_dns_1", buff, sizeof(buff));
  if (len<=0) len=httpdFindArg(connData->getArgs, "static_dns_1", buff, sizeof(buff));
  if (len>0) settings->static_dns_1 = atoi(buff);
  len=httpdFindArg(connData->post->buff, "static_dns_2", buff, sizeof(buff));
  if (len<=0) len=httpdFindArg(connData->getArgs, "static_dns_2", buff, sizeof(buff));
  if (len>0) settings->static_dns_2 = atoi(buff);
  len=httpdFindArg(connData->post->buff, "static_dns_3", buff, sizeof(buff));
  if (len<=0) len=httpdFindArg(connData->getArgs, "static_dns_3", buff, sizeof(buff));
  if (len>0) settings->static_dns_3 = atoi(buff);
  len=httpdFindArg(connData->post->buff, "static_dns_4", buff, sizeof(buff));
  if (len<=0) len=httpdFindArg(connData->getArgs, "static_dns_4", buff, sizeof(buff));
  if (len>0) settings->static_dns_4 = atoi(buff);
  len=httpdFindArg(connData->post->buff, "static_altdns_1", buff, sizeof(buff));
  if (len<=0) len=httpdFindArg(connData->getArgs, "static_altdns_1", buff, sizeof(buff));
  if (len>0) settings->static_altdns_1 = atoi(buff);
  len=httpdFindArg(connData->post->buff, "static_altdns_2", buff, sizeof(buff));
  if (len<=0) len=httpdFindArg(connData->getArgs, "static_altdns_2", buff, sizeof(buff));
  if (len>0) settings->static_altdns_2 = atoi(buff);
  len=httpdFindArg(connData->post->buff, "static_altdns_3", buff, sizeof(buff));
  if (len<=0) len=httpdFindArg(connData->getArgs, "static_altdns_3", buff, sizeof(buff));
  if (len>0) settings->static_altdns_3 = atoi(buff);
  len=httpdFindArg(connData->post->buff, "static_altdns_4", buff, sizeof(buff));
  if (len<=0) len=httpdFindArg(connData->getArgs, "static_altdns_4", buff, sizeof(buff));
  if (len>0) settings->static_altdns_4 = atoi(buff);
  len=httpdFindArg(connData->post->buff, "force", buff, sizeof(buff));
  if (len<=0) len=httpdFindArg(connData->getArgs, "force", buff, sizeof(buff));
  if (len>0) {
    char buff[256];
    os_sprintf(buff, "Settings forcefully applied.<br />To re-enable setup mode please press the setup button on the device.<br />Please reset the device now.");
    httpdSend(connData, buff, strlen(buff));
    settings->setupEnabled = false;
    wifiSettingsWriteToFlash( settings );
    //os_printf("APPLIED WIFI SETTINGS WITHOUT CHECK.\r\n");
  } else {
    wifiSetupCommit( settings );
    httpdRedirect(connData, "/wificonntest");
    //os_printf("WifiSetupCommit called.\r\n");
  }
  return HTTPD_CGI_DONE;
}

int ICACHE_FLASH_ATTR cgiWiFiStatus(HttpdConnData *connData)
{
  int len;
  char buff[256];
  if (connData->conn==NULL) return HTTPD_CGI_DONE;

  len=httpdFindArg(connData->post->buff, "ip", buff, sizeof(buff));
  if (len<=0) len=httpdFindArg(connData->getArgs, "ip", buff, sizeof(buff));
  if (len>0) {
    struct ip_info info;
    wifi_get_ip_info( 0x00, &info );
    os_sprintf(buff, IPSTR, IP2STR(&info.ip));
    httpdSend(connData, buff, strlen(buff));
    return HTTPD_CGI_DONE;
  }

  len=httpdFindArg(connData->post->buff, "ssid", buff, sizeof(buff));
  if (len<=0) len=httpdFindArg(connData->getArgs, "ssid", buff, sizeof(buff));
  if (len>0) {
    os_sprintf(buff, "%s", wifiSettingsGetPointer()->ssid);
    httpdSend(connData, buff, strlen(buff));
    return HTTPD_CGI_DONE;
  }

  len=httpdFindArg(connData->post->buff, "ct", buff, sizeof(buff));
  if (len<=0) len=httpdFindArg(connData->getArgs, "ct", buff, sizeof(buff));
  if (len>0) {
    uint8_t ctr = 0; //Not doing anything
    if (wifiGetConnectionTest()) {
      ctr = 1; //testing...
    }
    if (wifiGetConnectionTestEnded()) {
      if (wifiGetConnectionResult()) {
        if (wifiGetConnectionHasIp()) {
          ctr = 4; //success
        } else {
          ctr = 3; //waiting for ip
        }
      } else {
        ctr = 2; //failed
      }
    }
    os_sprintf(buff, "%d", ctr);
    httpdSend(connData, buff, strlen(buff));
    return HTTPD_CGI_DONE;
  }

  os_sprintf(buff, "%d", wifi_station_get_connect_status());
  httpdSend(connData, buff, strlen(buff));
  return HTTPD_CGI_DONE;
}

#ifdef ENABLE_PKAWB
int ICACHE_FLASH_ATTR cgiWb(HttpdConnData *connData)
{
  int len;
  bool result = false;
  char buff[1024];
  if (connData->conn==NULL) return HTTPD_CGI_DONE;
  len=httpdFindArg(connData->post->buff, "mode", buff, sizeof(buff));
  if (len<=0) len=httpdFindArg(connData->getArgs, "mode", buff, sizeof(buff));
  if (len>0) {
    uint8_t mode = atoi(buff);
    if (mode==0) {
      board_wbDown();
      result = true;
    }
    if (mode==1) {
      board_wbUp();
      result = true;
    }
    if (mode==2) {
      board_wbStop();
      result = true;
    }
  }
  
  len=httpdFindArg(connData->post->buff, "cmd", buff, sizeof(buff));
  if (len<=0) len=httpdFindArg(connData->getArgs, "cmd", buff, sizeof(buff));
  if (len>0) {
    char buff[128];
    if (result) {
      os_sprintf(buff, "OK");
    } else {
      os_sprintf(buff, "ERROR");
    }
    httpdSend(connData, buff, strlen(buff));
  } else {
    httpdRedirect(connData, "home");
  }
  return HTTPD_CGI_DONE;
}
#endif

int ICACHE_FLASH_ATTR cgiSensor(HttpdConnData *connData)
{
  int len;
  bool result = false;
  char buff[1024];
  if (connData->conn==NULL) return HTTPD_CGI_DONE;

  len=httpdFindArg(connData->post->buff, "temperature", buff, sizeof(buff));
  if (len<=0) len=httpdFindArg(connData->getArgs, "temperature", buff, sizeof(buff));
  if (len>0) {
    //updateSensorStrings();
    //os_sprintf(buff, "%s", temperatureString);
    os_sprintf(buff, "%d", board_sensorGetTemperature()); //Return temperature as int32_t value instead of float (20.0*c -> 200)
    httpdSend(connData, buff, strlen(buff));
  }
  
  len=httpdFindArg(connData->post->buff, "pressure", buff, sizeof(buff));
  if (len<=0) len=httpdFindArg(connData->getArgs, "pressure", buff, sizeof(buff));
  if (len>0) {
    //updateSensorStrings();
    //os_sprintf(buff, "%s", pressureString);
    os_sprintf(buff, "%d", board_sensorGetAirPressure()); //Return pressure as int32_t value (in Pa)
    httpdSend(connData, buff, strlen(buff));
  }
  
  return HTTPD_CGI_DONE;
}

int ICACHE_FLASH_ATTR cgiUploadTest(HttpdConnData *connData)
{
  char buff[1024];
  os_sprintf(buff, "Not implemented.");
  httpdSend(connData, buff, strlen(buff));  
  return HTTPD_CGI_DONE;
}

int ICACHE_FLASH_ATTR cgiOta(HttpdConnData *connData)
{
  char buff[1024];
  os_sprintf(buff, "Not implemented.");
  httpdSend(connData, buff, strlen(buff));  
  return HTTPD_CGI_DONE;
}
