#!/bin/sh

xrandr --output DP-4 --mode 2560x1440 --rate 144
feh --bg-fill ~/Pictures/wallpapers/.selected_wallpaper.png
#picom -b
exec bspwm
#exec dbus-launch --exit-with-session startplasma-x11 
