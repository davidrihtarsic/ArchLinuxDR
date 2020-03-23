#!/bin/bash
set -e
echo -e '\e[33m'
echo "################################################################################"
echo "    Installing PDF generators"
echo "################################################################################"
# Pandoc, pdfutils, pdftk...
# LaTEC
sudo pacman -S --noconfirm --needed pandoc
sudo pacman -S --noconfirm --needed texlive-latexextra
sudo pacman -S --noconfirm --needed texlive-fontsextra
sudo pacman -S --noconfirm --needed texlive-core
trizen -S --noconfirm --needed pandoc-crossref pandoc-citeproc

# Panzer ne uporabljam več, ker lahko vse narediš s pandoc komando in daš v ukaz parametre, ki jih potrebuješ
# sudo pacman -S --noconfirm --needed pandoc panzer-git
# po inštalaciji panzer-git sem moral narediti ~/.panzer directory
echo -e '\e[32m'
echo "################################################################################"
echo "    OFFICE TOOLS INSTALLED"
echo "################################################################################"

sleep 1
