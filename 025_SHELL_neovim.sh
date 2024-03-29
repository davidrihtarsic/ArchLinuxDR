#! /bin/bash
set -e
echo -e '\e[33m' #rumena
echo "################################################################################"
echo "   neoVim"
echo "################################################################################"
echo -e '\e[00m' #default

sudo pacman -S --noconfirm --needed neovim fzf 
# install plugin namager
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#yay -S --noconfirm --needed universal-ctags-git
yay -S --noconfirm --needed markdown2ctags
#pip3 install --user neovim

#  install Coc
sudo pacman -S --noconfirm --needed nodejs
yay -S --noconfirm --needed neovim-coc

echo -e '\e[32m' #zelena
echo "################################################################################"
echo "   NeoVIM INSTALLED"
echo "################################################################################"
echo -e '\e[00m' #default

sleep 1
