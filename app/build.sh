#!/bin/bash
export PYTHON=python2
#echo "STEP 1: choose bin generate(1=user1.bin, 2=user2.bin)"
#echo "enter (1/2, default 1):"
#read input

app=1

#if [ $input == 2 ]; then
#    	app=2
#else
#    app=1
#fi

#echo ""

#echo "STEP 1: choose spi speed(0=20MHz, 1=26.7MHz, 2=40MHz, 3=80MHz)"
#echo "enter (0/1/2/3, default 2):"
#read input

#if [ -z "$input" ]; then
#    spi_speed=40
#elif [ $input == 0 ]; then
#    spi_speed=20
#elif [ $input == 1 ]; then
#    spi_speed=26.7
#elif [ $input == 3 ]; then
#    spi_speed=80
#else
#    spi_speed=40
#fi

spi_speed=80

#echo "spi speed: $spi_speed MHz"
#echo ""

#echo "STEP 2: choose spi mode(0=QIO, 1=QOUT, 2=DIO, 3=DOUT)"
#echo "enter (0/1/2/3, default 0):"
#read input

#if [ -z "$input" ]; then
#    spi_mode=QIO
#elif [ $input == 1 ]; then
#    spi_mode=QOUT
#elif [ $input == 2 ]; then
#    spi_mode=DIO
#elif [ $input == 3 ]; then
#    spi_mode=DOUT
#else
#    spi_mode=QIO
#fi

spi_mode=QIO

boot=new
spi_size_map=6
echo -e "Compiling with:\n - Boot: $boot\n - APP: $app\n - SPI size map: $spi_size_map\n - SPI mode: $spi_mode\n - SPI speed: $spi_speed\n"
echo ""

#make clean
make COMPILE=gcc BOOT=$boot APP=$app SPI_SPEED=$spi_speed SPI_MODE=$spi_mode SPI_SIZE_MAP=$spi_size_map
