/* 
 * File: i2c_bmp180.c
 * Description: Driver for the mcp23008 i2c i/o expander
 * Author: Renze Nicolai
 * Version: 1.0
 */

#include <esp8266.h>

uint8_t outputState;

bool error = false;

void hwerrormcp( void )
{
  if (error) os_printf("MCP23008: HARDWARE ERROR.\r\n");
}

uint8_t ICACHE_FLASH_ATTR MCP23008_i2c_read(uint8_t addr, uint8_t cmd) {
  i2c_master_start();
  i2c_master_writeByte(addr<<1);
  if (!i2c_master_checkAck())
  {
    //os_printf("HW ERROR: No ACK while reading from MCP23008 [1]!\r\n");
    error = true;
    i2c_master_stop();
    return false;
  }
  os_delay_us(1);
  i2c_master_writeByte(cmd); //ADDR
  if (!i2c_master_checkAck())
  {
    //os_printf("HW ERROR: No ACK while reading from MCP23008 [2]!\r\n");
    error = true;
    i2c_master_stop();
    return false;
  }
  i2c_master_stop();
  os_delay_us(5);
  i2c_master_start();
  i2c_master_writeByte((addr<<1)+1);
  if (!i2c_master_checkAck())
  {
    //os_printf("HW ERROR: No ACK while reading from MCP23008 [3]!\r\n");
    error = true;
    i2c_master_stop();
    return false;
  }
  os_delay_us(1);
  uint8_t result = i2c_master_readByte(); //Dout
  i2c_master_send_nack();
  i2c_master_stop();
  return result;
}

void ICACHE_FLASH_ATTR MCP23008_i2c_write(uint8_t addr, uint8_t cmd, uint8_t data) {
  i2c_master_start(); //S
  i2c_master_writeByte(addr<<1); //OPW
  if (!i2c_master_checkAck())
  {
    //os_printf("HW ERROR: No ACK while writing to MCP23008!\r\n");
    error = true;
    i2c_master_stop(); //S
    return;
  }
  i2c_master_writeByte(cmd); //ADDR
  if (!i2c_master_checkAck())
  {
    //os_printf("HW ERROR: No ACK while writing to MCP23008!\r\n");
    error = true;
    i2c_master_stop(); //S
    return;
  }
  i2c_master_writeByte(data); //Din
  if (!i2c_master_checkAck())
  {
    //os_printf("HW ERROR: No ACK while writing to MCP23008!\r\n");
    error = true;
    i2c_master_stop(); //S
    return;
  }
  i2c_master_stop(); //S
}


bool ICACHE_FLASH_ATTR MCP23008_getInput(uint8_t pin)
{
  uint8_t portval = MCP23008_i2c_read(MCP23008_ADDRESS, MCP23008_GPIO);
  //os_printf("MCP23008 GETINPUT 0x%x: %x\r\n", pin, portval);
  hwerrormcp();
  return (portval&(1<<pin))>>pin;
}

uint8_t ICACHE_FLASH_ATTR MCP23008_getAll( void )
{
  uint8_t portval = MCP23008_i2c_read(MCP23008_ADDRESS, MCP23008_GPIO);
  //os_printf("Read MCP23008 portval: %x\r\n", portval);
  hwerrormcp();
  return portval;
}

uint8_t ICACHE_FLASH_ATTR MCP23008_getAll_intcap( void )
{
  uint8_t portval = MCP23008_i2c_read(MCP23008_ADDRESS, MCP23008_INTCAP);
  //os_printf("Read intcap portval: %x\r\n", portval);
  hwerrormcp();
  return portval;
}

void ICACHE_FLASH_ATTR MCP23008_setOutput(uint8_t pin, bool value)
{
  if (value)
  {
    outputState |= (1<<pin);
  }
  else
  {
    outputState &= ~(1<<pin);
  }
  //os_printf("MCP23008 SET PIN %d TO %d (state is %x)\r\n", pin, value, outputState);
  MCP23008_i2c_write(MCP23008_ADDRESS, MCP23008_OLAT, outputState);
  //os_printf("SetOutput: %x\r\n", outputState);
  hwerrormcp();
}

void ICACHE_FLASH_ATTR MCP23008_setAll(uint8_t value)
{
  outputState = value;
  MCP23008_i2c_write(MCP23008_ADDRESS, MCP23008_OLAT, outputState);
  //os_printf("SetOutput: %x\r\n", outputState);
  hwerrormcp();
}

bool ICACHE_FLASH_ATTR MCP23008_Init( uint8_t iodir, uint8_t ipol, uint8_t pullup, uint8_t gpinten )
{
  error = false;
  MCP23008_i2c_write(MCP23008_ADDRESS, MCP23008_IODIR, iodir); //Pin direction (Low=output)
  MCP23008_i2c_write(MCP23008_ADDRESS, MCP23008_IPOL, ipol); //Input polarity
  MCP23008_i2c_write(MCP23008_ADDRESS, MCP23008_GPINTEN, gpinten); //Interrupt config
  //DEFVAL
  //INTCON
  MCP23008_i2c_write(MCP23008_ADDRESS, MCP23008_IOCON, 0x00); //Chip config
  MCP23008_i2c_write(MCP23008_ADDRESS, MCP23008_GPPU, pullup); //Pullups
  //INTF
  //INTCAP
  //GPIO
  //OLAT
  outputState = 0;
  hwerrormcp();
}
