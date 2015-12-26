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

void ICACHE_FLASH_ATTR toggleOutput(uint32_t output)
{
  board_setOutput(output, !board_getOutput(output));
}

void ICACHE_FLASH_ATTR testpwm( void )
{
  #ifdef PWM_ENABLE
  //os_printf("Test button pressed!\n");
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
  #endif
}

#ifdef ENABLE_DIGITAL_SENSORS
void ICACHE_FLASH_ATTR sensor( uint8_t sensor )
{
  os_printf("Sensor %d got triggered!\n\r", sensor);
  userSettings_t* settings = settings_get_pointer();
  if (sensor>15) return; //Current settings struct allows for 16 sensors, 0-15.
  uint8_t action = settings->actSensor[sensor];
  switch(action) {
    case 0:
      //os_printf("Do nothing.\n\r");
      break;
    case 1:
      //os_printf("Output 1 on.\n\r");
      board_setOutput(OUTPUT1, true);
      break;
    case 2:
      //os_printf("Output 2 on.\n\r");
      board_setOutput(OUTPUT2, true);
      break;
    case 3:
      //os_printf("Output 3 on.\n\r");
      board_setOutput(OUTPUT3, true);
      break;
    case 4:
      //os_printf("Output 1 off.\n\r");
      board_setOutput(OUTPUT1, false);
      break;
    case 5:
      //os_printf("Output 2 off.\n\r");
      board_setOutput(OUTPUT2, false);
      break;
    case 6:
      //os_printf("Output 3 off.\n\r");
      board_setOutput(OUTPUT3, false);
      break;
    case 7:
      //os_printf("Output 1 toggle.\n\r");
      toggleOutput(OUTPUT1);
      break;
    case 8:
      //os_printf("Output 2 toggle.\n\r");
      toggleOutput(OUTPUT2);
      break;
    case 9:
      //os_printf("Output 3 toggle.\n\r");
      toggleOutput(OUTPUT3);
      break;
    case 10:
      //os_printf("Windowblinds: up\n\r");
      if (board_wbMode()==2) board_wbUp();
      break;
    case 11:
      //os_printf("Windowblinds: down\n\r");
      if (board_wbMode()==2) board_wbDown();
      break;
    case 12:
      //os_printf("Windowblinds: stop\n\r");
      board_wbStop();
      break;
    case 13:
      //os_printf("Windowblinds: toggle\n\r");
      if (board_wbState()) {
        board_wbDown();
      } else {
        board_wbUp();
      }
      break;
    case 14:
      //os_printf("Testpwm\n\r");
      testpwm();
      break;
    default:
      //os_printf("Unknown action: %d.\n\r", action);
      break;
  }
}
#endif

void ICACHE_FLASH_ATTR handleButtonInterrupt( uint8_t button )
{
  switch (button) {
    case 0: //Setup button
      wifiSetup();
      break;
    #ifdef ENABLE_DIGITAL_SENSORS
    case 1: //Sensor 1
    case 2: //Sensor 2
    case 3: //Sensor 3
    case 4: //Sensor 4
      sensor(button);
      break;
    #endif
    default:
      //os_printf("Unknown user-button: '%d'.\n", button);
      break;
  }
}
