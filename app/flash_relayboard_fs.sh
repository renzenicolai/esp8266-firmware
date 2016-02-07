#!/bin/bash
cd filesystem
./build.sh
cd ..
esptool.py --port /dev/ttyUSB0 --baud 230400 write_flash 0x1FC000 filesystem/relayboard-v2.1.espfs --flash_size 32m --flash_freq 40m
