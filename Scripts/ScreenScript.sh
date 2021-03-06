#!/bin/bash
screen=$(echo -e "1\n2\n3" | dmenu  -p "Laptop,Monitor or Both? [1;2;3]" )  
case "$screen" in

1)
xrandr --output eDP-1-1 --auto && xrandr --output HDMI-0 --off
;;
2)
xrandr --output HDMI-0 --auto && xrandr --output eDP-1-1 --off 
;;
3)
xrandr --output HDMI-0 --auto && xrandr --output eDP-1-1 --off 
xrandr --output eDP-1-1 --primary --right-of HDMI-0 --auto  && xrandr --output HDMI-0 --auto 
;;
esac
