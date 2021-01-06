#!/bin/bash
xrandr --output eDP --pos 100x0 --output HDMI-A-0 --primary --mode 2560x1080 --pos 0x1080;
sleep 3;
#xrandr --output HDMI-A-0 --noprimary --pos 100x0 --output eDP --primary --pos 0x1080;
xrandr --output eDP --primary --mode 1920x1080 --pos 0x1080 --output HDMI-A-0 --mode 2560x1080 --pos 100x0;
