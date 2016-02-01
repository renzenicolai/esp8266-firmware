#include <lwip/udp.h>
#include "user_settings.h"
#include "driver/ws2801.h"
#include "driver/ws2812.h"
#include "driver/ws2812gpio.h"
#include "board.h"
#include "util/checkstring.h"
#include "rainbow.h"

#ifdef ESPLIGHT
  #define ESPLIGHT_PORT 1337
  #define BUFFER_SIZE 257

  struct udp_pcb * esplightPcb;
  
  void ICACHE_FLASH_ATTR sendpacket(char* data, struct udp_pcb *pcb, ip_addr_t *addr, u16_t port) {
    struct pbuf *answerp = pbuf_alloc(PBUF_TRANSPORT,strlen(data),PBUF_RAM);
    os_memcpy(answerp->payload, data, strlen(data));
    err_t err = udp_sendto(pcb, answerp, addr, port);
    pbuf_free(answerp);
  }
  
  uint16_t pin = 0;
  uint8_t effect = 0;
  uint8_t brightness = 0;
  uint8_t var0 = 0;
  uint8_t var1 = 0;
  uint8_t var2 = 0;
  uint16_t pixel = 0;
  bool autoupdate = true;
  uint16_t interface = 0xFFFF; //All interfaces
  uint8_t step = 1;
  
  void ICACHE_FLASH_ATTR handle(char* cmd, char* val) {
    //os_printf("'%s' => '%s'\r\n", cmd, val);
    if (os_strcmp(cmd, "pin")==0) {
      pin = atoi(val);
    } else if (os_strcmp(cmd, "effect")==0) {
      effect = atoi(val);
    } else if (os_strcmp(cmd, "brightness")==0) {
      brightness = atoi(val);
    } else if (os_strcmp(cmd, "var0")==0) {
      var0 = atoi(val);
    } else if (os_strcmp(cmd, "var1")==0) {
      var1 = atoi(val);
    } else if (os_strcmp(cmd, "var2")==0) {
      var2 = atoi(val);
    } else if (os_strcmp(cmd, "interface")==0) {
      interface = atoi(val);
    } else if (os_strcmp(cmd, "pixel")==0) {
      pixel = atoi(val);
    } else if (os_strcmp(cmd, "step")==0) {
      step = atoi(val);
    } else if (os_strcmp(cmd, "autoupdate")==0) {
      if(atoi(val)) { autoupdate = true; } else { autoupdate = false; };
    } else {
      os_printf("ESPLIGHT_UNKNOWN_PARAM: '%s'\r\n", cmd);
    }
  }
  
  void ICACHE_FLASH_ATTR apply( void ) {
    //os_printf("ESPLIGHT_DEBUG: %d, %d, %d, %d, %d, %d.\r\n", pin, effect, brightness, var0, var1, var2);
    switch (effect) {
      case 0: //RGB colours
        {
          rainbow_stop();
          uint8_t r = (uint8_t)(((uint16_t)var0*brightness)/100);
          uint8_t g = (uint8_t)(((uint16_t)var1*brightness)/100);
          uint8_t b = (uint8_t)(((uint16_t)var2*brightness)/100);
          #ifdef PWM
            if (interface&(1 << 0)) pwm_set_all(r, g, b);
          #endif
          #ifdef WS2801
            if (interface&(1 << 1)) {
              ws2801_set_all(r, g, b);
              if (autoupdate) ws2801_send(false);
            }
          #endif
          #if defined(WS2812) || defined(WS2812GPIO)
            if (interface&(1 << 2)) {
              ws2812_set_all(r, g, b);
              if (autoupdate) ws2812_send(false);
            }
          #endif
        }
        break;
      case 1: //Fading effect
        {
          os_printf("FADING\r\n");
          uint32_t delay = 1+((uint32_t)var0*20)/255;
          os_printf("Delay: %d\r\n", delay);
          rainbow_start( 2, 10, step, delay, interface, brightness );
        }
        break;
      case 2: //Digital fading
        {
          os_printf("RAINBOW\r\n");
          uint32_t delay = 1+((uint32_t)var0*20)/255;
          os_printf("Delay: %d\r\n", delay);
          rainbow_start( 0, 10, step, delay, interface, brightness );
        }
        break;
      case 3: //RN: Push pixels
        {
          rainbow_stop();
          uint8_t r = (uint8_t)(((uint16_t)var0*brightness)/100);
          uint8_t g = (uint8_t)(((uint16_t)var1*brightness)/100);
          uint8_t b = (uint8_t)(((uint16_t)var2*brightness)/100);
          #ifdef PWM
            if (interface&(1 << 0)) pwm_set_all(r, g, b);
          #endif
          #ifdef WS2801
            if (interface&(1 << 1)) {
              ws2801_push(r, g, b);
              if (autoupdate) ws2801_send(false);
            }
          #endif
          #if defined(WS2812) || defined(WS2812GPIO)
            if (interface&(1 << 2)) {
              ws2812_push(r, g, b);
              if (autoupdate) ws2812_send(false);
            }
          #endif
        }
        break;
      case 4: //RN: Set pixel
        {
          rainbow_stop();
          uint8_t r = (uint8_t)(((uint16_t)var0*brightness)/100);
          uint8_t g = (uint8_t)(((uint16_t)var1*brightness)/100);
          uint8_t b = (uint8_t)(((uint16_t)var2*brightness)/100);
          #ifdef PWM
            if (interface&(1 << 0)) pwm_set_all(r, g, b);
          #endif
          #ifdef WS2801
            if (interface&(1 << 1)) {
              ws2801_set(pixel, r, g, b);
              if (autoupdate) ws2801_send(false);
            }
          #endif
          #if defined(WS2812) || defined(WS2812GPIO)
            if (interface&(1 << 2)) {
              ws2812_set(pixel, r, g, b);
              if (autoupdate) ws2812_send(false);
            }
          #endif
        }
        break;
      case 5: //RN: Update output
        {
          rainbow_stop();
          #ifdef WS2801
            if (interface&(1 << 1)) {
              ws2801_send(false);
            }
          #endif
          #if defined(WS2812) || defined(WS2812GPIO)
            if (interface&(1 << 2)) {
              ws2812_send(false);
            }
          #endif
        }
        break;
      default:
        os_printf("ESPLIGHT: Unknown effect.\r\n");
        break;
    }
    //os_printf("ESPLIGHT_APPLY_OK\r\n");
  }

  void ICACHE_FLASH_ATTR esplightUdpHandleRecv(void *arg, struct udp_pcb *pcb, struct pbuf *p,  ip_addr_t *addr, u16_t port) {
    //Receive... 
    if (p==NULL) return;   
    int length = p->len;
    char * pusrdata = p->payload;
    char request[BUFFER_SIZE] = {0};
    strncpy(request, pusrdata, BUFFER_SIZE-1);
    pbuf_free(p);
    //os_printf("Esplight: '%s'\r\n", request);
    if (os_strcmp(request, "EspFind")==0) {
      userSettings_t* settings = settings_get_pointer();
      sendpacket(settings->name, pcb, addr, port);
    } else if (os_strcmp(request, "*ESP_ID")==0) {
      userSettings_t* settings = settings_get_pointer();
      char answer[1024] = {0};
      char amounts[256] = {0};
      uint16_t interfaces = 0;
      #ifdef PWM
        interfaces |= 1 << 0;
        os_sprintf(amounts, "0:1");
      #endif
      #ifdef WS2801
        if (settings->ws2801Enabled) interfaces |= 1 << 1;
        #ifdef PWM
          os_sprintf(amounts, "%s,1:%d", amounts, settings->ws2801Length);
        #else
          os_sprintf(amounts, "1:%d", amounts, settings->ws2801Length);
        #endif
      #endif
      #if defined(WS2812) || defined(WS2812GPIO)
        if (settings->ws2812Enabled) interfaces |= 1 << 2;
        #if defined(PWM) || defined(WS2801)
          os_sprintf(amounts, "%s,2:%d", amounts, settings->ws2812Length);
        #else
          os_sprintf(amounts, "2:%d", amounts, settings->ws2812Length);
        #endif
      #endif
      os_sprintf(answer, "{%s,%d,%d,%s,%d,[%s]}", DEVICE_NAME, FIRMWARE_VERSION, DEVICE_TYPE, settings->name,interfaces, amounts);
      sendpacket(answer, pcb, addr, port);
    } else {
      char answer[BUFFER_SIZE] = {0};
      if (request[0]=='?') {
        os_sprintf(answer, "ESPLIGHT_E0");
        uint16_t pos;
        if (strlen(request)>1) {
          char item[BUFFER_SIZE] = {0};
          char cmd[BUFFER_SIZE] = {0};
          char val[BUFFER_SIZE] = {0};
          char * pch;
          bool isval = false;
          pch = strtok(request+1,"=");
          while (pch != NULL)
          {
            if (isval) {
              os_strcpy(val, pch);
              handle(cmd, val);
              isval = false;
              pch = strtok (NULL, "=");
            } else {
              os_strcpy(cmd, pch);
              isval = true;
              pch = strtok (NULL, "&");
            }
          }
          apply();
          os_sprintf(answer, "OK");
        } else { os_sprintf(answer, "ESPLIGHT_E1"); }
      } else {
        os_sprintf(answer, "ESPLIGHT_E2");
      }
      sendpacket(answer, pcb, addr, port);
    }
  }

  bool ICACHE_FLASH_ATTR initEsplightUdp() {
    if(esplightPcb) return false;
    esplightPcb = udp_new();
    if(!esplightPcb) return false;
    struct ip_addr ipSend;
    IP4_ADDR(&ipSend, 255, 255, 255, 255);
    esplightPcb->multicast_ip = ipSend;
    esplightPcb->remote_ip = ipSend;
    esplightPcb->remote_port = 1337;
    err_t err;
    err = udp_bind(esplightPcb, IP_ADDR_ANY, ESPLIGHT_PORT);
    if(err != ERR_OK) return false;
    udp_recv(esplightPcb, esplightUdpHandleRecv, esplightPcb);
    return true;
  }

  void ICACHE_FLASH_ATTR esplight_stop() {
    if(!esplightPcb) return;
    udp_disconnect(esplightPcb);
    udp_remove(esplightPcb);
  }
  
#endif


/*
  void ICACHE_FLASH_ATTR esplightUdpHandleRecv(void *arg, struct udp_pcb *pcb, struct pbuf *p,  ip_addr_t *addr, u16_t port) {
    //Receive...
    int length = p->len;
    char * pusrdata = p->payload;
    os_printf("ESPLIGHT: '%s'\r\n", pusrdata);
    pbuf_free(p);
    //And answer...
    char answer[128] = {0};
    os_sprintf(answer, "Hello!");
    struct pbuf *answerp = pbuf_alloc(PBUF_TRANSPORT,strlen(answer),PBUF_RAM);
    os_memcpy(answerp->payload, answer, strlen(answer));
    err_t err = udp_sendto(pcb, answerp, addr, port);
  }
*/
