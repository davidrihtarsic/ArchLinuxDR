#!/bin/zsh

notify-send "UDISKSCTL :" "$($(lsblk |grep part |grep "sd[c-z]\|mmc"|dmenu -l 10 -p "(UN-)MOUNT USB" | sed 's/^└─//' | awk '{if($7 == ""){print "udisksctl mount -b /dev/"$1}else{print "udisksctl unmount -b /dev/"$1}}'))"
