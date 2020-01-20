#! /bin/zsh
set -e
echo "################################################################################"
echo "    printer management insallation"
echo "################################################################################"

sudo pacman -S --noconfirm --needed cups libcups cups-pdf
# CUPS service je na: localhost:631
# Administration -> Add Printer -> ...
# ... choos printer or upload PPD file
# ... izbereš Postscript (boljša kompatibilnost)

# hplip podpora za skeniranje
sudo pacman -S --noconfirm --needed hplip

sudo pacman -S --noconfirm --needed foomatic-db-engine 
sudo pacman -S --noconfirm --needed foomatic-db foomatic-db-ppds foomatic-db-nonfree-ppds foomatic-db-gutenprint-ppds
sudo pacman -S --noconfirm --needed ghostscript gsfonts

# provides drivers for Canon, Epson, Lexmark, Sony, Olympus, and PCL printers for use with CUPS and GIMP.
sudo pacman -S --noconfirm --needed gutenprint

sudo pacman -S --noconfirm --needed gtk3-print-backends
sudo pacman -S --noconfirm --needed system-config-printer

sudo systemctl enable org.cups.cupsd.service

echo "After rebooting it will work"

echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
echo "+          printer management software installed               +"
echo "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++"
sleep 1
