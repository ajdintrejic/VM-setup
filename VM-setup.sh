#!/bin/bash

#Set keyboard layout to croatian
echo "Setting keyboard layout: hr"
setxkbmap hr

#Change the resolution
echo "Changing the resolution: 1920x1080"
xrandr --newmode "1920x1080"  173.00  1920 2048 2248 2576  1080 1083 1088 1120 -hsync +vsync
xrandr --addmode Virtual1 1920x1080
xrandr --output Virtual1 --mode 1920x1080

#Install gobuster if running Kali
DISTRO=`uname -r`
echo "Running: " $DISTRO
if [[ $DISTRO == *"KALI"* ]]; then	
	echo "Kali detected"
	echo "Installing: gobuster"
	apt-get update  #Get the latest package lists
	apt-get install gobuster -y
else
	echo "Kali not detected, not installing any packages"
fi

echo "Bye!"
