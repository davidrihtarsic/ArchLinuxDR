#! /bin/zsh

ADD_MODE=$(cvt 1920 1080 60 | grep Modeline | sed 's/Modeline/xrandr --newmode/g')
NEW_MODE=$(echo $ADD_MODE | sed 's/^.* "//;s/".*$//')
echo $ADD_MODE
echo "xrandr --addmode DP1 "$NEW_MODE
echo "xrandr --output DP1 --mode $NEW_MODE --pos 1920x0"
