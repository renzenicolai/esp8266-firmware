#include <esp8266.h>
#include "driver/spi.h"

/* SENSORS */

os_timer_t sensorUpdateTimer;
os_timer_t sensorTimeoutTimer;

int32_t pressure = -200;
int32_t temperature = -200;
bool accelerometer_found = false;
float acceleration_x = 0;
float acceleration_y = 0;
float acceleration_z = 0;
char acceleration_x_string[6] = {0};
char acceleration_y_string[6] = {0};
char acceleration_z_string[6] = {0};

uint8_t *ws2812_buffer;
uint16_t ws2812_amount_of_leds;

static void ICACHE_FLASH_ATTR sensorUpdateTimerCb ( void *arg )
{
  board_checkAllInputs();
  #ifdef I2C_BMP180
    pressure = BMP180_GetVal(GET_BMP_REAL_PRESSURE);
    temperature = BMP180_GetVal(GET_BMP_TEMPERATURE);
    os_printf("BMP180: p=%d, t=%d\r\n", pressure, temperature);
  #endif
  #ifdef I2C_MMA8451
    if (accelerometer_found) {
      MMA8451_read();
      acceleration_x = MMA8451_gx();
      acceleration_y = MMA8451_gy();
      acceleration_z = MMA8451_gz();
      os_memcpy(acceleration_x_string, ftoa(acceleration_x, 2), 5);
      os_memcpy(acceleration_y_string, ftoa(acceleration_y, 2), 5);
      os_memcpy(acceleration_z_string, ftoa(acceleration_z, 2), 5);
      os_printf("MMA8451: x=%s, y=%s, z=%s\r\n", acceleration_x_string, acceleration_y_string, acceleration_z_string);
    }
  #endif
}

int32_t ICACHE_FLASH_ATTR board_sensorGetAirPressure ( void )
{
  return pressure;
}

int32_t ICACHE_FLASH_ATTR board_sensorGetTemperature ( void )
{
  return temperature;
}

/* INITIALIZATION */

