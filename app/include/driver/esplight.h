#ifndef ESPLIGHT_H
  #define ESPLIGHT_H
  #include "user_config.h"
  #ifdef ESPLIGHT
    bool ICACHE_FLASH_ATTR initEsplightUdp();
    void ICACHE_FLASH_ATTR esplight_stop();
  #endif
#endif
