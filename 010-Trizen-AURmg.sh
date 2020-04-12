#! /bin/bash
set -e

echo -e '\e[33m' #rumena
echo "################################################################################"
echo "   Installing trizen"
echo "################################################################################"

[[ -d ~/.local/build/trizen ]] && rm -R ~/.local/build/trizen
git clone https://aur.archlinux.org/trizen.git ~/.local/build/trizen
cd ~/.local/build/trizen && makepkg -si

echo -e '\e[32m' #zelena
echo "################################################################################"
echo "    Trizen AUR manager INSTALLED"
echo "################################################################################"

sleep 1
