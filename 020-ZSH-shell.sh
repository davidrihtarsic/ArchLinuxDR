#! /bin/bash
set -e

echo -e '\e[33m' #rumena
echo "################################################################################"
echo "    Installing OH-MY-ZSH"
echo "################################################################################"

sudo pacman -S --noconfirm --needed zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

echo -e '\e[32m' #zelena
echo "################################################################################"
echo "    OH-MY-ZSH Installed"
echo "################################################################################"

echo -e '\e[33m' #rumena
echo "################################################################################"
echo "    Installing esential prog..."
echo "################################################################################"



sleep 1
