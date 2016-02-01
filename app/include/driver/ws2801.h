#ifndef WS2801_H
  #define WS2801_H
  #include "user_config.h"
  #ifdef WS2801
    bool ICACHE_FLASH_ATTR ws2801_init( uint16_t pixels, uint8_t r, uint8_t g, uint8_t b ); //Enable
    //void ICACHE_FLASH_ATTR ws2801_free( void ); //Free used memory
    void ICACHE_FLASH_ATTR ws2801_stop( void ); //Disable
    void ICACHE_FLASH_ATTR ws2801_send( bool clear );  //Update
    void ICACHE_FLASH_ATTR ws2801_push( uint8_t r, uint8_t g, uint8_t b ); //Push value into buffer (does not update ledstrip)
    void ICACHE_FLASH_ATTR ws2801_set( uint16_t pixel, uint8_t r, uint8_t g, uint8_t b ); //Change pixel to color (does not update ledstrip)
    void ICACHE_FLASH_ATTR ws2801_set_all( uint8_t r, uint8_t g, uint8_t b ); //Change all pixels to color (does not update ledstrip)
    #define WS2801_DAT 13 //Can not be changed! This driver uses the HSPI features of the ESP8266 which are on pin 13 and 14
    #define WS2801_CLK 14 
  #endif
#endif