void ICACHE_FLASH_ATTR board_init1( void )
{
  uint32 output_pins = 0;
  uint32 output_init_low = 0;
  uint32 output_init_high = 0;
  uint32 input_pins = 0;

  //Input pins
  #if BUTTON1 == 0 || BUTTON2 == 0 || BUTTON3 == 0 || BUTTON4 == 0 || BUTTON5 == 0 || BUTTON6 == 0 || BUTTON7 == 0 || BUTTON8 == 0 || I2C_MCP_INT == 0
    PIN_FUNC_SELECT(PERIPHS_IO_MUX_GPIO0_U, FUNC_GPIO0);
    #ifdef PULLUP_ENABLE_0
      PIN_PULLUP_EN(PERIPHS_IO_MUX_GPIO0_U);
    #else
      PIN_PULLUP_DIS(PERIPHS_IO_MUX_GPIO0_U);
    #endif
    input_pins |= (1<<0);
  #endif
  #if BUTTON1 == 2 || BUTTON2 == 2 || BUTTON3 == 2 || BUTTON4 == 2 || BUTTON5 == 2 || BUTTON6 == 2 || BUTTON7 == 2 || BUTTON8 == 2 || I2C_MCP_INT == 2
    PIN_FUNC_SELECT(PERIPHS_IO_MUX_GPIO2_U, FUNC_GPIO2);
    PIN_PULLUP_DIS(PERIPHS_IO_MUX_GPIO2_U);
    input_pins |= (1<<2);
  #endif
  #if BUTTON1 == 4 || BUTTON2 == 4 || BUTTON3 == 4 || BUTTON4 == 4 || BUTTON5 == 4 || BUTTON6 == 4 || BUTTON7 == 4 || BUTTON8 == 4 || I2C_MCP_INT == 4
    PIN_FUNC_SELECT(PERIPHS_IO_MUX_GPIO4_U, FUNC_GPIO4);
    PIN_PULLUP_DIS(PERIPHS_IO_MUX_GPIO4_U);
    input_pins |= (1<<4);
  #endif
  #if BUTTON1 == 5 || BUTTON2 == 5 || BUTTON3 == 5 || BUTTON4 == 5 || BUTTON5 == 5 || BUTTON6 == 5 || BUTTON7 == 5 || BUTTON8 == 5 || I2C_MCP_INT == 5
    PIN_FUNC_SELECT(PERIPHS_IO_MUX_GPIO5_U, FUNC_GPIO5);
    PIN_PULLUP_DIS(PERIPHS_IO_MUX_GPIO5_U);
    input_pins |= (1<<5);
  #endif
  #if BUTTON1 == 12 || BUTTON2 == 12 || BUTTON3 == 12 || BUTTON4 == 12 || BUTTON5 == 12 || BUTTON6 == 12 || BUTTON7 == 12 || BUTTON8 == 12 || I2C_MCP_INT == 12
    PIN_FUNC_SELECT(PERIPHS_IO_MUX_MTDI_U, FUNC_GPIO12);
    #ifdef PULLUP_ENABLE_12
      PIN_PULLUP_EN(PERIPHS_IO_MUX_MTDI_U);
    #else
      PIN_PULLUP_DIS(PERIPHS_IO_MUX_MTDI_U);
    #endif
    input_pins |= (1<<12);
  #endif
  #if BUTTON1 == 13 || BUTTON2 == 13 || BUTTON3 == 13 || BUTTON4 == 13 || BUTTON5 == 13 || BUTTON6 == 13 || BUTTON7 == 13 || BUTTON8 == 13 || I2C_MCP_INT == 13
    PIN_FUNC_SELECT(PERIPHS_IO_MUX_MTCK_U, FUNC_GPIO13);
    PIN_PULLUP_DIS(PERIPHS_IO_MUX_MTCK_U);
    input_pins |= (1<<13);
  #endif
  #if BUTTON1 == 14 || BUTTON2 == 14 || BUTTON3 == 14 || BUTTON4 == 14 || BUTTON5 == 14 || BUTTON6 == 14 || BUTTON7 == 14 || BUTTON8 == 14 || I2C_MCP_INT == 14
    PIN_FUNC_SELECT(PERIPHS_IO_MUX_MTMS_U, FUNC_GPIO14);
    PIN_PULLUP_DIS(PERIPHS_IO_MUX_MTMS_U);
    input_pins |= (1<<14);
  #endif
  #if BUTTON1 == 15 || BUTTON2 == 15 || BUTTON3 == 15 || BUTTON4 == 15 || BUTTON5 == 15 || BUTTON6 == 15 || BUTTON7 == 15 || BUTTON8 == 15 || I2C_MCP_INT == 15
    PIN_FUNC_SELECT(PERIPHS_IO_MUX_MTDO_U, FUNC_GPIO15);
    PIN_PULLUP_DIS(PERIPHS_IO_MUX_MTDO_U);
    input_pins |= (1<<15);
  #endif
  #if BUTTON1 == 16 || BUTTON2 == 16 || BUTTON3 == 16 || BUTTON4 == 16 || BUTTON5 == 16 || BUTTON6 == 16 || BUTTON7 == 16 || BUTTON8 == 16 || I2C_MCP_INT == 16
    gpio16_input_conf();
  #endif

  //Output pins
 #if OUTPUT1 == 2 || OUTPUT2 == 2 || OUTPUT3 == 2 || OUTPUT4 == 2 || OUTPUT5 == 2 || OUTPUT6 == 2 || OUTPUT7 == 2 || OUTPUT8 == 2 || LED == 2 || LED2 == 2
    PIN_FUNC_SELECT(PERIPHS_IO_MUX_GPIO2_U, FUNC_GPIO2);
    PIN_PULLUP_DIS(PERIPHS_IO_MUX_GPIO2_U);
    output_pins |= (1<<2);
    output_init_low |= (1<<2);
  #endif
  //GPIO3 can not be used because it is uart RX
  #if OUTPUT1 == 4 || OUTPUT2 == 4 || OUTPUT3 == 4 || OUTPUT4 == 4 || OUTPUT5 == 4 || OUTPUT6 == 4 || OUTPUT7 == 4 || OUTPUT8 == 4 || LED == 4 || LED2 == 4
    PIN_FUNC_SELECT(PERIPHS_IO_MUX_GPIO4_U, FUNC_GPIO4);
    PIN_PULLUP_DIS(PERIPHS_IO_MUX_GPIO4_U);
    output_pins |= (1<<4);
    output_init_low |= (1<<4);
  #endif
  #if OUTPUT1 == 5 || OUTPUT2 == 5 || OUTPUT3 == 5 || OUTPUT4 == 5 || OUTPUT5 == 5 || OUTPUT6 == 5 || OUTPUT7 == 5 || OUTPUT8 == 5 || LED == 5 || LED2 == 5
    PIN_FUNC_SELECT(PERIPHS_IO_MUX_GPIO5_U, FUNC_GPIO5);
    PIN_PULLUP_DIS(PERIPHS_IO_MUX_GPIO5_U);
    output_pins |= (1<<5);
    output_init_low |= (1<<5);
  #endif
  #if OUTPUT1 == 12 || OUTPUT2 == 12 || OUTPUT3 == 12 || OUTPUT4 == 12 || OUTPUT5 == 12 || OUTPUT6 == 12 || OUTPUT7 == 12 || OUTPUT8 == 12 || LED == 12 || LED2 == 12
    PIN_FUNC_SELECT(PERIPHS_IO_MUX_MTDI_U, FUNC_GPIO12);
    PIN_PULLUP_DIS(PERIPHS_IO_MUX_MTDI_U);
    output_pins |= (1<<12);
    output_init_low |= (1<<12);
  #endif
  #if OUTPUT1 == 13 || OUTPUT2 == 13 || OUTPUT3 == 13 || OUTPUT4 == 13 || OUTPUT5 == 13 || OUTPUT6 == 13 || OUTPUT7 == 13 || OUTPUT8 == 13 || LED == 13 || LED2 == 13
    PIN_FUNC_SELECT(PERIPHS_IO_MUX_MTCK_U, FUNC_GPIO13);
    PIN_PULLUP_DIS(PERIPHS_IO_MUX_MTCK_U);
    output_pins |= (1<<13);
    output_init_low |= (1<<13);
  #endif
  #if OUTPUT1 == 14 || OUTPUT2 == 14 || OUTPUT3 == 14 || OUTPUT4 == 14 || OUTPUT5 == 14 || OUTPUT6 == 14 || OUTPUT7 == 14 || OUTPUT8 == 14 || LED == 14 || LED2 == 14
    PIN_FUNC_SELECT(PERIPHS_IO_MUX_MTMS_U, FUNC_GPIO14);
    PIN_PULLUP_DIS(PERIPHS_IO_MUX_MTMS_U);
    output_pins |= (1<<14);
    output_init_low |= (1<<14);
  #endif
  #if OUTPUT1 == 15 || OUTPUT2 == 15 || OUTPUT3 == 15 || OUTPUT4 == 15 || OUTPUT5 == 15 || OUTPUT6 == 15 || OUTPUT7 == 15 || OUTPUT8 == 15 || LED == 15 || LED2 == 15
    PIN_FUNC_SELECT(PERIPHS_IO_MUX_MTDO_U, FUNC_GPIO15);
    PIN_PULLUP_DIS(PERIPHS_IO_MUX_MTDO_U);
    output_pins |= (1<<15);
    output_init_low |= (1<<15);
  #endif
  #if OUTPUT1 == 16 || OUTPUT2 == 16 || OUTPUT3 == 16 || OUTPUT4 == 16 || OUTPUT5 == 16 || OUTPUT6 == 16 || OUTPUT7 == 16 || OUTPUT8 == 16 || LED == 16 || LED2 == 16
    gpio16_output_conf();
    gpio16_output_set(0);
  #endif
  gpio_output_set(output_init_high, output_init_low, output_pins, input_pins);
  
  #ifdef ENABLE_PKAWB
  board_wbInit();
  #endif
  
  #ifdef I2C_EN
    i2c_master_gpio_init();
    #ifdef I2C_BMP180
      if (BMP180_Init()==false)
      {
        os_printf("Warning: Could not initialize the air pressure sensor.\r\n");
        //os_printf("Warning: This probably indicates a problem with the i2c bus!\r\n");
      }
    #endif
    #ifdef I2C_MCP
      #if I2C_MCP == 1
        //Mode 1: GPIO 0 - 3 are outputs, GPIO 4 - 7 are inputs, no pullup.
        MCP23008_Init(0xF0, 0xF0, 0x00, 0xF0);
        //os_printf("MCP23008 INIT DONE\r\n");
      #endif
      MCP23008_setAll(0); //To be sure: Initialize with all outputs off
    #endif
  #endif
  
  #if LED>0
    statusLedTimerInit();
  #endif

  #if LED2>0
    statusLed2TimerInit();
  #endif

  os_memset(&sensorUpdateTimer,0,sizeof(os_timer_t));
  os_timer_disarm(&sensorUpdateTimer);
  os_timer_setfn(&sensorUpdateTimer, (os_timer_func_t *)sensorUpdateTimerCb, NULL);

  os_memset(&sensorTimeoutTimer,0,sizeof(os_timer_t));
  os_timer_disarm(&sensorTimeoutTimer);
  os_timer_setfn(&sensorTimeoutTimer, (os_timer_func_t *)sensorTimeoutTimerCb, NULL);

  #ifdef I2C_MMA8451
    accelerometer_found = MMA8451_Init();
    if (accelerometer_found) {
      MMA8451_setRange(MMA8451_RANGE_2_G);
      //os_printf("Accelerometer range is %d G\r\n", 2 << MMA8451_getRange());
    }
    else
    {
      os_printf("Warning: Could not initialize accelerometer.\r\n");
    }
  #endif
}

