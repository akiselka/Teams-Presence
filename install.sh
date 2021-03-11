#!/bin/bash
if [ "$(id -u)" != "0" ]; then
	echo "Please re-run as sudo."
	exit 1
fi
echo Updating APT
sudo apt-get update
echo Installing Python3 dev
sudo apt-get install python3-pip python-dev
#You must enable SPI on your Raspberry Pi
sudo raspi-config nonint do_spi 0
echo Installing UNICORN HAT Mini library
sudo pip3 install unicornhatmini
echo Installing qrcode module
sudo pip3 install pyqrcode
echo Installing gpiozero 
sudo pip3 install gpiozero
echo Installing Microsoft Office authentication library
sudo pip3 install msal
