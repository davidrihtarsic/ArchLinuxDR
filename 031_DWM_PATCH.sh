#! /bin/bash
set -e
echo -e '\e[33m' #rumena
echo "################################################################################"
echo "   Building&PATCHING"
echo "################################################################################"

#PWD=$(pwd)
#
#[[ -d ~/.local/build/dwm ]] && rm -R ~/.local/build/dwm
#git clone https://git.suckless.org/dwm ~/.local/build/dwm
#cd ~/.local/build/dwm && sudo make 
#
#patch ~/.local/build/dwm/config.h /home/david/Files/GitHub_noSync/ArchLinuxDR/home-david/.config/dwm/davids_dwm.patch

./888_Sync_HomeDir.sh

echo -e '\e[32m' #zelena
echo "################################################################################"
echo "   DWM patched"
echo "################################################################################"

cp -s ./home/.local/build/dwm/config.h ~/.local/build/dwm/config.h
cd ~/.local/build/dwm && sudo make clean install

echo -e '\e[32m' #zelena
echo "################################################################################"
echo "   DWM INSTALLED & PATCHED"
echo "################################################################################"
sleep 1
