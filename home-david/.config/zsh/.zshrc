#export MANWIDTH=70
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

# Add all sub-directories in PATH
add_sub_dir_in="$HOME/.local/bin"
if [[ "$PATH" != *"$add_sub_dir_in"* ]]
  then
    add_to_path=$add_sub_dir_in
    for d in $(ls -d $add_sub_dir_in**/*(/)); do add_to_path="$add_to_path:$d"; done
    export PATH=$PATH:$add_to_path
fi
#*******************
# ZSH settings
#********************
# typeset -U path=($HOME/bin "${path[@]:#}") #add ~/bin/ to $PATH
export HISTSIZE=10000
export SAVEHIST=10000
HISTFILE=~/.config/zsh/zsh_history  #Where to save history to disk
HISTDUP=erase                       #Erase duplicates in the history file
setopt    appendhistory             #Append history to the history file (no overwriting)
setopt    sharehistory              #Share history across terminals
setopt    incappendhistory          #Immediately append to the history file, not just when a term is killed
setopt    autocd autopushd
setopt    prompt_subst              #Ne vem, da potem spremenljivke delajo $VAR

######################################
# TAB coompletition MENU, color
autoload -Uz compinit && compinit
compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*:options:*' list-colors menu select
zstyle -e ':completion:*:default' list-colors 'reply=("${PREFIX:+=(#bi)($PREFIX:t)(?)*==34=34}:${(s.:.)LS_COLORS}")'

######################################
# Search history based on text
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search # Up
bindkey "^[[B" down-line-or-beginning-search # Down

#********************
# MAN color scheme
#********************
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'

#********************
# Aliasi
#********************
alias d='dirs -v'
#alias f='cd $(vifm $(pwd) --choose-dir -)'
alias f='~/.config/vifm/vifm_run.sh'
alias g!='git add .;git commit -v -a;git push;'
alias gs='git status'
alias la='ls -A'
alias ll='ls -llh --color'
alias ls='ls --color'
alias less='less -R'
alias mirror='reflector --number 10 --country Slovenia --country Finland --country Germany --country Italy --country Austria --verbose --sort rate'
alias q='exit'
alias r='ranger'
alias update='sudo pacman -Syu'
alias weather='curl wttr.in/~begunje'

#++++++++++++++++++++++++++++++++++++++
# DIRRECTORY MAPPINGS
#++++++++++++++++++++++++++++++++++++++
alias gh='cd ~'
alias gc='cd ~/.config'
alias gl='cd ~/.local'
alias gs='cd ~/.local/bin'
alias gD='cd ~/Downloads'
alias gP='cd ~/Pictures'
alias gf='cd ~/Files'
alias gd='cd ~/Files/Work/DRTI'
alias gp='cd ~/Files/Work/Projekti'
alias gu='cd ~/Files/Work/UL-PeF'
alias gš='cd ~/Files/Work/UL-PeF/Študentje'
alias ga='cd ~/Files/Work/UL-PeF/Articles'
alias gv='cd ~/Files/Work/UL-PeF/Vaje'
alias gw='cd ~/Files/GitHub_noSync/davidrihtarsic.github.io'
alias gM='cd ~/Music'
alias gm='cd /run/media/david'
alias ge='cd /etc'
alias go='cd /opt'
alias gm='cd /mnt'

#*******************
# GIT
#*******************
# Modify the colors and symbols in these variables as desired.
GIT_PROMPT_SYMBOL="%F{blue}%}±"           # plus/minus     - clean repo
GIT_PROMPT_SYMBOL="%F{blue%}±"            # plus/minus     - clean repo
GIT_PROMPT_PREFIX="%F{green%}[%f"
GIT_PROMPT_SUFFIX="%F{green%}]%f"
GIT_PROMPT_AHEAD="%F{red%}ANUM%f"         # A"NUM"         - ahead by "NUM" commits
GIT_PROMPT_BEHIND="%F{cyan%}BNUM%f"       # B"NUM"         - behind by "NUM" commits
GIT_PROMPT_MERGING="%F{magenta%}⚡︎%f"     # lightning bolt - merge conflict
GIT_PROMPT_UNTRACKED="%F{red%}●%f"        # red circle     - untracked files
GIT_PROMPT_MODIFIED="%F{yellow%}●%f"      # yellow circle  - tracked files modified
GIT_PROMPT_STAGED="%F{green%}●%f"         # green circle   - staged changes present = ready for "git push"

parse_git_branch() {
  # Show Git branch/tag, or name-rev if on detached head
  ( git symbolic-ref -q HEAD || git name-rev --name-only --no-undefined --always HEAD ) 2> /dev/null
}

parse_git_state(){
  # Show different symbols as appropriate for various Git repository states
  # Compose this value via multiple conditional appends.
  local GIT_STATE=""
  local NUM_AHEAD=$(git log --oneline @{u}.. 2> /dev/null | wc -l | tr -d ' ')
  if [ "$NUM_AHEAD" -gt 0 ]; then
    GIT_STATE=$GIT_STATE${GIT_PROMPT_AHEAD//NUM/$NUM_AHEAD}
  fi
  local NUM_BEHIND=$(git log --oneline ..@{u} 2> /dev/null | wc -l | tr -d ' ')
  if [ "$NUM_BEHIND" -gt 0 ]; then
    GIT_STATE=$GIT_STATE${GIT_PROMPT_BEHIND//NUM/$NUM_BEHIND}
  fi
  local GIT_DIR=$(git rev-parse --git-dir 2> /dev/null)
  if [ -n $GIT_DIR ] && test -r $GIT_DIR/MERGE_HEAD; then
    GIT_STATE=$GIT_STATE$GIT_PROMPT_MERGING
  fi
  if [[ -n $(git ls-files --other --exclude-standard 2> /dev/null) ]]; then
    GIT_STATE=$GIT_STATE$GIT_PROMPT_UNTRACKED
  fi
  if ! git diff --quiet 2> /dev/null; then
    GIT_STATE=$GIT_STATE$GIT_PROMPT_MODIFIED
  fi
  if ! git diff --cached --quiet 2> /dev/null; then
    GIT_STATE=$GIT_STATE$GIT_PROMPT_STAGED
  fi
  if [[ -n $GIT_STATE ]]; then
    echo "$GIT_PROMPT_PREFIX$GIT_STATE$GIT_PROMPT_SUFFIX"
  fi
}

git_prompt_string() {
  local git_where="$(parse_git_branch)"
 
  # If inside a Git repository, print its branch and state
  [ -n "$git_where" ] && echo "$GIT_PROMPT_SYMBOL$(parse_git_state)$GIT_PROMPT_PREFIX%{$fg[yellow]%}${git_where#(refs/heads/|tags/)}$GIT_PROMPT_SUFFIX"
 
  # If not inside the Git repo, print exit codes of last command (only if it failed)
  [ ! -n "$git_where" ] && echo "%{$fg[red]%} %(?..[%?])"
}

#RPROMPT='$(git_prompt_string)%{$fg[green]%}$RANGER%{$reset_color%}'
RPROMPT='$(git_prompt_string)%{$fg[green]%}%{$reset_color%}'

#**************************************************************************
# RANGER
#*******************
#[ "$RANGER_LEVEL" -gt 0 ] && RANGER=' [=]'
[ "$RANGER_LEVEL" -gt 0 ] && RANGER='Ranger' || RANGER='ArchLabsDR'

#*********************
# FZF settings
# ********************
source /usr/share/fzf/completion.zsh
source /usr/share/fzf/key-bindings.zsh
export FZF_DEFAULT_OPTS="--layout=reverse --inline-info"

# ***************
# REMAP KEYS
# ***************
# Včasih mi ni delalo, da bi se remap zgodil sam od sebe
# zato tale skript, da preveri remap in če ni ga zažene
[ -n "$(xmodmap | grep lock | grep Escape)" ] && xmodmap $HOME/.config/X11/.Xmodmap && xset r rate 250 70
#**************************************************************************

#####################################
# PROMPT dir & vi-mode
L_DIV="╭=["
M_DIV="%B|%b"
R_DIV="]==--"
S_PRT="╰>"
bindkey -v
function zle-line-init zle-keymap-select {
    case ${KEYMAP} in
        (vicmd)      PROMPT='%F{red}$L_DIV%F{yellow}$RANGER%F{green}$M_DIV%F{blue}%~%F{red}$R_DIV'$'\n%F{red}$S_PRT%F{white} ';;
        (main|viins) PROMPT='%F{green}$L_DIV%F{yellow}$RANGER%F{green}$M_DIV%F{blue}%~%F{green}$R_DIV'$'\n%F{green}$S_PRT%f ';;
        (*)          PROMPT='%F{green}$L_DIV%F{yellow}$RANGER%F{green}$M_DIV%F{blue}%~%F{green}$R_DIV'$'\n%F{green}$S_PRT%f ';;
    esac
    zle reset-prompt
}
zle -N zle-line-init
zle -N zle-keymap-select

