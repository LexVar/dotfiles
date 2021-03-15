#!/bin/bash
xrandr --output eDP --pos 100x0 --output HDMI-A-0 --primary --mode 2560x1080 --pos 0x1080;
sleep 3;
xrandr --output eDP --primary --mode 1920x1080 --pos 80x1080 --output HDMI-A-0 --mode 2560x1080 --pos 0x0;
