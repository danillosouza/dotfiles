#!/bin/zsh
default="eDP"
external="HDMI-A-0"
mons=`xrandr | grep "$external connected" | wc -l`

if [ $mons > 0 ]
then
	xrandr --output "$external" --mode 1920x1080
	xrandr --output "$default" --auto --output "$external" --primary --right-of "$default"
fi

exit 0
