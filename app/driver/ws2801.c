/* File: ws2801.c
 * Description: Driver for ws2801 ledstips using the HSPI interface (DAT: 13, CLK: 14)
 * Author: Renze Nicolai
 * Date: 01-2016
 * License: MIT
 */
#include <user_interface.h>
#include <mem.h>
#include "driver/ws2801.h"
#include "driver/spi.h"

#ifdef WS2801 //Only enable these functions when needed 
  uint8_t* ws2801buffer;
  uint16_t ws2801amount;

  /* init: malloc buffer, set dat and clk pins to output, low and send initial ws2801buffer */
  bool ICACHE_FLASH_ATTR ws2801_init(uint16_t pixels, uint8_t r, uint8_t g, uint8_t b)
  {
    if (ws2801buffer!=NULL) return true;
    gpio_output_set(0, (1<<WS2801_DAT)+(1<<WS2801_CLK), (1<<WS2801_DAT)+(1<<WS2801_CLK), 0); //Set to output, low
    ws2801amount = pixels;
    ws2801buffer = (uint8_t*) os_malloc(pixels*3); //Malloc buffer (3 bytes per pixel: R, G and B)
    if (!ws2801buffer) {
      os_printf("!!!!!!! WS2801_MALLOC_FAIL !!!!!!!\r\n");
      return false; //Return if malloc failed
    }
    uint16_t pos;
    for(pos = 0; pos<pixels; pos++) { //Fill buffer with initial values
      ws2801buffer[pos*3+0] = r;
      ws2801buffer[pos*3+1] = g;
      ws2801buffer[pos*3+2] = b;
    }
    ws2801_send(true); //Update ledstrip with initial values
    return true;
  }

  void ICACHE_FLASH_ATTR ws2801_free( void )
  {
    if (!ws2801buffer) { return; }
    os_free(ws2801buffer);
    ws2801buffer = (uint8_t*) NULL;
    //os_printf("WS2801: Buffer freed.\r\n");
  }

  void ICACHE_FLASH_ATTR ws2801_stop( void )
  {
    ws2801_free();
    PIN_FUNC_SELECT(PERIPHS_IO_MUX_MTCK_U, FUNC_GPIO13); //Set pins to GPIO mode
    PIN_FUNC_SELECT(PERIPHS_IO_MUX_MTMS_U, FUNC_GPIO14);
    gpio_output_set(0, (1<<WS2801_DAT)+(1<<WS2801_CLK), (1<<WS2801_DAT)+(1<<WS2801_CLK), 0); //Set pins used by driver to output, low
    //os_printf("WS2801: Driver stopped.\r\n");
  }

  void ICACHE_FLASH_ATTR ws2801_send(bool clear)
  {
    if (!ws2801buffer) { return; }
    if (clear) {
      PIN_FUNC_SELECT(PERIPHS_IO_MUX_MTCK_U, FUNC_GPIO13); //Set pins to GPIO mode
      PIN_FUNC_SELECT(PERIPHS_IO_MUX_MTMS_U, FUNC_GPIO14);
      gpio_output_set(0, (1<<WS2801_DAT)+(1<<WS2801_CLK), 0, 0); //Set pins LOW
      os_delay_us(600); //Wait...
    }

    PIN_FUNC_SELECT(PERIPHS_IO_MUX_MTCK_U, 2); //Set pins to SPI mode
    PIN_FUNC_SELECT(PERIPHS_IO_MUX_MTMS_U, 2);
    WRITE_PERI_REG(SPI_CLOCK(HSPI),
      ((0x07&SPI_CLKDIV_PRE)<<SPI_CLKDIV_PRE_S)| //Pre-div by 8
      ((0x04&SPI_CLKCNT_N)<<SPI_CLKCNT_N_S)| //Further divide by 5 clocks
      ((0x04&SPI_CLKCNT_H)<<SPI_CLKCNT_H_S)|
      ((0x02&SPI_CLKCNT_L)<<SPI_CLKCNT_L_S)); // High for 2 clocks, low for remaining 3 clocks.

    uint16_t pixel;
    for (pixel=0; pixel<ws2801amount; pixel++) { //For each pixel
      uint32_t pws2801buffer = (ws2801buffer[pixel*3+2]<<16)+(ws2801buffer[pixel*3+1]<<8)+(ws2801buffer[pixel*3]); //Calculate 24-bit value to be sent to the pixel
      while(spi_busy(HSPI)); //wait for SPI to be ready	
      CLEAR_PERI_REG_MASK(SPI_USER(HSPI), SPI_USR_MOSI|SPI_USR_MISO|SPI_USR_COMMAND|SPI_USR_ADDR|SPI_USR_DUMMY);
      WRITE_PERI_REG(SPI_USER1(HSPI), ((24-1)&SPI_USR_MOSI_BITLEN)<<SPI_USR_MOSI_BITLEN_S);
      SET_PERI_REG_MASK(SPI_USER(HSPI), SPI_USR_MOSI); //enable MOSI function in SPI module
      WRITE_PERI_REG(SPI_W0(HSPI), (pws2801buffer));
      SET_PERI_REG_MASK(SPI_CMD(HSPI), SPI_USR);
    }
    //os_printf("WS2801: Sent data to leds\r\n");
  }

  void ICACHE_FLASH_ATTR ws2801_push(uint8_t r, uint8_t g, uint8_t b)
  {
    if (!ws2801buffer) { return; }
    uint16_t pixel;
    for (pixel = ws2801amount-1; pixel>0; pixel--) {
      ws2801buffer[pixel*3] = ws2801buffer[(pixel-1)*3];
      ws2801buffer[pixel*3+1] = ws2801buffer[(pixel-1)*3+1];
      ws2801buffer[pixel*3+2] = ws2801buffer[(pixel-1)*3+2];
    }
    ws2801buffer[0] = r; //Set first pixel to value
    ws2801buffer[1] = g;
    ws2801buffer[2] = b;
  }

  void ICACHE_FLASH_ATTR ws2801_set( uint16_t pixel, uint8_t r, uint8_t g, uint8_t b)
  {
    if (!ws2801buffer) { return; }
    if (pixel>=ws2801amount) return; //Ignore when pixel is higher than ws2801amount of pixels
    ws2801buffer[pixel*3] = r;
    ws2801buffer[pixel*3+1] = g;
    ws2801buffer[pixel*3+2] = b;
  }

  void ICACHE_FLASH_ATTR ws2801_set_all(uint8_t r, uint8_t g, uint8_t b)
  {
    if (!ws2801buffer) { return; }
    uint16_t pixel;
    for (pixel=0; pixel<ws2801amount; pixel++) {
      ws2801buffer[pixel*3] = r;
      ws2801buffer[pixel*3+1] = g;
      ws2801buffer[pixel*3+2] = b;
    }
  } 
#endif
