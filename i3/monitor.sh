#! /bin/bash
xrandr --auto & echo "monitor on" & sleep .3
xrandr --output HDMI-1-0 --right-of eDP-1 & echo "Monitor goin' right" & sleep .3
xrandr --output eDP-1 --primary & echo "bosh!" & sleep .3
