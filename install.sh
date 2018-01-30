#!/bin/sh
# install battery msf scripts
# (c) Thom Hastings 2018 GNU GPLv3
# h/t: @TrentonIvey aka kn0
# https://github.com/kn0/battery
#
# plz run as root on kali linux
#
# mk dirs
if [ ! -e "~/.msf4/scripts/" ]
	then mkdir ~/.msf4/scripts/
fi
if [ ! -e "~/.msf4/scripts/resource/" ]
	then mkdir ~/.msf4/scripts/resource/
fi
# copy battery directory
cp -R battery ~/.msf4/scripts/resource/battery
# copy battery script
cp battery.rc ~/.msf4/scripts/resource/
# let the user know it worked
echo "battery installed to ~/.msf4/scripts/resource"