#! /bin/zsh

MONITOR_OPTIONS="     [ 1 ]      xrandr --output eDP1 --mode 1920x1080 --output HDMI2 --off
     [ 1 ][ 2 ] xrandr --output eDP1 --mode 1920x1080 --output HDMI2 --mode 1920x1080 --pos 1920x0
[ 2 ][ 1 ]      xrandr --output eDP1 --mode 1920x1080 --output HDMI2 --mode 1920x1080 --pos -1920x0 
    [ 1=2 ]     xrandr --output eDP1 --mode 1024x768  --output HDMI2 --same-as eDP-1
    [ 1=2 ]     xrandr --output eDP1 --mode 1920x1080 --output HDMI2 --same-as eDP-1
"

$(echo $MONITOR_OPTIONS | dmenu -l 5 -p "Monitor Options:"|sed 's/^.*xrandr/xrandr/')
