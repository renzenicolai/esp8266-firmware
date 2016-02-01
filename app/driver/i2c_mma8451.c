/* 
 * File: i2c_bmp180.c
 * Description: Driver for the mma8451 i2c accelerometer
 * Author: Renze Nicolai
 * Version: 1.0
 */

#include <esp8266.h>

int16_t x, y, z;
float x_g, y_g, z_g;
uint16_t divider = 1;

uint8_t ICACHE_FLASH_ATTR MMA8451_i2c_read(uint8_t addr, uint8_t cmd) {
  i2c_master_start();
  i2c_master_writeByte(addr<<1);
  if (!i2c_master_checkAck())
  {
    //os_printf("No ACK read mma8451 (0x%x, 0x%x)!\r\n", (addr), cmd);
    i2c_master_stop();
    return false;
  }
  os_delay_us(1);
  i2c_master_writeByte(cmd);
  if (!i2c_master_checkAck())
  {
    //os_printf("No ACK read mma8451 (2)!\r\n");
    i2c_master_stop();
    return false;
  }
  i2c_master_start();
  i2c_master_writeByte((addr<<1) + 1);
  if (!i2c_master_checkAck())
  {
    //os_printf("No ACK read mma8451 (3)!\r\n");
    i2c_master_stop();
    return false;
  }
  uint8_t result = i2c_master_readByte(); //Dout
  i2c_master_send_nack();
  i2c_master_stop();
  return result;
}

void ICACHE_FLASH_ATTR MMA8451_i2c_write(uint8_t addr, uint8_t cmd, uint8_t data) {
  i2c_master_start(); //S
  i2c_master_writeByte(addr<<1); //OPW
  if (!i2c_master_checkAck())
  {
    //os_printf("No ACK while writing to MMA8451!\r\n");
    i2c_master_stop(); //S
    return;
  }
  os_delay_us(1);
  i2c_master_writeByte(cmd); //ADDR
  if (!i2c_master_checkAck())
  {
    //os_printf("No ACK while writing to MMA8451!\r\n");
    i2c_master_stop(); //S
    return;
  }
  i2c_master_writeByte(data); //Din
  if (!i2c_master_checkAck())
  {
    //os_printf("No ACK while writing to MMA8451!\r\n");
    i2c_master_stop(); //S
    return;
  }
  i2c_master_stop(); //S
}

bool ICACHE_FLASH_ATTR MMA8451_Init( void )
{
  uint8_t deviceid = MMA8451_i2c_read(MMA8451_ADDRESS, MMA8451_REG_WHOAMI);
  uint8_t type = 0;
  if (deviceid == 0x1A)
  {
    type = 1;
  }
  if (deviceid == 0x2A)
  {
    type = 2;
  }
  
  if (type==0)
  {
    os_printf("Error: invalid deviceID for MMA845X found (WHO_AM_I: 0x%x).\r\n", deviceid);
    return false;
  }

  //os_printf("Sending reset...\r\n");
  MMA8451_i2c_write(MMA8451_ADDRESS, MMA8451_REG_CTRL_REG2, 0x40); // reset
  //os_printf("Waiting...\r\n");
  while (MMA8451_i2c_read(MMA8451_ADDRESS, MMA8451_REG_CTRL_REG2) & 0x40);
  //os_printf("Sending config 1...\r\n");
  // enable 4G range
  MMA8451_i2c_write(MMA8451_ADDRESS, MMA8451_REG_XYZ_DATA_CFG, MMA8451_RANGE_4_G);
  //os_printf("Sending config 2...\r\n");
  // High res
  MMA8451_i2c_write(MMA8451_ADDRESS, MMA8451_REG_CTRL_REG2, 0x02);
  //os_printf("Sending config 3...\r\n");
  // Low noise!
  MMA8451_i2c_write(MMA8451_ADDRESS, MMA8451_REG_CTRL_REG1, 0x04);
  //os_printf("Sending config 4...\r\n");
  // DRDY on INT1
  MMA8451_i2c_write(MMA8451_ADDRESS, MMA8451_REG_CTRL_REG4, 0x01);
  //os_printf("Sending config 5...\r\n");
  MMA8451_i2c_write(MMA8451_ADDRESS, MMA8451_REG_CTRL_REG5, 0x01);
  //os_printf("Sending config 6...\r\n");

  // Turn on orientation config
  MMA8451_i2c_write(MMA8451_ADDRESS, MMA8451_REG_PL_CFG, 0x40);
  //os_printf("Sending config 7...\r\n");

  // Activate!
  MMA8451_i2c_write(MMA8451_ADDRESS, MMA8451_REG_CTRL_REG1, 0x01); // active, max rate

  //uint8_t i;
  //for (i=0; i<0x30; i++) {
  //  os_printf("$%x = 0x%x\r\n", i, MMA8451_i2c_read(MMA8451_ADDRESS, i));
  //}
  return true;
}

uint8_t ICACHE_FLASH_ATTR MMA8451_getOrientation(void) {
  return MMA8451_i2c_read(MMA8451_ADDRESS, MMA8451_REG_PL_STATUS) & 0x07;
}

