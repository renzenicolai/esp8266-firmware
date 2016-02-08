#include <esp8266.h>

uint32_t GPIOstate = 0;
bool GPIO16state = 0;
uint32_t MCPstate = 0;

/* Digital outputs */

void ICACHE_FLASH_ATTR digitalOutput_init( void )
{
  GPIOstate = 0;
  GPIO16state = false;

  uint32_t output_pins = 0;

 #if OUTPUT1 == 2 || OUTPUT2 == 2 || OUTPUT3 == 2 || OUTPUT4 == 2 || OUTPUT5 == 2 || OUTPUT6 == 2 || OUTPUT7 == 2 || OUTPUT8 == 2
    PIN_FUNC_SELECT(PERIPHS_IO_MUX_GPIO2_U, FUNC_GPIO2);
    PIN_PULLUP_DIS(PERIPHS_IO_MUX_GPIO2_U);
    output_pins |= (1<<2);
  #endif
  #if OUTPUT1 == 4 || OUTPUT2 == 4 || OUTPUT3 == 4 || OUTPUT4 == 4 || OUTPUT5 == 4 || OUTPUT6 == 4 || OUTPUT7 == 4 || OUTPUT8 == 4
    PIN_FUNC_SELECT(PERIPHS_IO_MUX_GPIO4_U, FUNC_GPIO4);
    PIN_PULLUP_DIS(PERIPHS_IO_MUX_GPIO4_U);
    output_pins |= (1<<4);
  #endif
  #if OUTPUT1 == 5 || OUTPUT2 == 5 || OUTPUT3 == 5 || OUTPUT4 == 5 || OUTPUT5 == 5 || OUTPUT6 == 5 || OUTPUT7 == 5 || OUTPUT8 == 5
    PIN_FUNC_SELECT(PERIPHS_IO_MUX_GPIO5_U, FUNC_GPIO5);
    PIN_PULLUP_DIS(PERIPHS_IO_MUX_GPIO5_U);
    output_pins |= (1<<5);
  #endif
  #if OUTPUT1 == 12 || OUTPUT2 == 12 || OUTPUT3 == 12 || OUTPUT4 == 12 || OUTPUT5 == 12 || OUTPUT6 == 12 || OUTPUT7 == 12 || OUTPUT8 == 12
    PIN_FUNC_SELECT(PERIPHS_IO_MUX_MTDI_U, FUNC_GPIO12);
    PIN_PULLUP_DIS(PERIPHS_IO_MUX_MTDI_U);
    output_pins |= (1<<12);
  #endif
  #if OUTPUT1 == 13 || OUTPUT2 == 13 || OUTPUT3 == 13 || OUTPUT4 == 13 || OUTPUT5 == 13 || OUTPUT6 == 13 || OUTPUT7 == 13 || OUTPUT8 == 13
    PIN_FUNC_SELECT(PERIPHS_IO_MUX_MTCK_U, FUNC_GPIO13);
    PIN_PULLUP_DIS(PERIPHS_IO_MUX_MTCK_U);
    output_pins |= (1<<13);
  #endif
  #if OUTPUT1 == 14 || OUTPUT2 == 14 || OUTPUT3 == 14 || OUTPUT4 == 14 || OUTPUT5 == 14 || OUTPUT6 == 14 || OUTPUT7 == 14 || OUTPUT8 == 14
    PIN_FUNC_SELECT(PERIPHS_IO_MUX_MTMS_U, FUNC_GPIO14);
    PIN_PULLUP_DIS(PERIPHS_IO_MUX_MTMS_U);
    output_pins |= (1<<14);
  #endif
  #if OUTPUT1 == 15 || OUTPUT2 == 15 || OUTPUT3 == 15 || OUTPUT4 == 15 || OUTPUT5 == 15 || OUTPUT6 == 15 || OUTPUT7 == 15 || OUTPUT8 == 15
    PIN_FUNC_SELECT(PERIPHS_IO_MUX_MTDO_U, FUNC_GPIO15);
    PIN_PULLUP_DIS(PERIPHS_IO_MUX_MTDO_U);
    output_pins |= (1<<15);
  #endif
  #if OUTPUT1 == 16 || OUTPUT2 == 16 || OUTPUT3 == 16 || OUTPUT4 == 16 || OUTPUT5 == 16 || OUTPUT6 == 16 || OUTPUT7 == 16 || OUTPUT8 == 16
    gpio16_output_conf();
    gpio16_output_set(0);
  #endif
  gpio_output_set(0, output_pin, output_pins, 0); //Init low

  #ifdef I2C_MCP
    //Fix shit.
  #endif
}

int digitalOutput_getRealPin( uint8_t pin )
{
  switch (pin) {
    case 1: return OUTPUT1; break;
    case 2: return OUTPUT2; break;
    case 3: return OUTPUT3; break;
    case 4: return OUTPUT4; break;
    case 5: return OUTPUT5; break;
    case 6: return OUTPUT6; break;
    case 7: return OUTPUT7; break;
    case 8: return OUTPUT8; break;
    case 9: return OUTPUT9; break;
    case 10: return OUTPUT10; break;
    case 11: return OUTPUT11; break;
    case 12: return OUTPUT12; break;
    case 13: return OUTPUT13; break;
    case 14: return OUTPUT14; break;
    case 15: return OUTPUT15; break;
    case 16: return OUTPUT16; break;
    default: return -1; break;
  }
  return -1;
}

bool digitalOutput_set( uint8_t pin, bool state )
{
  int realpin = digitalOutput_getRealPin( pin );

  if (realpin < 0) { // realpin is -1 when invalid.
    return false;
  } else if (realpin < 16) { //GPIO 0-15
    if (state) {
      GPIOstate |= (1<<realpin);
    } else {
      GPIOstate &= ~(1<<realpin);
    }
    gpio_output_set(outputState, ~outputState, 0, 0);
    return true;
  } else if (realpin == 16) { //GPIO 16
    GPIO16state = state;
    gpio16_output_set(state);
    return true;
  }
  #ifdef I2C_MCP
    else if ((realpin >= 90) && (realpin<97)) //MCP i/o expander
    {
      MCP23008_setOutput(realpin-90, state);
      if (state) {
        MCPstate |= (1<<(realpin-90));
      } else {
        MCPstate &= ~(1<<(realpin-90));
      }
      return true;
    }
  #endif

  return false; //If this point is reached the value set to constant OUTPUTx is invalid.
}

bool ICACHE_FLASH_ATTR digitalOutput_get( uint8_t pin )
{
  int realpin = digitalOutput_getRealPin(pin);

  if (realpin<0) { //Invalid pin
    return false;
  } else if (realpin < 16) { //GPIO 0-15
    return ((outputState&(1<<output))>>output)&0x01;
  } else if (realpin==16) { //GPIO 16
    return GPIO16status;
  }
  #ifdef I2C_MCP
    else if ((output >= 90) && (output<94)) { //MCP i/o expander
      return ((MCPoutputState&(1<<(output-90)))>>(output-90))&0x01;
    }
  #endif
  return false;
}

void ICACHE_FLASH_ATTR digitalOutput_applyBootstate( userSettings_t *settings )
{       
  uint8_t c = 0;
  for (c = 0; c<9; c++) {
  bool state = (settings->bootstate&(1<<c)>>c)&0x01;
  bool result = digitalOutput_set(c, state);
  os_printf("Set pin %d to %d: %d.\n", c, state, result);
  }
}
