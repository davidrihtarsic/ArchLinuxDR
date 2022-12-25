#! /bin/bash
set -e

echo -e '\e[33m' #rumena
echo "################################################################################"
echo "   Installing YAY"
echo "################################################################################"
echo -e '\e[00m'

#installing known dependencies
sudo pacman -S --noconfirm --needed go

[[ -d ~/.local/build/yay ]] && rm -R ~/.local/build/yay
git clone https://aur.archlinux.org/yay.git ~/.local/build/yay
cd ~/.local/build/yay && makepkg -si

#instaliraj tudi rpm-tools za instalacijo rpm paketov
# maprimer MS teams je na voljo za linux le v RPM paketu.
# yay -S rpm-tools

echo -e '\e[32m' #zelena
echo "################################################################################"
echo "    YAY AUR manager INSTALLED"
echo "################################################################################"
echo -e '\e[00m'

sleep 1
