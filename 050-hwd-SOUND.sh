#!/bin/bash
set -e

echo -e '\e[33m' #rumena
echo "################################################################################"
echo "    SOUND"
echo "################################################################################"

sudo pacman -S pulseaudio --noconfirm --needed
sudo pacman -S pulseaudio-alsa --noconfirm --needed
sudo pacman -S pavucontrol  --noconfirm --needed
sudo pacman -S alsa-utils alsa-plugins alsa-lib alsa-firmware --noconfirm --needed
sudo pacman -S gstreamer --noconfirm --needed
sudo pacman -S gst-plugins-good gst-plugins-bad gst-plugins-base gst-plugins-ugly --noconfirm --needed
#sudo pacman -S volumeicon --noconfirm --needed
sudo pacman -S playerctl --noconfirm --needed

echo -e '\e[32m' #zelena
echo "################################################################################"
echo "    SOUND INSTALLED"
echo "################################################################################"
sleep 1
