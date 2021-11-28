#!/bin/bash
xrandr --output eDP --pos 100x0 --output HDMI-A-0 --primary --mode 2560x1080 --pos 0x1400;
sleep 3;
xrandr --output eDP --primary --mode 2240x1400 --pos 80x1400 --output HDMI-A-0 --mode 2560x1080 --pos 0x0;
#xrandr --output HDMI-A-0 --scale 1.3x1.3
