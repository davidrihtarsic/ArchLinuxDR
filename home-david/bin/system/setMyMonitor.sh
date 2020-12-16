#! /bin/zsh

MON=$(xrandr | grep " connected" | tail -1 | awk '{print $1;}')

MONITOR_OPTIONS="     [ 1 ]      xrandr --output eDP1 --mode 1920x1080 --output $MON --off
     [ 1 ][ 2 ] xrandr --output eDP1 --mode 1920x1080 --output $MON --mode 1920x1080 --pos 1920x0
[ 2 ][ 1 ]      xrandr --output eDP1 --mode 1920x1080 --output $MON --mode 1920x1080 --pos -1920x0 
    [ 1=2 ]     xrandr --output eDP1 --mode 1024x768  --output $MON --same-as eDP-1
    [ 1=2 ]     xrandr --output eDP1 --mode 1920x1080 --output $MON --same-as eDP-1
"

$(echo $MONITOR_OPTIONS | dmenu -l 5 -p "Monitor Options:"|sed 's/^.*xrandr/xrandr/')
