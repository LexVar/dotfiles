#!/bin/sh

/sbin/rfkill block bluetooth

modprobe -r btusb
modprobe btusb
