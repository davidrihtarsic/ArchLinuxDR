#!/bin/zsh

HELP="Skripta mount-a Phone v /run/media/david/...

PARAMETRI:
-u user
-p password
-i IP telefona
-d dirrectory na telefonu

UPORABA:
mountPhoneDir -i 192.168.0.15 -d /storage

p.s.: tole je delalo
sshfs -p 8022 u0_a199@192.168.0.15:/data/data/com.termux/files/home /home/david/Files/Phone"

while getopts 'hu:p:i:d:' PAR
do
  case $PAR in
    h)echo $HELP;exit 0;;
    u)PHONE_USER=$OPTARG;;
    p)PHONE_PAS=$OPTARG;;
    i)PHONE_IP=$OPTARG;;
    d)PHONE_DIR=$OPTARG;;
  esac
done

echo $PHONE_USER
echo $PHONE_PAS
echo $PHONE_IP
echo $PHONE_DIR

#sshfs -p 8022 -o follow_symlinks -o password_stdin u0_a199@192.168.0.15:/data/data/com.termux/files/home /home/david/Files/Davids_Phone <<<'divad'
sshfs -p 8022 -o follow_symlinks -o password_stdin u0_a304@192.168.0.26:/data/data/com.termux/files/home /home/david/Files/Davids_Phone <<<'divad'
