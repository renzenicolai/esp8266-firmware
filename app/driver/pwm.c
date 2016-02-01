/* File: pwm.c
 * Description: PWM driver
 * Author: Renze Nicolai
 * Date: 01-2016
 * License: MIT
 */
  
#include <user_interface.h>
#include <mem.h>
#include "driver/hw_timer.h"
#include "driver/pwm.h"

#ifdef PWM //Only enable these functions when needed 
  uint8_t pwmValue[5] = {0};
  bool pwmState[5] = {0};
  uint8_t pwmCounter = 0;

  void pwmCb( void )
  {
    //if (pwmCounter>255) pwmCounter = 0; 
    uint32_t off = 0;
    uint32_t on = 0;    
    uint8_t c = 0;
    #ifdef PWMW
      #define PWMCOUNTTO 4
    #else
      #define PWMCOUNTTO 3
    #endif
    for (c = 0; c<PWMCOUNTTO; c++) {
      if ((pwmValue[c]<255)&&(pwmValue[c]<pwmCounter)&&(pwmState[c])) {
        if (c==0) off += (1<<PWMR);
        if (c==1) off += (1<<PWMG);
        if (c==2) off += (1<<PWMB);
        #ifdef PWMW 
          if (c==3) off += (1<<PWMW);
        #endif
        pwmState[c] = false;
      }
    }
    if (pwmCounter==0) {
      if (pwmValue[0]>0) on += (1<<PWMR);
      pwmState[0] = true;
      if (pwmValue[1]>0) on += (1<<PWMG);
      pwmState[1] = true;
      if (pwmValue[2]>0) on += (1<<PWMB);
      pwmState[2] = true;
      #ifdef PWMW
        if (pwmValue[3]>0) on += (1<<PWMW);
        pwmState[3] = true;
      #endif
    }
    if ((on>0)||(off>0)) gpio_output_set(on, off, 0, 0);
    pwmCounter++;
  }

  bool ICACHE_FLASH_ATTR pwm_init(uint8_t r, uint8_t g, uint8_t b)
  {
    #ifdef PWMW
      gpio_output_set(0, (1<<PWMR)+(1<<PWMG)+(1<<PWMB)+(1<<PWMW), (1<<PWMR)+(1<<PWMG)+(1<<PWMB)+(1<<PWMW), 0); //Set to output, low
    #else
      gpio_output_set(0, (1<<PWMR)+(1<<PWMG)+(1<<PWMB), (1<<PWMR)+(1<<PWMG)+(1<<PWMB), 0); //Set to output, low
    #endif
    //os_printf("PWM STARTED (Pins %d, %d and %d. Gives: %x)\r\n",PWMR, PWMG, PWMB,(1<<PWMR)+(1<<PWMG)+(1<<PWMB));
    pwmValue[0] = r;
    pwmValue[1] = g;
    pwmValue[2] = b;
    #ifdef PWMW
      uint8_t w = 0;
      uint8_t tr = r;
      uint8_t tg = g;
      uint8_t tb = b;
      while ((tr>0)&&(tg>0)&&(tb>0)) {
        tr--;
        tg--;
        tb--;
        w++;
      }
      pwmValue[3] = w;
      pwmValue[0] = tr;
      pwmValue[1] = tg;
      pwmValue[2] = tb;
    #endif
    hw_timer_init(FRC1_SOURCE, 1);
    hw_timer_set_func( pwmCb );
    hw_timer_arm(50);
    return true;
  }

  void ICACHE_FLASH_ATTR pwm_stop( void )
  {
    pwmValue[0] = 0;
    pwmValue[1] = 0;
    pwmValue[2] = 0;
    #ifdef PWMW
      pwmValue[3] = 0;
    #endif
    RTC_CLR_REG_MASK(FRC1_CTRL_ADDRESS, FRC1_ENABLE_TIMER); //Clear FRC1_ENABLE bit to stop hw_timer.
    gpio_output_set(0, (1<<PWMR)+(1<<PWMG)+(1<<PWMB), (1<<PWMR)+(1<<PWMG)+(1<<PWMB), 0); //Set to output, low
  }

  void ICACHE_FLASH_ATTR pwm_set( uint16_t pixel, uint8_t r, uint8_t g, uint8_t b)
  {
    pwmValue[0] = r;
    pwmValue[1] = g;
    pwmValue[2] = b;
    #ifdef PWMW
      uint8_t w = 0;
      uint8_t tr = r;
      uint8_t tg = g;
      uint8_t tb = b;
      while ((tr>0)&&(tg>0)&&(tb>0)) {
        tr--;
        tg--;
        tb--;
        w++;
      }
      pwmValue[3] = w;
      pwmValue[0] = tr;
      pwmValue[1] = tg;
      pwmValue[2] = tb;
      os_printf("PWM: %d, %d, %d, %d\r\n", tr, tg, tb, w);
    #endif
  }
  
  uint8_t ICACHE_FLASH_ATTR pwm_get( uint8_t color )
  {
    if (color<3) return pwmValue[color];
    return 0;
  }

  void ICACHE_FLASH_ATTR pwm_set_all(uint8_t r, uint8_t g, uint8_t b)
  {
    pwm_set(0,r,g,b);
  }  
#endif
