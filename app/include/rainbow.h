#ifndef WS2801_H
  #define WS2801_H
  #include "user_config.h"
  #ifdef RAINBOW
    bool ICACHE_FLASH_ATTR rainbow_init( void );
    void ICACHE_FLASH_ATTR rainbow_start( uint8_t mode, uint16_t length, uint8_t step, uint32_t time, uint16_t interface, uint8_t brightness );
    void ICACHE_FLASH_ATTR rainbow_stop( void );
  #endif
#endif