void ICACHE_FLASH_ATTR MMA8451_setRange(mma8451_range_t range)
{
  uint8_t reg1 = MMA8451_i2c_read(MMA8451_ADDRESS, MMA8451_REG_CTRL_REG1);
  MMA8451_i2c_write(MMA8451_ADDRESS, MMA8451_REG_CTRL_REG1, 0x00);            // deactivate
  MMA8451_i2c_write(MMA8451_ADDRESS, MMA8451_REG_XYZ_DATA_CFG, range & 0x3);
  MMA8451_i2c_write(MMA8451_ADDRESS, MMA8451_REG_CTRL_REG1, reg1 | 0x01);     // activate
  
  if (range == MMA8451_RANGE_8_G) divider = 1024;
  if (range == MMA8451_RANGE_4_G) divider = 2048;
  if (range == MMA8451_RANGE_2_G) divider = 4096;
}

mma8451_range_t ICACHE_FLASH_ATTR MMA8451_getRange(void)
{
  /* Read the data format register to preserve bits */
  
  mma8451_range_t range =  MMA8451_i2c_read(MMA8451_ADDRESS, MMA8451_REG_XYZ_DATA_CFG) & 0x03;
  
  if (range == MMA8451_RANGE_8_G) divider = 1024;
  if (range == MMA8451_RANGE_4_G) divider = 2048;
  if (range == MMA8451_RANGE_2_G) divider = 4096;
  
  return range;
}

void ICACHE_FLASH_ATTR MMA8451_setDataRate(mma8451_dataRate_t dataRate)
{
  uint8_t ctl1 = MMA8451_i2c_read(MMA8451_ADDRESS, MMA8451_REG_CTRL_REG1);
  MMA8451_i2c_write(MMA8451_ADDRESS, MMA8451_REG_CTRL_REG1, 0x00);            // deactivate
  ctl1 &= ~(MMA8451_DATARATE_MASK << 3);                  // mask off bits
  ctl1 |= (dataRate << 3);
  MMA8451_i2c_write(MMA8451_ADDRESS, MMA8451_REG_CTRL_REG1, ctl1 | 0x01);     // activate
}

mma8451_dataRate_t MMA8451_getDataRate(void)
{
  return (mma8451_dataRate_t)((MMA8451_i2c_read(MMA8451_ADDRESS, MMA8451_REG_CTRL_REG1) >> 3) & MMA8451_DATARATE_MASK);
}

bool ICACHE_FLASH_ATTR MMA8451_read() {
  i2c_master_start();
  i2c_master_writeByte(MMA8451_ADDRESS<<1);
  if (!i2c_master_checkAck())
  {
    //os_printf("No ACK read mma8451 (x1)!\r\n");
    i2c_master_stop();
    return false;
  }
  os_delay_us(1);
  i2c_master_writeByte(MMA8451_REG_OUT_X_MSB);
  if (!i2c_master_checkAck())
  {
    //os_printf("No ACK read mma8451 (x2)!\r\n");
    i2c_master_stop();
    return false;
  }
  i2c_master_start();
  i2c_master_writeByte((MMA8451_ADDRESS<<1)+1);
  if (!i2c_master_checkAck())
  {
    //os_printf("No ACK read mma8451 (x3)!\r\n");
    i2c_master_stop();
    return false;
  }
  x = i2c_master_readByte();
  x <<= 8;
  i2c_master_send_ack();
  os_delay_us(1);
  x |= i2c_master_readByte();
  x >>= 2;
  i2c_master_send_ack();
  os_delay_us(1);
  y = i2c_master_readByte();
  y <<= 8;
  i2c_master_send_ack();
  os_delay_us(1);
  y |= i2c_master_readByte();
  y >>= 2;
  i2c_master_send_ack();
  os_delay_us(1);
  z = i2c_master_readByte();
  z <<= 8;
  i2c_master_send_ack();
  os_delay_us(1);
  z |= i2c_master_readByte();
  z >>= 2;
  i2c_master_send_ack();
  os_delay_us(1);
  i2c_master_send_nack();
  i2c_master_stop();
  
  /* os_delay_us(10);

  uint8_t range = MMA8451_getRange();
  uint16_t divider = 1; */

  x_g = (float)x / divider;
  y_g = (float)y / divider;
  z_g = (float)z / divider;

  /*uint8_t i;
  for (i=0; i<0x30; i++) {
    os_printf("$%x = 0x%x\r\n", i, MMA8451_i2c_read(MMA8451_ADDRESS, i));
  }*/

  //os_printf("Test accelerometer: %d, %d, %d\r\n", x, y, z);
  return true;
}

int16_t ICACHE_FLASH_ATTR MMA8451_x( void ) { return x; }
int16_t ICACHE_FLASH_ATTR MMA8451_y( void ) { return y; }
int16_t ICACHE_FLASH_ATTR MMA8451_z( void ) { return z; }
float ICACHE_FLASH_ATTR MMA8451_gx( void ) { return x_g; }
float ICACHE_FLASH_ATTR MMA8451_gy( void ) { return y_g; }
float ICACHE_FLASH_ATTR MMA8451_gz( void ) { return z_g; }
