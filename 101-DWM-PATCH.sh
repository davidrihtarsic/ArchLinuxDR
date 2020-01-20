#! /bin/bash
set -e
echo -e '\e[33m' #rumena
echo "################################################################################"
echo "   Building&PATCHING"
echo "################################################################################"

PWD=$(pwd)

[[ -d ~/build/dwm ]] && rm -R ~/build/dwm
git clone https://git.suckless.org/dwm ~/build/dwm
cd ~/build/dwm && sudo make 

patch ~/build/dwm/config.h /home/david/Files/GitHub_noSync/ArchLinuxDR/home-david/.config/dwm/davids_dwm.patch

echo -e '\e[32m' #zelena
echo "################################################################################"
echo "   DWM patched"
echo "################################################################################"

cd ~/build/dwm && sudo make clean install
echo -e '\e[32m' #zelena
echo "################################################################################"
echo "   DWM INSTALLED & PATCHED"
echo "################################################################################"
sleep 1