void ICACHE_FLASH_ATTR board_init2( void )
{
  os_timer_arm(&sensorUpdateTimer, 2000, 1);
  os_timer_arm(&sensorTimeoutTimer, 1, 0);
  
  //Interrupts
  ETS_GPIO_INTR_DISABLE();
  #if BUTTON1>=0 && BUTTON1<20
    ETS_GPIO_INTR_ATTACH(board_handle_gpio_interrupt, BUTTON1);
    gpio_pin_intr_state_set(GPIO_ID_PIN(BUTTON1), 2);
  #endif
  #if BUTTON2>=0 && BUTTON2<20
    ETS_GPIO_INTR_ATTACH(board_handle_gpio_interrupt, BUTTON2);
    gpio_pin_intr_state_set(GPIO_ID_PIN(BUTTON2), 2);
  #endif
  #if BUTTON3>=0 && BUTTON3<20
    ETS_GPIO_INTR_ATTACH(board_handle_gpio_interrupt, BUTTON3);
    gpio_pin_intr_state_set(GPIO_ID_PIN(BUTTON3), 2);
  #endif
  #if BUTTON4>=0 && BUTTON4<20
    ETS_GPIO_INTR_ATTACH(board_handle_gpio_interrupt, BUTTON4);
    gpio_pin_intr_state_set(GPIO_ID_PIN(BUTTON4), 2);
  #endif
  #if BUTTON5>=0 && BUTTON5<20
    ETS_GPIO_INTR_ATTACH(board_handle_gpio_interrupt, BUTTON5);
    gpio_pin_intr_state_set(GPIO_ID_PIN(BUTTON5), 2);
  #endif
  #if BUTTON6>=0 && BUTTON6<20
    ETS_GPIO_INTR_ATTACH(board_handle_gpio_interrupt, BUTTON6);
    gpio_pin_intr_state_set(GPIO_ID_PIN(BUTTON6), 2);
  #endif
  #if BUTTON7>=0 && BUTTON7<20
    ETS_GPIO_INTR_ATTACH(board_handle_gpio_interrupt, BUTTON7);
    gpio_pin_intr_state_set(GPIO_ID_PIN(BUTTON7), 2);
  #endif
  #if BUTTON8>=0 && BUTTON8<20
    ETS_GPIO_INTR_ATTACH(board_handle_gpio_interrupt, BUTTON8);
    gpio_pin_intr_state_set(GPIO_ID_PIN(BUTTON8), 2);
  #endif
  #ifdef I2C_MCP_INT
    //The MCP chip has it's interrupt pin connected to I2C_MCP_INT, handle interrupts!
    ETS_GPIO_INTR_ATTACH(board_handle_gpio_interrupt, I2C_MCP_INT);
    gpio_pin_intr_state_set(GPIO_ID_PIN(I2C_MCP_INT), 2);
  #endif
  ETS_GPIO_INTR_ENABLE();

  

}

