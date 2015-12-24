/* 
 * File: user_io.c
 * Description: Handles physicial buttons
 * License: MIT license
 * Author: Renze Nicolai
 * Date: 17-10-2015
 */

#include <esp8266.h>
#include "spi_flash.h"
#include "user_io.h"

void ICACHE_FLASH_ATTR handleButtonInterrupt( uint8_t button )
{
  switch (button) {
    case 0: //Setup button
      wifiSetup();
      break;
    case 1: //Sensor 
      #ifdef PWM_ENABLE
      os_printf("Test button pressed!\n");
      if (getPWM_R()||getPWM_G()||getPWM_B()) {
        if ((getPWM_R()&&getPWM_G())||(getPWM_G()&&getPWM_B())||(getPWM_R()&&getPWM_B())) {
          os_printf("-> PWM OFF\n");
          setPWM(0,0,0);
        } else {
          if (getPWM_R()>0) {
            os_printf("-> PWM GREEN\n");
            setPWM(0,255,0);
          } else {
            if (getPWM_G()>0) {
              os_printf("-> PWM BLUE\n");
              setPWM(0,0,255);
            } else {
              if (getPWM_B()>0) {
                os_printf("-> PWM OFF\n");
                setPWM(0,0,0);
              }
            }
          }
        }
      } else {
        os_printf("-> PWM RED\n");
        setPWM(255,0,0);
      }
      #else
        os_printf("Sensor 1 got triggered!\n");
        //board_setOutput(OUTPUT1, !board_getOutput(OUTPUT1));
      #endif
      break;
    case 2: //Sensor 2
      os_printf("Sensor 2 got triggered!\n");
      //board_setOutput(OUTPUT2, !board_getOutput(OUTPUT2));
      break;
    case 3: //Sensor 3
      os_printf("Sensor 3 got triggered!\n");
      //board_setOutput(OUTPUT3, !board_getOutput(OUTPUT3));
      break;
    case 4: //Sensor 4
      os_printf("Sensor 4 got triggered!\n");
      break;
    default:
      os_printf("Unknown user-button: '%d'.\n", button);
      break;
  }
}
