#!/bin/bash
cd filesystem
./build.sh
cd ..
python2 ~/esptool.py --port /dev/ttyUSB0 erase_flash
python2 ~/esptool.py --port /dev/ttyUSB0 write_flash 0x00000 ../../rboot/firmware/rboot.bin 0x01000 ../bin/upgrade/user1.4096.new.6.bin 0x1FC000 filesystem/relayboard-v2.1.espfs --flash_size 32m --flash_freq 40m