/* INPUTS */

bool ignore_btn1_int = false;
bool ignore_btn2_int = false;
bool ignore_btn3_int = false;
bool ignore_btn4_int = false;
bool ignore_btn5_int = false;
bool ignore_btn6_int = false;
bool ignore_btn7_int = false;
bool ignore_btn8_int = false;

uint16_t sensorIgnoreTime[8] = {0};

void sensorTimeoutTimerCb( void* arg)
{
  uint8_t sensor;
  bool runagain = false;
  for (sensor=0; sensor<8; sensor++) if (sensorIgnoreTime[sensor]>0) { sensorIgnoreTime[sensor]--; runagain=true; }
  if (runagain) os_timer_arm(&sensorTimeoutTimer, 1, 0);
}

void board_checkAllInputs( void )
{
  userSettings_t* settings = settings_get_pointer();

  #if BUTTON1>=0 && BUTTON1<20
  if ((sensorIgnoreTime[0]<1)&&(!ignore_btn1_int)&&(!GPIO_INPUT_GET(BUTTON1))) { handleButtonInterrupt(0); ignore_btn1_int = 1; sensorIgnoreTime[0]=settings->sensorTimeout[0]; } else { ignore_btn1_int = 0; }
  #endif
  #if BUTTON2>=0 && BUTTON2<20
  if ((sensorIgnoreTime[1]<1)&&(!ignore_btn2_int)&&(!GPIO_INPUT_GET(BUTTON2))) { handleButtonInterrupt(1); ignore_btn2_int = 1; sensorIgnoreTime[1]=settings->sensorTimeout[1]; } else { ignore_btn2_int = 0; }
  #endif
  #if BUTTON3>=0 && BUTTON3<20
  if ((sensorIgnoreTime[2]<1)&&(!ignore_btn3_int)&&(!GPIO_INPUT_GET(BUTTON3))) { handleButtonInterrupt(2); ignore_btn3_int = 1; sensorIgnoreTime[2]=settings->sensorTimeout[2]; } else { ignore_btn3_int = 0; }
  #endif
  #if BUTTON4>=0 && BUTTON4<20
  if ((sensorIgnoreTime[3]<1)&&(!ignore_btn4_int)&&(!GPIO_INPUT_GET(BUTTON4))) { handleButtonInterrupt(3); ignore_btn4_int = 1; sensorIgnoreTime[3]=settings->sensorTimeout[3]; } else { ignore_btn4_int = 0; }
  #endif
  #if BUTTON5>=0 && BUTTON5<20
  if ((sensorIgnoreTime[4]<1)&&(!ignore_btn5_int)&&(!GPIO_INPUT_GET(BUTTON5))) { handleButtonInterrupt(4); ignore_btn5_int = 1; sensorIgnoreTime[4]=settings->sensorTimeout[4]; } else { ignore_btn5_int = 0; }
  #endif
  #if BUTTON6>=0 && BUTTON6<20
  if ((sensorIgnoreTime[5]<1)&&(!ignore_btn6_int)&&(!GPIO_INPUT_GET(BUTTON6))) { handleButtonInterrupt(5); ignore_btn6_int = 1; sensorIgnoreTime[5]=settings->sensorTimeout[5]; } else { ignore_btn6_int = 0; }
  #endif
  #if BUTTON7>=0 && BUTTON7<20
  if ((sensorIgnoreTime[6]<1)&&(!ignore_btn7_int)&&(!GPIO_INPUT_GET(BUTTON7))) { handleButtonInterrupt(6); ignore_btn7_int = 1; sensorIgnoreTime[6]=settings->sensorTimeout[6]; } else { ignore_btn7_int = 0; }
  #endif
  #if BUTTON8>=0 && BUTTON8<20
  if ((sensorIgnoreTime[7]<1)&&(!ignore_btn8_int)&&(!GPIO_INPUT_GET(BUTTON8))) { handleButtonInterrupt(7); ignore_btn8_int = 1; sensorIgnoreTime[7]=settings->sensorTimeout[7]; } else { ignore_btn8_int = 0; }
  #endif

  #if I2C_MCP_INT>0
    uint8_t mcp = MCP23008_getAll();
    #if BUTTON1>=94 && BUTTON1<98
      if ((sensorIgnoreTime[0]<1)&&(!ignore_btn1_int)&&(mcp&(1<<(BUTTON1-94+4)))) { handleButtonInterrupt(0); ignore_btn1_int = 1; sensorIgnoreTime[0]=settings->sensorTimeout[0]; } else { ignore_btn1_int = 0; }
    #endif
    #if BUTTON2>=94 && BUTTON2<98
      if ((sensorIgnoreTime[1]<1)&&(!ignore_btn2_int)&&(mcp&(1<<(BUTTON2-94+4)))) { handleButtonInterrupt(1); ignore_btn2_int = 1; sensorIgnoreTime[1]=settings->sensorTimeout[1]; } else { ignore_btn2_int = 0; }
    #endif
    #if BUTTON3>=94 && BUTTON3<98
      if ((sensorIgnoreTime[2]<1)&&(!ignore_btn3_int)&&(mcp&(1<<(BUTTON3-94+4)))) { handleButtonInterrupt(2); ignore_btn3_int = 1; sensorIgnoreTime[2]=settings->sensorTimeout[2]; } else { ignore_btn3_int = 0; }
    #endif
    #if BUTTON4>=94 && BUTTON4<98
      if ((sensorIgnoreTime[3]<1)&&(!ignore_btn4_int)&&(mcp&(1<<(BUTTON4-94+4)))) { handleButtonInterrupt(3); ignore_btn4_int = 1; sensorIgnoreTime[3]=settings->sensorTimeout[3]; } else { ignore_btn4_int = 0; }
    #endif
    #if BUTTON5>=94 && BUTTON5<98
      if ((sensorIgnoreTime[4]<1)&&(!ignore_btn5_int)&&(mcp&(1<<(BUTTON5-94+4)))) { handleButtonInterrupt(4); ignore_btn5_int = 1; sensorIgnoreTime[4]=settings->sensorTimeout[4]; } else { ignore_btn5_int = 0; }
    #endif
    #if BUTTON6>=94 && BUTTON6<98
      if ((sensorIgnoreTime[5]<1)&&(!ignore_btn6_int)&&(mcp&(1<<(BUTTON6-94+4)))) { handleButtonInterrupt(5); ignore_btn6_int = 1; sensorIgnoreTime[5]=settings->sensorTimeout[5]; } else { ignore_btn6_int = 0; }
    #endif
    #if BUTTON7>=94 && BUTTON7<98
      if ((sensorIgnoreTime[6]<1)&&(!ignore_btn7_int)&&(mcp&(1<<(BUTTON7-95+4)))) { handleButtonInterrupt(6); ignore_btn7_int = 1; sensorIgnoreTime[6]=settings->sensorTimeout[6]; } else { ignore_btn7_int = 0; }
    #endif
    #if BUTTON8>=94 && BUTTON8<98
      if ((sensorIgnoreTime[7]<1)&&(!ignore_btn8_int)&&(mcp&(1<<(BUTTON8-95+4)))) { handleButtonInterrupt(7); ignore_btn8_int = 1; sensorIgnoreTime[7]=settings->sensorTimeout[7]; } else { ignore_btn8_int = 0; }
    #endif
    mcp = MCP23008_getAll_intcap(); //Unused but does clear MCP interrupt
  #endif

  //Arm debounce timer
  os_timer_disarm(&sensorTimeoutTimer);
  os_timer_arm(&sensorTimeoutTimer, 1, 0);
}

