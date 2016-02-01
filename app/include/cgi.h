#ifndef CGI_H
#define CGI_H

#include <esp8266.h>

HttpdBuiltInUrl* cgi_get_builtInUrls( void );
int tplHomepage(HttpdConnData *connData, char *token, void **arg);
int tplSettings(HttpdConnData *connData, char *token, void **arg);
int tplWifiSettings(HttpdConnData *connData, char *token, void **arg);
int cgiSetOutput(HttpdConnData *connData);
int cgiSetPwm(HttpdConnData *connData);
int cgiSetWS2812(HttpdConnData *connData);
int cgiWiFiScan(HttpdConnData *connData);
int cgiSettingsStore(HttpdConnData *connData);
int cgiWifiSettingsStore(HttpdConnData *connData);
int cgiWb(HttpdConnData *connData);
int cgiSensor(HttpdConnData *connData);
int cgiGetInput(HttpdConnData *connData);
int cgiGetOutput(HttpdConnData *connData);
int cgiWiFiStatus(HttpdConnData *connData);
int cgiOta(HttpdConnData *connData);
int cgiUploadTest(HttpdConnData *connData);

#endif
