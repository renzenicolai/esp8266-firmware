#include <esp8266.h>

int ICACHE_FLASH_ATTR power(int base, int exp)
{
    int result = 1;
    while(exp) { result *= base; exp--; }
    return result;
}

static char* ICACHE_FLASH_ATTR ftoa(float num, uint8_t decimals)
{
  // float to string; no float support in esp8266 sdk printf
  // warning: limited to 15 chars & non-reentrant
  // e.g., dont use more than once per os_printf call
  static char* buf[16];
  
  bool neg = false;
  if (num < 0) {
    num = -num;
    neg = true;
  }
  
  int whole = num;
  int decimal = (num - whole) * power(10, decimals);
  if (decimal < 0) {
    // get rid of sign on decimal portion
    decimal -= 2 * decimal;
  }
  char* pattern[10]; // setup printf pattern for decimal portion
  if (neg) {
    os_sprintf(pattern, "-%%d.%%0%dd", decimals);
  } else {
    os_sprintf(pattern, "%%d.%%0%dd", decimals);
  }
  os_sprintf(buf, pattern, whole, decimal);
  return (char *)buf;
}
