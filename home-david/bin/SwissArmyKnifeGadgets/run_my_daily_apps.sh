#! /bin/sh

bspc desktop --focus '^4' & urxvt & urxvt & sleep 0.2

bspc desktop --focus '^2' & google-chrome-stable & sleep 2

bspc desktop --focus '^3' & thunderbird & sleep 3

bspc desktop --focus '^1' & termite --exec="nvim -S ~/.config/nvim/david_session.sav" &

