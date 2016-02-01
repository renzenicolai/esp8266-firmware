#!/bin/bash
python2 ~/esptool.py --port /dev/ttyUSB0 write_flash 0x00000 firmware/rboot.bin --flash_size 32m --flash_freq 40m
