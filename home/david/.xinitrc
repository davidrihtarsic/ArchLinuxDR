#!/bin/sh 
# this file is run when calling startx 
#echo "text from .xinitrc" >> ~/testing.txt 
# default arch init scripts
if [ -d /etc/X11/xinit/xinitrc.d ]; then
    for f in /etc/X11/xinit/xinitrc.d/*.sh; do
        [ -x "$f" ] && . "$f"
    done
fi

# user init scripts and settings
[ -r /etc/X11/xinit/.Xmodmap ] && xmodmap /etc/X11/xinit/.Xmodmap
[ -r $HOME/.config/X11/.Xmodmap ] && xmodmap $HOME/.config/X11/.Xmodmap
[ -r $HOME/.config/X11/.Xresources ] && xrdb -merge $HOME/.config/X11/.Xresources
[ -r $HOME/.config/X11/.xprofile ] && . $HOME/.config/X11/.xprofile

# Add all sub-directories in PATH
add_sub_dir_in="$HOME/.local/bin"
if [[ "$PATH" != *"$add_sub_dir_in"* ]]
  then
    add_to_path=$add_sub_dir_in
    for d in $(ls -d $add_sub_dir_in**/*(/)); do add_to_path="$add_to_path:$d"; done
    export PATH=$PATH:$add_to_path
fi

echo $PATH > test_PATH_from_xinitrc.md
################################
# DWM testing
################################
# key bindings
# sxhkd &
# compton &

# remap/switch caps and ecape
# setxkbmap -option caps:escape

#remap tipko [dz] - "/"
#xmodmap -e "keycode 35 = slash"
# xmodmap /home/david/.Xmodmap
# launch the session, commands below this line will be ignored
/home/david/.local/bin/dmwStatusBar/dwmStatusBar &
# /home/david/bin/system/dwm-status-dwd.sh &
# slstatus &
xautolock \
  -time 7 \
  -locker "systemctl suspend-then-hibernate" \
  -notify 30 \
  -notifier "notify-send -t 30000 'GOING TO SLEEP in 30s.'"&  
exec dwm
################################
