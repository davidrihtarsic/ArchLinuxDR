# ArcoLinuxD

V tem repositoriju se nahajajo kofiguracije za ArcoLinuxDR (ArcoLinuxD+Rihti_nastavitve=ArcoLinuxDR).

# OS Installation
Install ArcoLinuxD_xyz.iso from: https://arcolinux.info/download

Follow graphical installation UI...

# Essential Installation

## TRIZEN (AUR package manager)
git clone https://aur.archlinux.org/trizen.git ~/build/trizen
cd ~/build/trizen && makepkg -si

## DWM (Suckles)

## ZSH

## Installing archlinux

Nekaj zaporednih komand:

    loadkeys slovene
      pacman-key --init
      pacman-key --populate archlinux
    archinstall

    packeges : git neovim ranger 

... kot kaže, si lahko shraniš nastavitve... shraniš jih lahko

probejmo it v chroot in inštalirat zsh
