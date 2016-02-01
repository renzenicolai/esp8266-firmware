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

#ifdef PWM
void ICACHE_FLASH_ATTR testpwm( void )
{
  if (pwm_get(0)||pwm_get(1)||pwm_get(2)) {
    if ((pwm_get(0)&&pwm_get(1))||(pwm_get(1)&&pwm_get(2))||(pwm_get(0)&&pwm_get(2))) {
      pwm_set(0,0,0);
    } else {
      if (pwm_get(0)>0) {
        pwm_set(0,255,0);
      } else {
        if (pwm_get(1)>0) {
          pwm_set(0,0,255);
        } else {
          if (pwm_get(2)>0) {
            pwm_set(0,0,0);
          }
        }
      }
    }
  } else {
    pwm_set(255,0,0);
  }

}
#endif

void ICACHE_FLASH_ATTR sensorActionCb(char * response, int http_status, char * full_response)
{
  uint8_t tx_buf[128]={0};
  if (http_status==200) {
    os_sprintf(tx_buf, "Sensor action HTTP request success! Response: '%s'.\r\n", response);
  } else {
    os_sprintf(tx_buf, "Sensor action HTTP request failed. Status code: %d.\r\n", http_status);
  }
  tx_buff_enq(tx_buf, os_strlen(tx_buf));
}

#ifdef ENABLE_DIGITAL_SENSORS
void ICACHE_FLASH_ATTR sensor( uint8_t sensor )
{
  os_printf("SENSOR %d!\r\n", sensor);
  userSettings_t* settings = settings_get_pointer();
  if (sensor>15) return; //Current settings struct allows for 16 sensors, 0-15.
  uint8_t action = settings->actSensor[sensor];
  switch(action) {
    case 0:
      //os_printf("Do nothing.\r\n");
      break;
    case 1:
      //os_printf("Output 1 on.\r\n");
      board_setOutput(OUTPUT1, true);
      break;
    case 2:
      //os_printf("Output 2 on.\r\n");
      board_setOutput(OUTPUT2, true);
      break;
    case 3:
      //os_printf("Output 3 on.\r\n");
      board_setOutput(OUTPUT3, true);
      break;
    case 4:
      //os_printf("Output 1 off.\r\n");
      board_setOutput(OUTPUT1, false);
      break;
    case 5:
      //os_printf("Output 2 off.\r\n");
      board_setOutput(OUTPUT2, false);
      break;
    case 6:
      //os_printf("Output 3 off.\r\n");
      board_setOutput(OUTPUT3, false);
      break;
    case 7:
      //os_printf("Output 1 toggle.\r\n");
      toggleOutput(OUTPUT1);
      break;
    case 8:
      //os_printf("Output 2 toggle.\r\n");
      toggleOutput(OUTPUT2);
      break;
    case 9:
      //os_printf("Output 3 toggle.\r\n");
      toggleOutput(OUTPUT3);
      break;
    case 10:
      //os_printf("Windowblinds: up\r\n");
      if (board_wbMode()==2) board_wbUp();
      break;
    case 11:
      //os_printf("Windowblinds: down\r\n");
      if (board_wbMode()==2) board_wbDown();
      break;
    case 12:
      //os_printf("Windowblinds: stop\r\n");
      board_wbStop();
      break;
    case 13:
      //os_printf("Windowblinds: toggle\r\n");
      if (board_wbState()) {
        board_wbDown();
      } else {
        board_wbUp();
      }
      break;
    case 14:
      if (sensor<4) { http_get( settings->sensorActionUrl[sensor], "", sensorActionCb ); } else { os_printf("I'm sorry Dave, I'm afraid I can't do that.\r\n"); }
      break;
    #ifdef PWM
    case 15:
      //os_printf("Testpwm\r\n");
      testpwm();
      break;
    #endif
    default:
      //os_printf("Unknown action: %d.\r\n", action);
      break;
  }
}
#endif

void ICACHE_FLASH_ATTR handleButtonInterrupt( uint8_t button )
{
  switch (button) {
    case 0: //Setup button
      os_printf("USER BUTTON PRESSED!!!!!");
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
