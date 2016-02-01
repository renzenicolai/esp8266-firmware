/*
 * File: auth.c
 * Description: HTTP auth implementation (basic auth only)
 * License: BEER-WARE LICENSE
 * Authors: Jeroen Domburg, Renze Nicolai
 */

/*
 * ----------------------------------------------------------------------------
 * "THE BEER-WARE LICENSE" (Revision 42):
 * Jeroen Domburg <jeroen@spritesmods.com> wrote this file. As long as you retain 
 * this notice you can do whatever you want with this stuff. If we meet some day, 
 * and you think this stuff is worth it, you can buy me a beer in return. 
 * ----------------------------------------------------------------------------
 */


#include <user_interface.h>
#include "user_settings.h"
#include "httpd/httpd_auth.h"

bool ICACHE_FLASH_ATTR authEnabled( void )
{
  if ((settings_get_pointer()->authEnable)&&(!wifiGetSetupActive())) {
    return true;
  }
  return false;
}

bool ICACHE_FLASH_ATTR authCheck( char* userpass )
{
  char user[AUTH_MAX_USER_LEN];
  char pass[AUTH_MAX_PASS_LEN];
  
  os_memcpy( &user, settings_get_pointer()->authUser, AUTH_MAX_USER_LEN );
  os_memcpy( &pass, settings_get_pointer()->authPassword, AUTH_MAX_PASS_LEN );
  
  //os_printf("Auth: %s <> %s:%s\n", userpass, user, pass);
  
  if ((strlen(userpass)==strlen(user)+strlen(pass)+1)
  && (os_strncmp(userpass, user, strlen(user))==0)
  && (userpass[strlen(user)]==':')
  && (os_strcmp(userpass+strlen(user)+1, pass)==0)) {
    return true;
  }
  return false;
}

int ICACHE_FLASH_ATTR authBasicRn(HttpdConnData *connData)
{
  if (authEnabled()) {
    const char *forbidden="401 Forbidden.";
    int no=0;
    int r;
    char hdr[(AUTH_MAX_USER_LEN+AUTH_MAX_PASS_LEN+2)*10];
    char userpass[AUTH_MAX_USER_LEN+AUTH_MAX_PASS_LEN+2];

    if (connData->conn==NULL) {
      //Connection aborted. Clean up.
      return HTTPD_CGI_DONE;
    }
    r=httpdGetHeader(connData, "Authorization", hdr, sizeof(hdr));
    if (r && strncmp(hdr, "Basic", 5)==0) {
      r=base64_decode(strlen(hdr)-6, hdr+6, sizeof(userpass), (unsigned char *)userpass);
      if (r<0) r=0; //just clean out string on decode error
      userpass[r]=0; //zero-terminate user:pass string
      if (authCheck(userpass)) {
        return HTTPD_CGI_AUTHENTICATED;
      }
    }

    //Not authenticated. Go bug user with login screen.
    httpdStartResponse(connData, 401);
    httpdHeader(connData, "Content-Type", "text/plain");
    httpdHeader(connData, "WWW-Authenticate", "Basic realm=\""HTTP_AUTH_REALM"\"");
    httpdEndHeaders(connData);
    httpdSend(connData, forbidden, -1);
    //Okay, all done.
    return HTTPD_CGI_DONE;
  } else {
    return HTTPD_CGI_AUTHENTICATED; //Always auth when security is disabled
  }
}

//(AuthGetUserPw)(connData->cgiArg)