void ICACHE_FLASH_ATTR board_handle_gpio_interrupt( int8_t key )
{
  ETS_GPIO_INTR_DISABLE();
  os_printf("[board_handle_gpio_interrupt %d]\r\n",key);

  os_timer_disarm(&sensorUpdateTimer);
  sensorUpdateTimerCb(0);
  os_timer_arm(&sensorUpdateTimer, 2000, 1);

  //Reset interrupts
  ETS_GPIO_INTR_ENABLE();
  uint32 gpio_status = GPIO_REG_READ(GPIO_STATUS_ADDRESS);
  GPIO_REG_WRITE(GPIO_STATUS_W1TC_ADDRESS, gpio_status );
}

bool ICACHE_FLASH_ATTR board_getInput( uint8_t input )
{
  #if BUTTON1>=0 && BUTTON1<20
  if ((input==0)&&(!GPIO_INPUT_GET(BUTTON1))) return true;
  #endif
  #if BUTTON2>=0 && BUTTON2<20
  if ((input==1)&&(!GPIO_INPUT_GET(BUTTON2))) return true;
  #endif
  #if BUTTON3>=0 && BUTTON3<20
  if ((input==2)&&(!GPIO_INPUT_GET(BUTTON3))) return true;
  #endif
  #if BUTTON4>=0 && BUTTON4<20
  if ((input==3)&&(!GPIO_INPUT_GET(BUTTON4))) return true;
  #endif
  #if BUTTON5>=0 && BUTTON5<20
  if ((input==4)&&(!GPIO_INPUT_GET(BUTTON5))) return true;
  #endif
  #if BUTTON6>=0 && BUTTON6<20
  if ((input==5)&&(!GPIO_INPUT_GET(BUTTON6))) return true;
  #endif
  #if BUTTON7>=0 && BUTTON7<20
  if ((input==6)&&(!GPIO_INPUT_GET(BUTTON7))) return true;
  #endif
  #if BUTTON8>=0 && BUTTON8<20
  if ((input==7)&&(!GPIO_INPUT_GET(BUTTON8))) return true;
  #endif

  #ifdef I2C_MCP
    uint8_t mcp = MCP23008_getAll();
    //os_printf("mcp = %d, input = %d.\r\n", mcp, input);
    #if BUTTON1>=94 && BUTTON1<98
      if ((mcp&(1<<(BUTTON1-94+4)))&&(input==0)) return true;
    #endif
    #if BUTTON2>=94 && BUTTON2<98
      if ((mcp&(1<<(BUTTON2-94+4)))&&(input==1)) return true;
    #endif
    #if BUTTON3>=94 && BUTTON3<98
      if ((mcp&(1<<(BUTTON3-94+4)))&&(input==2)) return true;
    #endif
    #if BUTTON4>=94 && BUTTON4<98
      if ((mcp&(1<<(BUTTON4-94+4)))&&(input==3)) return true;
    #endif
    #if BUTTON5>=94 && BUTTON5<98
      if ((mcp&(1<<(BUTTON5-94+4)))&&(input==4)) return true;
    #endif
    #if BUTTON6>=94 && BUTTON6<98
      if ((mcp&(1<<(BUTTON6-94+4)))&&(input==5)) return true;
    #endif
    #if BUTTON7>=94 && BUTTON7<98
      if ((mcp&(1<<(BUTTON7-94+4)))&&(input==6)) return true;
    #endif
    #if BUTTON8>=94 && BUTTON8<98
      if ((mcp&(1<<(BUTTON8-94+4)))&&(input==7)) return true;
    #endif
  #endif
  return false;
}

