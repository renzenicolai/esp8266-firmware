#!/bin/bash
python2 ~/esptool.py --port /dev/ttyUSB0 write_flash 0x101000 ../bin/upgrade/user1.4096.new.6.bin --flash_size 32m --flash_freq 40m
