#!/bin/zsh

bat_chg(){
    bat_per=$(grep ACITY= /sys/class/power_supply/BAT0/uevent | sed 's/^[A-Z_]*=//')
    echo "  $bat_per%" 
}

bat_dis(){
    bat_eng=$(grep ENERGY_NOW /sys/class/power_supply/BAT0/uevent | sed 's/^[A-Z_]*=//')
    bat_pwr=$(grep POWER_NOW /sys/class/power_supply/BAT0/uevent | sed 's/^[A-Z_]*=//')
    time_lft=`printf "%.1fh" $((1.0*bat_eng/bat_pwr))`
    echo "  $time_lft"
}

battery(){
    bat_sts=$(grep STATUS /sys/class/power_supply/BAT0/uevent | sed 's/^[A-Z_]*=//')
    [[ $bat_sts == Discharging ]] && bat_dis || bat_chg
}

vol(){
    echo " $(pamixer --get-volume-human)"
}

date_time(){
    echo "$(date '+%F %A %H:%M')"
}

temp(){
    echo " $(sed 's/000$/°C/' /sys/devices/platform/coretemp.0/hwmon/hwmon*/temp1_input)"
}

cpu(){
    echo " $(ps -A -o pcpu | tail -n+2 | paste -sd+ | bc)%"
}

while true; do
    xsetroot -name "| $(cpu) | $(temp) | $(battery) | $(vol) | $(date_time)"
    sleep 1
done