void ICACHE_FLASH_ATTR board_applybootstate( userSettings_t *settings )
{       
  #if OUTPUT1>-1
    if (settings->bootstate&1){
      board_setOutput(OUTPUT1, true);
    } else {
      board_setOutput(OUTPUT1, false);
    }
  #endif
  #if OUTPUT2>-1
    if (settings->bootstate&2) {
      board_setOutput(OUTPUT2, true);
    } else {
      board_setOutput(OUTPUT2, false);
    }
  #endif
  #if OUTPUT3>-1
    if (settings->bootstate&4) {
      board_setOutput(OUTPUT3, true);
    } else {
      board_setOutput(OUTPUT3, false);
    }
  #endif
  #if OUTPUT4>-1
    if (settings->bootstate&8) {
      board_setOutput(OUTPUT4, true);
    } else {
      board_setOutput(OUTPUT4, false);
    }
  #endif
  #if OUTPUT5>-1
    if (settings->bootstate&16) {
      board_setOutput(OUTPUT5, true);
    } else {
      board_setOutput(OUTPUT5, false);
    }
  #endif
  #if OUTPUT6>-1
    if (settings->bootstate&32) {
      board_setOutput(OUTPUT6, true);
    } else {
      board_setOutput(OUTPUT6, false);
    }
  #endif
  #if OUTPUT7>-1
    if (settings->bootstate&64) {
      board_setOutput(OUTPUT7, true);
    } else {
      board_setOutput(OUTPUT7, false);
    }
  #endif
  #if OUTPUT8>-1
    if (settings->bootstate&128) {
      board_setOutput(OUTPUT8, true);
    } else {
      board_setOutput(OUTPUT8, false);
    }
  #endif
}

/* OUTPUTS */

uint32_t outputState = 0;
uint32_t MCPoutputState = 0;

bool board_getOutput2( uint8_t pin )
{
  if (pin==1) return board_getOutput(OUTPUT1);
  if (pin==2) return board_getOutput(OUTPUT2);
  if (pin==3) return board_getOutput(OUTPUT3);
  if (pin==4) return board_getOutput(OUTPUT4);
  if (pin==5) return board_getOutput(OUTPUT5);
  if (pin==6) return board_getOutput(OUTPUT6);
  if (pin==7) return board_getOutput(OUTPUT7);
  if (pin==8) return board_getOutput(OUTPUT8);
  return false;
}

bool board_setOutput2( uint8_t pin, bool state )
{
  if (pin==1) return board_setOutput(OUTPUT1, state);
  if (pin==2) return board_setOutput(OUTPUT2, state);
  if (pin==3) return board_setOutput(OUTPUT3, state);
  if (pin==4) return board_setOutput(OUTPUT4, state);
  if (pin==5) return board_setOutput(OUTPUT5, state);
  if (pin==6) return board_setOutput(OUTPUT6, state);
  if (pin==7) return board_setOutput(OUTPUT7, state);
  if (pin==8) return board_setOutput(OUTPUT8, state);
  return false;
}

bool board_setOutput( int output, bool state )
{
  switch (output) {
    #if OUTPUT1>=0
    case OUTPUT1: break;
    #endif
    #if OUTPUT2>=0
    case OUTPUT2: break;
    #endif
    #if OUTPUT3>=0
    case OUTPUT3: break;
    #endif
    #if OUTPUT4>=0
    case OUTPUT4: break;
    #endif
    #if OUTPUT5>=0
    case OUTPUT5: break;
    #endif
    #if OUTPUT6>=0
    case OUTPUT6: break;
    #endif
    #if OUTPUT7>=0
    case OUTPUT7: break;
    #endif
    #if OUTPUT8>=0
    case OUTPUT8: break;
    #endif
    #if LED>=0
    case LED: break;
    #endif
    #if LED2>=0
    case LED2: break;
    #endif
    default:
      return false;
  }

  if (output<0) return false;

  if (output < 16)
  {
    if (state)
    {
      outputState |= (1<<output);
    }
    else
    {
      outputState &= ~(1<<output);
    }
    //os_printf("Outputstate set to %x\r\n", outputState);
    gpio_output_set(outputState, ~outputState, 0, 0);
    return true;
  }
  else if (output == 16)
  {
    gpio16_output_set(state);
    if (state)
    {
      outputState |= (1<<output);
    }
    else
    {
      outputState &= ~(1<<output);
    }
    return true;
  }
  #ifdef I2C_MCP
    else if ((output >= 90) && (output<94))
    {
      MCP23008_setOutput(output-90, state);
      if (state)
      {
        MCPoutputState |= (1<<(output-90));
      }
      else
      {
        MCPoutputState &= ~(1<<(output-90));
      }
      return true;
    }
  #endif
  else
  {
    //os_printf("Can not set output on pin %d: unknown pin.\r\n");
    return false;
  }
}

