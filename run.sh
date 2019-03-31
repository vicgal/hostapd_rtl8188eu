#!/bin/bash

OS_VERSION=$(echo $RESIN_HOST_OS_VERSION | cut -d " " -f 2)
echo "OS Version is $OS_VERSION"

rmmod r8188eu
insmod ./8188eu.ko
./hostapd-2.7/hostapd/hostapd -B ./hostapd.conf

while true; do
	sleep 60
done
