/* File: rainbow.c
 * Description: Rainbow, fade and chaser effect generator
 * Author: Renze Nicolai
 * Date: 01-2016
 * License: MIT
 */
#include <user_interface.h>
#include <mem.h>
#include "driver/ws2801.h"
#include "driver/ws2812.h"
#include "driver/ws2812gpio.h"
#include "driver/pwm.h"

#ifdef RAINBOW //Only enable these functions when needed 
  os_timer_t rainbowTimer;
  #define RAINBOW_MODE_RAINBOW 0
  #define RAINBOW_MODE_CHASER 1
  #define RAINBOW_MODE_FADE 2
  uint8_t rainbowMode = 0;
  uint16_t rainbowLength = 0;
  uint8_t rainbowStep = 0;

  uint8_t colors[3] = {0,0,0};
  uint16_t rainbowCurrColor = 0;
  uint8_t rainbowCurrLed = 0;
  uint8_t rainbowPreviousLed = 2;
  uint8_t chaser_counter = 0;
  uint8_t chaser_state = 0;

  uint16_t rainbowInterface = 0;

  uint8_t rainbowBrightness = 0;

  void ICACHE_FLASH_ATTR rainbowTimerCb ( void *arg )
  {
   if (( rainbowMode == RAINBOW_MODE_RAINBOW)||( rainbowMode == RAINBOW_MODE_FADE)) {
     rainbowCurrColor+=rainbowStep;
      if(rainbowCurrColor > 255) {
        rainbowCurrLed++;
        rainbowCurrColor = 1;
        if(rainbowCurrLed == 3) {
          rainbowCurrLed = 0;
          rainbowPreviousLed = 2;
        } else {
          rainbowPreviousLed = rainbowCurrLed - 1;
        }
      }
      colors[rainbowPreviousLed] = 255 - rainbowCurrColor;
      colors[rainbowCurrLed] = rainbowCurrColor;
    }
    
    if ( rainbowMode == RAINBOW_MODE_CHASER ) {
      chaser_counter++;
      if (chaser_counter > rainbowLength) {
        chaser_counter = 0;
        //os_printf("Chaser (%d)\n", chaser_state);
        switch (chaser_state) {
          case 0:
            colors[0] = 255;
            colors[1] = 0;
            colors[2] = 0;
            break;
          case 1:
            colors[0] = 0;
            colors[1] = 255;
            colors[2] = 0;
            break;
          case 2:
            colors[0] = 0;
            colors[1] = 0;
            colors[2] = 255;
            break;
          case 3:
            colors[0] = 255;
            colors[1] = 255;
            colors[2] = 0;
            break;
          case 4:
            colors[0] = 255;
            colors[1] = 0;
            colors[2] = 255;
            break;
          case 5:
            colors[0] = 255;
            colors[1] = 255;
            colors[2] = 255;
            break;
          case 6:
            colors[0] = 0;
            colors[1] = 0;
            colors[2] = 0;
            break;
          default:
            chaser_state = 0;
        }
        chaser_state++;
        if (chaser_state>6) chaser_state = 0;
      }
    }
    uint8_t r = (uint8_t)(((uint16_t)colors[0]*rainbowBrightness)/100);
    uint8_t g = (uint8_t)(((uint16_t)colors[1]*rainbowBrightness)/100);
    uint8_t b = (uint8_t)(((uint16_t)colors[2]*rainbowBrightness)/100);
    #ifdef PWM
      if (rainbowInterface&(1 << 0)) pwm_set_all(r,g,b);
    #endif
    #ifdef WS2801
      if (rainbowInterface&(1 << 1)) {
        if (rainbowMode == RAINBOW_MODE_FADE) {
          ws2801_set_all(r,g,b);
        } else {
          ws2801_push(r,g,b);
        }
        ws2801_send(false);
      }
    #endif
    #if defined(WS2812) || defined(WS2812GPIO)
      if (rainbowInterface&(1 << 2)) {
        if (rainbowMode == RAINBOW_MODE_FADE) {
          ws2812_set_all(r,g,b);
        } else {
          ws2812_push(r,g,b);
        }
        ws2812_send(false);
      }
    #endif
  }

  bool ICACHE_FLASH_ATTR rainbow_init( void )
  {
    os_memset(&rainbowTimer,0,sizeof(os_timer_t));
    os_timer_disarm(&rainbowTimer);
    os_timer_setfn(&rainbowTimer, (os_timer_func_t *)rainbowTimerCb, NULL);
    return true;
  }

  void ICACHE_FLASH_ATTR rainbow_start( uint8_t mode, uint16_t length, uint8_t step, uint32_t time, uint16_t interface, uint8_t brightness )
  {
    rainbowMode = mode;
    rainbowLength = length;
    rainbowStep = step;
    rainbowInterface = interface;
    rainbowBrightness = brightness;
    os_timer_arm(&rainbowTimer, time, true);
  }

  void ICACHE_FLASH_ATTR rainbow_stop( void )
  {
    os_timer_disarm(&rainbowTimer);
  } 
#endif
