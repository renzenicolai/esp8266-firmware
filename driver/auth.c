/*
HTTP auth implementation. Only does basic authentication for now.
*/

/*
 * ----------------------------------------------------------------------------
 * "THE BEER-WARE LICENSE" (Revision 42):
 * Jeroen Domburg <jeroen@spritesmods.com> wrote this file. As long as you retain 
 * this notice you can do whatever you want with this stuff. If we meet some day, 
 * and you think this stuff is worth it, you can buy me a beer in return. 
 * ----------------------------------------------------------------------------
 */


#include <esp8266.h>

/* int ICACHE_FLASH_ATTR authBasic(HttpdConnData *connData) {
  const char *forbidden="401 Forbidden.";
  int no=0;
  int r;
  char hdr[(AUTH_MAX_USER_LEN+AUTH_MAX_PASS_LEN+2)*10];
  char userpass[AUTH_MAX_USER_LEN+AUTH_MAX_PASS_LEN+2];
  char user[AUTH_MAX_USER_LEN];
  char pass[AUTH_MAX_PASS_LEN];
  if (connData->conn==NULL) {
    //Connection aborted. Clean up.
    return HTTPD_CGI_DONE;
  }

  r=httpdGetHeader(connData, "Authorization", hdr, sizeof(hdr));
  if (r && strncmp(hdr, "Basic", 5)==0) {
    r=base64_decode(strlen(hdr)-6, hdr+6, sizeof(userpass), (unsigned char *)userpass);
    if (r<0) r=0; //just clean out string on decode error
    userpass[r]=0; //zero-terminate user:pass string
//    os_printf("Auth: %s\n", userpass);
    while (((AuthGetUserPw)(connData->cgiArg))(connData, no,
        user, AUTH_MAX_USER_LEN, pass, AUTH_MAX_PASS_LEN)) {
      //Check user/pass against auth header
      if (strlen(userpass)==strlen(user)+strlen(pass)+1 &&
          os_strncmp(userpass, user, strlen(user))==0 &&
          userpass[strlen(user)]==':' &&
          os_strcmp(userpass+strlen(user)+1, pass)==0) {
        //Authenticated. Yay!
        return HTTPD_CGI_AUTHENTICATED;
      }
      no++; //Not authenticated with this user/pass. Check next user/pass combo.
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
}
*/

bool authEnabled( void )
{
  return true; //Change to use usersettings
}

bool authCheck( char* userpass )
{
  char user[AUTH_MAX_USER_LEN];
  char pass[AUTH_MAX_PASS_LEN];
  
  os_memcpy( &user, "user", AUTH_MAX_USER_LEN );  //change to use usersettings
  os_memcpy( &pass, "pass", AUTH_MAX_PASS_LEN );
  
  os_printf("Auth: %s\n", userpass);
  os_printf("(Correct auth: %s:%s)\n", user, pass);
  
  if (strlen(userpass)==strlen(user)+strlen(pass)+1) {
    os_printf("Auth: Pass 1\n\r");
    if (os_strncmp(userpass, user, strlen(user))==0) {
      os_printf("Auth: Pass 2\n\r");
      if (userpass[strlen(user)]==':'){
        os_printf("Auth: Pass 3\n\r");
        if (os_strcmp(userpass+strlen(user)+1, pass)==0) {
          os_printf("Auth: Pass 4\n\r");
          return true;
        }
      }
    }
  }
  return false;
}

int ICACHE_FLASH_ATTR authBasicRn(HttpdConnData *connData)
{
  if (authEnabled()) {
    os_printf("AuthBasicRn(): authentication is enabled!\n\r");
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
      
      os_printf("AuthBasicRn(): user tries to authenticate using '%s'\n\r", userpass);
      if (authCheck(userpass)) {
        os_printf("AuthBasicRn(): user is now authenticated\n\r", userpass);
        return HTTPD_CGI_AUTHENTICATED;
      } else {
        os_printf("AuthBasicRn(): user supplied wrong info, access denied.\n\r", userpass);
      }
    }

    os_printf("AuthBasicRn(): sending login screen to client\n\r", userpass);
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


