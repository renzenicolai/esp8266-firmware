#include <ets_sys.h>
#include <osapi.h>
#include "util/checkstring.h"


//Usage: checkstring(<Pointer to string>, <Max length>). Returns true when string fits.
bool ICACHE_FLASH_ATTR checkstring(char* string, uint16_t length) {
  uint16_t i;
  for (i=0; i<length; i++) if (string[i]==0) return true;
  return false;
}
