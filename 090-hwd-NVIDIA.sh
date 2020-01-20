#!/bin/bash
set -e

echo -e '\e[33m' #rumena
echo "################################################################################"
echo "    NVIDIA"
echo "################################################################################"

# imam:
# - Intel HD Graphicd 630 (i915)    
# - NVIDIA GF GTX 1050 Mo (GP107M)  => NV137
sudo pacman -S --noconfirm --needed nvidia
sudo pacman -S --noconfirm --needed bbswitch
trizen -S --noconfirm --needed nvidia-xrun-git

###########################
#  NVIDIA-XRUN SETTINGS
###########################
# sudo nvim /etc/X11/nvidia-xorg.conf.d/30-nvidia.conf
# Section "Device"
#     Identifier "nvidia"
#     Driver "nvidia"
#     BusID "PCI:1:0:0"
# EndSection
#
# Section "Screen"
#    Identifier "nvidia"
#    Device "nvidia"
#    Option "AllowEmptyInitialConfiguration" "Yes"   
#    Option "UseDisplayDevice" "none"   
#EndSection

##########################
#  BBSWITCH SETTINGS
##########################
# Load bbswitch module on boot
sudo tee /etc/modules-load.d/bbswitch.conf <<<'bbswitch'
#Disable the nvidia module on boot:
sudo tee /etc/modprobe.d/bbswitch.conf <<<'options bbswitch load_state=0 unload_state=1'
#
# After a reboot, the nvidia card will be off. This can be seen by querying bbswitch's status:
#> cat /proc/acpi/bbswitch  
#
# To force the card to turn on/off respectively run:
#> tee /proc/acpi/bbswitch <<<OFF
#> tee /proc/acpi/bbswitch <<<ON
#
# Disable the NVIDIA modules to load.
#> sudo nvim /etc/modprobe.d/blacklist.conf
#...blacklist modules:
# blacklist nvidia
# blacklist nvidia-drm
# blacklist nvidia-modeset
# blacklist nvidia-uvm
# blacklist nouveau

echo -e '\e[32m' #zelena
echo "################################################################################"
echo "    NVIDIA INSTALLED"
echo "################################################################################"

sleep 1
