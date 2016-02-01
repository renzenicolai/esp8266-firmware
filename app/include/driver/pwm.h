#ifndef PWM_H
  #define PWM_H
  #ifdef PWM
    bool ICACHE_FLASH_ATTR pwm_init( uint8_t r, uint8_t g, uint8_t b ); //Enable
    void ICACHE_FLASH_ATTR pwm_stop( void ); //Disable
    void ICACHE_FLASH_ATTR pwm_set( uint16_t pixel, uint8_t r, uint8_t g, uint8_t b ); //Change pixel to color (does not update ledstrip)
    void ICACHE_FLASH_ATTR pwm_set_all( uint8_t r, uint8_t g, uint8_t b ); //Change all pixels to color (does not update ledstrip)
    uint8_t ICACHE_FLASH_ATTR pwm_get( uint8_t color );
  #endif
#endif
