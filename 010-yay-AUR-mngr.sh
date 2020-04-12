#! /bin/bash
set -e

echo -e '\e[33m' #rumena
echo "################################################################################"
echo "   Installing YAY"
echo "################################################################################"

[[ -d ~/.local/build/yay ]] && rm -R ~/.local/build/yay
git clone https://aur.archlinux.org/yay.git ~/.local/build/yay
cd ~/.local/build/yay && makepkg -si

echo -e '\e[32m' #zelena
echo "################################################################################"
echo "    YAY AUR manager INSTALLED"
echo "################################################################################"

sleep 1
