#!/bin/zsh

LED=$(cat /sys/class/backlight/intel_backlight/brightness);
LED=$[LED / 2];
if [ "$LED" -lt "12" ];
	then LED=0;
fi;
echo $LED;
brightnessctl --device='intel_backlight' set $LED
#echo $LED > /sys/class/backlight/intel_backlight/brightness
