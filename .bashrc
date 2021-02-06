#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

#colors
export COLOR_NC='\e[0m' # No Color
export COLOR_WHITE='\e[1;37m'
export COLOR_BLACK='\e[0;30m'
export COLOR_BLUE='\e[0;34m'
export COLOR_LIGHT_BLUE='\e[1;34m'
export COLOR_GREEN='\e[0;32m'
export COLOR_LIGHT_GREEN='\e[1;32m'
export COLOR_CYAN='\e[0;36m'
export COLOR_LIGHT_CYAN='\e[1;36m'
export COLOR_RED='\e[0;31m'
export COLOR_LIGHT_RED='\e[1;31m'
export COLOR_PURPLE='\e[0;35m'
export COLOR_LIGHT_PURPLE='\e[1;35m'
export COLOR_BROWN='\e[0;33m'
export COLOR_YELLOW='\e[1;33m'
export COLOR_GRAY='\e[1;30m'
export COLOR_LIGHT_GRAY='\e[0;37m'

#set custom prompt
export PS1="$COLOR_LIGHT_GREEN\A $COLOR_WHITE[$COLOR_CYAN\u@\h$COLOR_WHITE:$COLOR_PURPLE\w$COLOR_WHITE]\n\\$ \[$(tput sgr0)\]"

export EDITOR=nvim

alias grep='grep --color=auto'
alias ls='ls --color=auto'
alias g='git'

#navigation
alias ..='cd ..'
alias ...='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../..'
alias .5='cd ../../../../..'
alias repos='cd ~/Documents/repos'

# vim
alias vim='nvim'

# pacman
alias pacsyu='sudo pacman -Syu'
alias unlock='sudo rm /var/lib/pacman/db.lck'
alias cleanup='sudo pacman -Rns $(pacman -Qtdq)'

# usage: ex <file>
ex()
{
    if [ -f $1 ] ; then
        case $1 in
            *.tar.bz2)          tar xjf $1      ;;
            *.tar.gz)           tar xzf $1      ;;
            *.bz2)              bunzip2 $1      ;;
            *.rar)              unrar x $1      ;;
            *.gz)               gunzip $1       ;;
            *.tar)              tar xf $1       ;;
            *.tbz2)             tar xjf $1      ;;
            *.tgz)              tar xzf $1      ;;
            *.zip)              unzip $1        ;;
            *.Z)                uncompress $1   ;;
            *.7z)               7z x $1         ;;
            *.deb)              ar x $1         ;;
            *.tar.xz)           tar xf $1       ;;
            *.tar.zst)          unzstd $1       ;;
        esac
    else
        echo "'$1' is not a valid file"
    fi
}

