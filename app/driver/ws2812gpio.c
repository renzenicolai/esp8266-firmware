#include <user_interface.h>
#include <ets_sys.h>
#include <osapi.h>
#include <mem.h>
#include <user_config.h>
#include <gpio.h>
#include "driver/ws2812gpio.h"

#ifdef WS2812GPIO
  uint8_t* ws2812buffer;
  uint16_t amount;
  static uint32_t theport = WS2812PIN;

  /*void ICACHE_FLASH_ATTR SEND_WS_0()
  {
      uint8_t time;
      time = 4; while(time--) WRITE_PERI_REG( PERIPHS_GPIO_BASEADDR + 4, theport );
      time = 9; while(time--) WRITE_PERI_REG( PERIPHS_GPIO_BASEADDR + 8, theport );
  }

  void ICACHE_FLASH_ATTR SEND_WS_1()
  {
      uint8_t time;
      time = 8; while(time--) WRITE_PERI_REG( PERIPHS_GPIO_BASEADDR + 4, theport );
      time = 6; while(time--) WRITE_PERI_REG( PERIPHS_GPIO_BASEADDR + 8, theport );
  }*/
  
  void ICACHE_FLASH_ATTR SEND_WS_0()
  {
  uint8_t time;
  time = 4; while(time--) WRITE_PERI_REG( PERIPHS_GPIO_BASEADDR , 0x2000 );
  time = 9; while(time--) WRITE_PERI_REG( PERIPHS_GPIO_BASEADDR , 0 );
  }

  void ICACHE_FLASH_ATTR SEND_WS_1()
  {
  uint8_t time;
  time = 8; while(time--) WRITE_PERI_REG( PERIPHS_GPIO_BASEADDR , 0x2000 );
  time = 6; while(time--) WRITE_PERI_REG( PERIPHS_GPIO_BASEADDR , 0 );
  }
  
/*void ICACHE_FLASH_ATTR SEND_WS_0()
{
uint8_t time;

time = 4; while(time--) GPIO_REG_WRITE(GPIO_OUT_W1TS_ADDRESS, 1 << WS2812PIN);
time = 9; while(time--) GPIO_REG_WRITE(GPIO_OUT_W1TC_ADDRESS, 1 << WS2812PIN);
}

void ICACHE_FLASH_ATTR SEND_WS_1()
{
uint8_t time;

time = 8; while(time--) GPIO_REG_WRITE(GPIO_OUT_W1TS_ADDRESS, 1 << WS2812PIN);
time = 6; while(time--) GPIO_REG_WRITE(GPIO_OUT_W1TC_ADDRESS, 1 << WS2812PIN);

} */

  void ICACHE_FLASH_ATTR ws2812_send( bool clear)//( uint8_t * buffer, uint16_t length, uint16_t repetition )
  {
    GPIO_OUTPUT_SET(GPIO_ID_PIN(13), 0);
    uint16_t i;
    ets_intr_lock();
    WRITE_PERI_REG( PERIPHS_GPIO_BASEADDR + 8, theport );

    //while (repetition--) {
      for( i = 0; i < amount; i++ ) {
        uint8_t mask = 0x80;
        uint8_t byte = ws2812buffer[i];
        while (mask) {
          ( byte & mask ) ? SEND_WS_1() : SEND_WS_0();
          mask >>= 1;
        }
      }
    //}
    ets_intr_lock();
  }

  bool ICACHE_FLASH_ATTR ws2812_init(uint16_t pixels, uint8_t r, uint8_t g, uint8_t b)
  {
    os_printf("Using WS2812 GPIO driver!\r\n");
    if (ws2812buffer!=NULL) return true;
    amount = pixels;
    ws2812buffer = (uint8_t*) os_malloc(pixels*3); //Malloc buffer (3 bytes per pixel: R, G and B)
    if (!ws2812buffer) {
      return false; //Return if malloc failed
    }
    uint16_t pos;
    for(pos = 0; pos<pixels; pos++) { //Fill buffer with initial values
      ws2812buffer[pos*3+0] = r;
      ws2812buffer[pos*3+1] = g;
      ws2812buffer[pos*3+2] = b;
    }
    theport = WS2812PIN;
    PIN_FUNC_SELECT(PERIPHS_IO_MUX_MTCK_U, FUNC_GPIO13);
    //gpio_output_set(0, (1<<WS2812PIN), (1<<WS2812PIN), 0);
    //gpio_output_set((1<<WS2812PIN), 0, (1<<WS2812PIN), 0);
    os_printf("WS2812PIN=%d\r\n",WS2812PIN);
    //WRITE_PERI_REG( PERIPHS_GPIO_BASEADDR + 8, theport );
    ws2812_send(true); //Update ledstrip with initial values
    return true;
  }

  void ICACHE_FLASH_ATTR ws2812_free( void )
  {
    if (!ws2812buffer) return;
    os_free(ws2812buffer);
    ws2812buffer = (uint8_t*) NULL;
  }

  void ICACHE_FLASH_ATTR ws2812_stop( void )
  {
    ws2812_free();
  }
  
  void ICACHE_FLASH_ATTR ws2812_push(uint8_t r, uint8_t g, uint8_t b)
  {
    if (!ws2812buffer) return;
    uint16_t pixel;
    for (pixel = amount-1; pixel>0; pixel--) {
      ws2812buffer[pixel*3] = ws2812buffer[(pixel-1)*3];
      ws2812buffer[pixel*3+1] = ws2812buffer[(pixel-1)*3+1];
      ws2812buffer[pixel*3+2] = ws2812buffer[(pixel-1)*3+2];
    }
    ws2812buffer[0] = g; //Set first pixel to value
    ws2812buffer[1] = r;
    ws2812buffer[2] = b;
  }

  void ICACHE_FLASH_ATTR ws2812_set( uint16_t pixel, uint8_t r, uint8_t g, uint8_t b)
  {
    if (!ws2812buffer) return; //Ignore when data buffer has not been initialized
    if (pixel>=amount) return; //Ignore when pixel is higher than amount of pixels
    ws2812buffer[pixel*3] = g;
    ws2812buffer[pixel*3+1] = r;
    ws2812buffer[pixel*3+2] = b;
  }

  void ICACHE_FLASH_ATTR ws2812_set_all(uint8_t r, uint8_t g, uint8_t b)
  {
    if (!ws2812buffer) return; //Ignore when data buffer has not been initialized
    uint16_t pixel;
    for (pixel=0; pixel<amount; pixel++) {
      ws2812buffer[pixel*3] = g;
      ws2812buffer[pixel*3+1] = r;
      ws2812buffer[pixel*3+2] = b;
    }
  }  
#endif

