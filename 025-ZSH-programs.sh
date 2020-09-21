#! /bin/bash
set -e
echo -e '\e[33m' #rumena
echo "################################################################################"
echo "    Installing esential prog..."
echo "################################################################################"

sudo pacman -S --noconfirm --needed sxhkd
sudo pacman -S --noconfirm --needed xsel
sudo pacman -S --noconfirm --needed xclip

trizen -S --noconfirm --needed ranger-git
[ ! -d "$HOME/.deleted_files" ] && mkdir ~/.deleted_files

yay -S --noconfirm --needed dragon-drag-and-drop #terminal drag-and-drop

sudo pacman -S --noconfirm --needed neovim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo -e '\e[32m' #zelena
echo "################################################################################"
echo "    Esentials INSTALLED"
echo "################################################################################"

git config --global user.name "David Rihtarsic"
git config --global user.email "david.rihtarsic@gmail.com"


sleep 1
