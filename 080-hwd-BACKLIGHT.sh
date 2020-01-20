#!/bin/bash
set -e

echo -e '\e[33m' #rumena
echo "################################################################################"
echo "    BAckLight"
echo "################################################################################"

sudo tee /etc/udev/rules.d/backlight.rules <<<'# controll backlight with Intel Graphic card 
ACTION=="add", SUBSYSTEM=="backlight", KERNEL=="intel_backlight", RUN+="/bin/chgrp video /sys/class/backlight/%k/brightness"
ACTION=="add", SUBSYSTEM=="backlight", KERNEL=="intel_backlight", RUN+="/bin/chmod g+w /sys/class/backlight/%k/brightness"

# controll backlight with NVIDIA  
ACTION=="add", SUBSYSTEM=="backlight", KERNEL=="acpi_video0", RUN+="/bin/chgrp video /sys/class/backlight/%k/brightness"
ACTION=="add", SUBSYSTEM=="backlight", KERNEL=="acpi_video0", RUN+="/bin/chmod g+w /sys/class/backlight/%k/brightness"
'

echo -e '\e[32m' #zelena
echo "################################################################################"
echo "    RULES ADDED"
echo "################################################################################"
sleep 1
