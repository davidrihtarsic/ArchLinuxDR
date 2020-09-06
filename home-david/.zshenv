#! /bin/zsh

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export ZDOTDIR="$HOME/.config/zsh"

[ "$PATH" == *"$HOME/bin"* ] || PATH="$HOME/bin:$PATH"

# Add all sub-directories in PATH
add_sub_dir_in="$HOME/.local/bin"
if [[ "$PATH" != *"$add_sub_dir_in"* ]]
  then
    add_to_path=$add_sub_dir_in
    for d in $(ls -d $add_sub_dir_in**/*(/)); do add_to_path="$add_to_path:$d"; done
    export PATH=$PATH:$add_to_path
fi
#[ "$PATH" == *"$HOME/.local/bin"* ] || PATH="$HOME/.local/bin:$PATH"
# Add all sub-directories in PATH
#add_sub_dir_in="$HOME/.local/bin"
#if [[ "$PATH" != *"$add_sub_dir_in"* ]]
#  then
#    add_to_path=$add_sub_dir_in
#    for d in $(ls -d $add_sub_dir_in**/*(/)); do add_to_path="$add_to_path:$d"; done
#    #echo $add_to_path
#    export PATH=$add_to_path:$PATH
#fi
