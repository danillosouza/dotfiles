#!/bin/zsh
default="$(xrandr | grep -i edp | awk '{print $1}')"
external="$(xrandr | grep -i hdmi | awk '{print $1}')"
mons=`xrandr | grep "$external connected" | wc -l`

if [ $mons > 0 ]
then
	xrandr --output "$external" --mode 1920x1080
	xrandr --output "$default" --auto --output "$external" --primary --right-of "$default"
fi

exit 0
