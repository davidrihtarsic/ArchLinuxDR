#! /bin/bash
set -e

echo -e '\e[33m' #rumena
echo "################################################################################"
echo "   Installing YAY"
echo "################################################################################"

[[ -d ~/build/yay ]] && rm -R ~/build/yay
git clone https://aur.archlinux.org/yay.git ~/build/yay
cd ~/build/yay && makepkg -si

echo -e '\e[32m' #zelena
echo "################################################################################"
echo "    YAY AUR manager INSTALLED"
echo "################################################################################"

sleep 1
