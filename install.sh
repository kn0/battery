#!/bin/sh
# install battery msf scripts
# (c) Thom Hastings 2018 GNU GPLv3
# h/t: @TrentonIvey aka kn0
# https://github.com/kn0/battery
#
# plz run as root on kali linux
#
echo "Installing..."
# mk dirs
mkdir -p ~/.msf4/scripts/resource/
# copy battery script
cp -rf battery.rc ~/.msf4/scripts/resource/
# copy battery directory
cp -R -rf battery ~/.msf4/scripts/resource/battery
# let the user know it worked
echo "battery installed to ~/.msf4/scripts/resource"
