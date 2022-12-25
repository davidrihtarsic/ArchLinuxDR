#! /bin/sh
# Used for setting user's environment variables;
# it should not contain commands that produce output or
# assume the shell is attached to a TTY. When this file
# exists it will always be read.
echo "test1"
############################################################
# PREFERED APPLICATIONS
############################################################
export EDITOR='nvim'
export BROWSER='brave'
export TERM='alacritty'
export GUI_EDITOR=''
export FILEMANAGER='nemo'
export IMG_VIEWER='sxiv'
export MOV_PLAYRE='mpv'

############################################################
# XDG VARIABLES
############################################################
export ZDOTDIR="$HOME/.config/zsh"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"

# ta HOME/bin je potrebno prestavit v $HOME/.local/bin
[[ "$PATH" == *"$HOME/bin"* ]] || PATH="$HOME/bin:$PATH"

# Add all sub-directories in PATH
add_sub_dir_in="$HOME/.local/bin"
if [[ "$PATH" != *"$add_sub_dir_in"* ]]
  then
    add_to_path=$add_sub_dir_in
    for d in $(ls -d $add_sub_dir_in**/*(/)); do add_to_path="$add_to_path:$d"; done
    export PATH=$PATH:$add_to_path
fi
echo $PATH > test_PATH_from_zshenv.md

xset dpms 600 900 1200
xset r rate 250 70
#sxhkd &
