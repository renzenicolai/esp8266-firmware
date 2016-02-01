#ifndef FLASH_H
#define FLASH_H

#define FLASH_BOOTLOADER_POS      0x000000 //BOOTLOADER
#define FLASH_BOOTLOADER_SIZE     0x001000 // 4KB
#define FLASH_USER1_POS           0x001000 //USER APP 1
#define FLASH_USER1_SIZE          0x0FB000 // 940KB
#define FLASH_USER_SETTINGS_POS   0x0FC000 //USER SETTINGS
#define FLASH_USER_SETTINGS_SIZE  0x001000 // 4KB
#define FLASH_WIFI_SETTINGS_POS   0x0FD000 //WIFI SETTINGS
#define FLASH_WIFI_SETTINGS_SIZE  0x001000 // 4KB
#define FLASH_BOOT_SETTINGS_POS   0x0FE000 //BOOT SETTINGS
#define FLASH_BOOT_SETTINGS_SIZE  0x001000 // 4KB
#define FLASH_NOTUSED1_POS        0x0FF000 
#define FLASH_NOTUSED1_SIZE       0x001000 // 4KB
#define FLASH_RESERVED_POS        0x100000 //RESERVED
#define FLASH_RESERVED_SIZE       0x001000 // 4KB
#define FLASH_USER2_POS           0x101000 //USER APP 2
#define FLASH_USER2_SIZE          0x0FB000 // 940KB
#define FLASH_ESPFS_POS           0x1FC000 //ESPFS
#define FLASH_ESPFS_SIZE          0x200000 // 2048KB
#define FLASH_SYSPARAM_POS        0x3FC000 //SYSTEM PARAM
#define FLASH_SYSPARAM_SIZE       0x004000 // 16KB

#define SETTINGS_SECTOR           0xFC
#define WIFI_SETTINGS_SECTOR      0xFD
#define BOOT_SETTINGS_SECTOR      0xFE
#define FLASH_FIRMWARE_SIZE       FLASH_USER1_SIZE
#define FLASH_FIRMWARE_SECTORS    FLASH_FIRMWARE_SIZE/SPI_FLASH_SEC_SIZE
#define FLASH_USER1_SECTOR        FLASH_USER1_POS/SPI_FLASH_SEC_SIZE
#define FLASH_USER2_SECTOR        FLASH_USER2_POS/SPI_FLASH_SEC_SIZE

/*#include <esp8266.h>

typedef struct Partition Partition;
struct Partition {
  int offset;
  int size;
};

extern Partition partition[];

void ICACHE_FLASH_ATTR erase_partition(int part);
void ICACHE_FLASH_ATTR erase_block(int address);
int ICACHE_FLASH_ATTR flash_binary(char *data, int size, int part);
int ICACHE_FLASH_ATTR get_web_partition();
void reset_flash(); */

#endif