bool ICACHE_FLASH_ATTR board_getOutput( int output )
{
  switch (output) {
    #if OUTPUT1>=0
    case OUTPUT1: break;
    #endif
    #if OUTPUT2>=0
    case OUTPUT2: break;
    #endif
    #if OUTPUT3>=0
    case OUTPUT3: break;
    #endif
    #if OUTPUT4>=0
    case OUTPUT4: break;
    #endif
    #if OUTPUT5>=0
    case OUTPUT5: break;
    #endif
    #if OUTPUT6>=0
    case OUTPUT6: break;
    #endif
    #if OUTPUT7>=0
    case OUTPUT7: break;
    #endif
    #if OUTPUT8>=0
    case OUTPUT8: break;
    #endif
    default:
      return false;
  }
  if ((output > 0) && (output < 17))
  {
    return ((outputState&(1<<output))>>output)&0x01;
  }
  else if ((output >= 90) && (output<94))
  {
    return ((MCPoutputState&(1<<(output-90)))>>(output-90))&0x01;
  }
  return false;
}

/* STATUS LEDS */

bool statusLed_blinkState = false;
os_timer_t statusLedTimer;

static void ICACHE_FLASH_ATTR statusLedTimerCb(void *arg)
{
  statusLed_blinkState = (!statusLed_blinkState)&0x01;
  #if LED>0
    board_setOutput( LED, statusLed_blinkState );
  #endif
}

void ICACHE_FLASH_ATTR statusLedTimerInit()
{
  os_memset(&statusLedTimer,0,sizeof(os_timer_t));
  os_timer_disarm(&statusLedTimer);
  os_timer_setfn(&statusLedTimer, (os_timer_func_t *)statusLedTimerCb, NULL);
}

void ICACHE_FLASH_ATTR statusLedTimerSet(uint32_t ms)
{
  os_timer_disarm(&statusLedTimer);
  os_timer_arm(&statusLedTimer, ms, 1);
}

void ICACHE_FLASH_ATTR statusLedTimerStop( void )
{
  os_timer_disarm(&statusLedTimer);
}

void ICACHE_FLASH_ATTR board_statusLed( uint8_t mode )
{
  #if LED>0
    //os_printf("Statusled 1 set to %d\r\n", mode);
    switch (mode)
    {
      case 0:
        statusLedTimerStop();
        board_setOutput( LED, false );
        break;
      case 1:
        statusLedTimerStop();
        board_setOutput( LED, true );
        break;
      case 2:
        statusLedTimerSet( 500 );
        break;
      case 3:
        statusLedTimerSet( 250 );
        break;
      case 4:
        statusLedTimerSet( 100 );
        break;
      default:
        //Do nothing
        break;
    }
  #endif
}

bool statusLed2_blinkState = false;
os_timer_t statusLed2Timer;

static void ICACHE_FLASH_ATTR statusLed2TimerCb(void *arg)
{
  statusLed2_blinkState = (!statusLed2_blinkState)&0x01;
  #if LED2>0
    board_setOutput( LED2, statusLed2_blinkState );
  #endif
}

void ICACHE_FLASH_ATTR statusLed2TimerInit()
{
  os_memset(&statusLed2Timer,0,sizeof(os_timer_t));
  os_timer_disarm(&statusLed2Timer);
  os_timer_setfn(&statusLed2Timer, (os_timer_func_t *)statusLed2TimerCb, NULL);
}

void ICACHE_FLASH_ATTR statusLed2TimerSet(uint32_t ms)
{
  os_timer_disarm(&statusLed2Timer);
  os_timer_arm(&statusLed2Timer, ms, 1);
}

void ICACHE_FLASH_ATTR statusLed2TimerStop( void )
{
  os_timer_disarm(&statusLed2Timer);
}


void ICACHE_FLASH_ATTR board_statusLed2( uint8_t mode )
{
  #if LED2>0
    //os_printf("Statusled 2 set to %d\r\n", mode);
    switch (mode)
    {
      case 0:
        statusLed2TimerStop();
        board_setOutput( LED2, false );
        break;
      case 1:
        statusLed2TimerStop();
        board_setOutput( LED2, true );
        break;
      case 2:
        statusLed2TimerSet( 500 );
        break;
      case 3:
        statusLed2TimerSet( 250 );
        break;
      case 4:
        statusLed2TimerSet( 100 );
        break;
      default:
        //Do nothing
        break;
    }
  #endif
}

/* PKA WB */

#ifdef ENABLE_PKAWB
uint32_t ICACHE_FLASH_ATTR board_wb_pin ( uint8_t setting, bool dir ) {
  if (dir) {
    switch (setting) {
      case 3:
      case 5:
       return OUTPUT1;
       break;
      case 1:
      case 6:
       return OUTPUT2;
       break;
      case 2:
      case 4:
       return OUTPUT3;
       break;
      default:
       return 9999;
       break;
    }
  } else {
    switch (setting) {
      case 1:
      case 2:
       return OUTPUT1;
       break;
      case 3:
      case 4:
       return OUTPUT2;
       break;
      case 5:
      case 6:
       return OUTPUT3;
       break;
      default:
       return 9999;
       break;
    }
  }
  return 9999;
}

os_timer_t pkaWbTimer;
bool wbState;
uint8_t wbMode;

static void ICACHE_FLASH_ATTR pkaWbTimerCb(void *arg)
{
  board_wbStop();
}

