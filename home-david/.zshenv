#! /bin/zsh

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export ZDOTDIR="$HOME/.config/zsh"

[ "$PATH" == *"$HOME/bin"* ] || PATH="$HOME/bin:$PATH"
[ "$PATH" == *"$HOME/.local/bin"* ] || PATH="$HOME/.local/bin:$PATH"
