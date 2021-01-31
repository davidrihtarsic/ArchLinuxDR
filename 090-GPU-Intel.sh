#!/bin/bash
set -e

echo -e '\e[33m' #rumena
echo "################################################################################"
echo "    INTEL GRAPHIC CARD"
echo "################################################################################"

# imam:
# - Intel HD Graphicd 630 (i915)    
# - NVIDIA GF GTX 1050 Mo (GP107M)  => NV137
sudo pacman -S --noconfirm --needed libva-intel-driver

echo "POMEMBNO: V /etc/default/grub  moraš dodat : i915.enable_guc=2 v Kernel parametre.
  GRUB_CMDLINE_LINUX_DEFAULT='... i915.enable_guc=2 ..."

echo -e '\e[32m' #zelena
echo "################################################################################"
echo "    INTEL GRAPHIC CARD INSTALLED"
echo "################################################################################"

sleep 1