void ICACHE_FLASH_ATTR board_wbInit( void )
{
  os_memset(&pkaWbTimer,0,sizeof(os_timer_t));
  os_timer_disarm(&pkaWbTimer);
  os_timer_setfn(&pkaWbTimer, (os_timer_func_t *)pkaWbTimerCb, NULL);
  board_wbStop();
  wbState = false;
  wbMode = 2;
}

void ICACHE_FLASH_ATTR board_wbStop( void )
{
  userSettings_t* settings = settings_get_pointer();
  if (settings->pka_wb>0) {
    //os_printf("WB_STOP\r\n");
    board_setOutput( board_wb_pin(settings->pka_wb, true), false );
    board_setOutput( board_wb_pin(settings->pka_wb, false), false ); //OFF
    os_timer_disarm(&pkaWbTimer); //Disable stop timer
    wbMode = 2;
  }
}

void ICACHE_FLASH_ATTR board_wbUp( void )
{
  userSettings_t* settings = settings_get_pointer();
  if (settings->pka_wb>0) {
    //os_printf("WB_UP\r\n");
    board_setOutput( board_wb_pin(settings->pka_wb, true), true ); //UP
    board_setOutput( board_wb_pin(settings->pka_wb, false), true ); //ON
    uint32_t time = settings->pka_wb_time*1000;
    os_timer_arm(&pkaWbTimer, time, false); //Enable stop timer
    wbState = true;
    wbMode = 1;
  }
}

void ICACHE_FLASH_ATTR board_wbDown( void )
{
  userSettings_t* settings = settings_get_pointer();
  if (settings->pka_wb>0) {
    //os_printf("WB_DOWN\r\n");
    board_setOutput( board_wb_pin(settings->pka_wb, true), false ); //DOWN
    board_setOutput( board_wb_pin(settings->pka_wb, false), true ); //ON
    uint32_t time = settings->pka_wb_time*1000;
    os_timer_arm(&pkaWbTimer, time, false); //Enable stop timer
    wbState = false;
    wbMode = 0;
  }
}

uint8_t ICACHE_FLASH_ATTR board_wbMode( void )
{
  return wbMode;
}

bool ICACHE_FLASH_ATTR board_wbState( void )
{
  return wbState;
}
#endif

/* DMX */

#ifdef DMX //DMX uses GPIO2/UART1

uint8_t dmx_data[513] = {0};

void ICACHE_FLASH_ATTR dmxTimerCb(void *arg)
{
  uint16_t i;
  //BREAK
  gpio_output_set(0, BIT2, BIT2, 0); 
  PIN_FUNC_SELECT(PERIPHS_IO_MUX_GPIO2_U, FUNC_GPIO2);
  os_delay_us(150);
  //MARK
  gpio_output_set(BIT2, 0, BIT2, 0);
  os_delay_us(54);
  //START CODE + DMX DATA
  uart_tx_one_char(1, dmx_data[0]);
  PIN_FUNC_SELECT(PERIPHS_IO_MUX_GPIO2_U, FUNC_U1TXD_BK);
  os_delay_us(54);
  //DMX data
  for (i = 1; i < 513; i++) {
    uart_tx_one_char(1, dmx_data[i]);
    os_delay_us(54);
  }
}

os_timer_t dmxTimer;

void ICACHE_FLASH_ATTR dmxInit( void )
{
  os_memset(&dmxTimer,0,sizeof(os_timer_t));
  os_timer_disarm(&dmxTimer);
  os_timer_setfn(&dmxTimer, (os_timer_func_t *)dmxTimerCb, NULL);
  /*uint16_t i;
  for (i = 0; i < 513; i++) {
    dmx_data[i] = 0;
  } */
  os_timer_arm(&dmxTimer, 100, true);
}

void dmxSetChannel( uint16_t channel, uint8_t value )
{
  if ((channel>0)&&(channel<513)) {
    dmx_data[channel] = value;
  }
}

uint8_t* dmxGetBuffer( void )
{
  return dmx_data;
}
#endif

os_timer_t ws2801RainbowTimer;

/*
    //MOVE THIS:
    os_memset(&ws2801RainbowTimer,0,sizeof(os_timer_t));
    os_timer_disarm(&ws2801RainbowTimer);
    os_timer_setfn(&ws2801RainbowTimer, (os_timer_func_t *)ws2801RainbowTimerCb, NULL);
    //os_timer_arm(&ws2801RainbowTimer,10,1);
*/

uint8_t ws2801rainbow_colors[3] = {0,0,0};
uint16_t ws2801rainbow_color_value = 0;
uint8_t ws2801rainbow_color_ledselect = 0;
uint8_t ws2801rainbow_color_pledselect = 2;

static void ICACHE_FLASH_ATTR ws2801RainbowTimerCb ( void *arg )
{
  ws2801rainbow_color_value++;
  if(ws2801rainbow_color_value > 255) {
    ws2801rainbow_color_ledselect++;
    ws2801rainbow_color_value = 1;
    if(ws2801rainbow_color_ledselect == 3) {
      ws2801rainbow_color_ledselect = 0;
      ws2801rainbow_color_pledselect = 2;
    } else {
      ws2801rainbow_color_pledselect = ws2801rainbow_color_ledselect - 1;
    }
  }
  ws2801rainbow_colors[ws2801rainbow_color_pledselect] = 255 - ws2801rainbow_color_value;
  ws2801rainbow_colors[ws2801rainbow_color_ledselect] = ws2801rainbow_color_value;
  ws2801_push(ws2801rainbow_colors[0],ws2801rainbow_colors[1],ws2801rainbow_colors[2]);
  ws2801_send(false);
}
