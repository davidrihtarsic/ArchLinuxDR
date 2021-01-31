#!/bin/bash
set -e

echo -e '\e[33m' #rumena
echo "################################################################################"
echo "    SOUND"
echo "################################################################################"

sudo pacman -S --noconfirm --needed pulseaudio
sudo pacman -S --noconfirm --needed pulseaudio-alsa
sudo pacman -S --noconfirm --needed pavucontrol
sudo pacman -S --noconfirm --needed alsa-utils alsa-plugins alsa-lib alsa-firmware
sudo pacman -S --noconfirm --needed gstreamer
sudo pacman -S --noconfirm --needed gst-plugins-good gst-plugins-bad gst-plugins-base gst-plugins-ugly
sudo pacman -S --noconfirm --needed playerctl
#sudo pacman -S volumeicon --noconfirm --needed

echo -e '\e[32m' #zelena
echo "################################################################################"
echo "    SOUND INSTALLED"
echo "################################################################################"
sleep 1
