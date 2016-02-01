#!/bin/bash
cd filesystem
./build.sh
cd ..
esptool.py --port /dev/ttyUSB0 erase_flash
echo "OK"
sleep 10
esptool.py --port /dev/ttyUSB0 write_flash 0x00000 ../../rboot/firmware/rboot.bin 0x01000 ../bin/upgrade/user1.4096.new.6.bin 0x1FC000 filesystem/rgbw.espfs --flash_size 32m --flash_freq 40m
