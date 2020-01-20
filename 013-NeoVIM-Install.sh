#! /bin/bash
set -e
echo -e '\e[33m' #rumena
echo "################################################################################"
echo "   neoVim"
echo "################################################################################"

sudo pacman -S --noconfirm --needed neovim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

trizen -S --noconfirm --needed universal-ctags-git
trizen -S --noconfirm --needed markdown2ctags
sudo pacman -S --noconfirm --needed fzf
pip3 install --user neovim

echo -e '\e[32m' #zelena
echo "################################################################################"
echo "   NeoVIM INSTALLED"
echo "################################################################################"

sleep 1
