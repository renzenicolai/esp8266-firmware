#ifndef __I2C_MCP23008_H
#define	__I2C_BMP23008_H

#include "c_types.h"
#include "ets_sys.h"
#include "osapi.h"

#define MCP23008_ADDRESS   0x20

// registers
#define MCP23008_IODIR 0x00
#define MCP23008_IPOL 0x01
#define MCP23008_GPINTEN 0x02
#define MCP23008_DEFVAL 0x03
#define MCP23008_INTCON 0x04
#define MCP23008_IOCON 0x05
#define MCP23008_GPPU 0x06
#define MCP23008_INTF 0x07
#define MCP23008_INTCAP 0x08
#define MCP23008_GPIO 0x09
#define MCP23008_OLAT 0x0A

uint8_t MCP23008_getInput(uint8_t pin);
uint8_t MCP23008_getAll( void );
uint8_t MCP23008_getAll_intcap( void );
void MCP23008_setOutput(uint8_t pin, bool value);
void MCP23008_setAll(uint8_t value);
bool MCP23008_Init(uint8_t iodir, uint8_t ipol, uint8_t pullup, uint8_t gpinten);

#endif
