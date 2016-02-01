#ifndef WS2812GPIO_H
#define WS2812GPIO_H
  #include "user_config.h"
  #ifdef WS2812GPIO
    #define WS2812PIN 13
    #include "c_types.h"
    #include "user_interface.h"
    #include "ets_sys.h"
    #include "gpio.h"
    bool ICACHE_FLASH_ATTR ws2812_init( uint16_t pixels, uint8_t r, uint8_t g, uint8_t b ); //Enable
    //void ICACHE_FLASH_ATTR ws2812_free( void ); //Free used memory
    void ICACHE_FLASH_ATTR ws2812_stop( void ); //Disable
    void ICACHE_FLASH_ATTR ws2812_send( bool clear );  //Update
    void ICACHE_FLASH_ATTR ws2812_push( uint8_t r, uint8_t g, uint8_t b ); //Push value into buffer (does not update ledstrip)
    void ICACHE_FLASH_ATTR ws2812_set( uint16_t pixel, uint8_t r, uint8_t g, uint8_t b ); //Change pixel to color (does not update ledstrip)
    void ICACHE_FLASH_ATTR ws2812_set_all( uint8_t r, uint8_t g, uint8_t b ); //Change all pixels to color (does not update ledstrip)
  #endif
#endif
