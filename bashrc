
# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# Funny message
command cowsay `fortune -a`

# don't put duplicate lines in the history.
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

PS1='${debian_chroot:+($debian_chroot)}\[\033[01;34m\]\W\[\033[00m\] '

PATH=$PATH:$HOME/bin

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ..='cd ..'
alias diff='colordiff'

source /etc/bash_completion

man() {
    env \
        LESS_TERMCAP_mb=$(printf "\e[1;31m") \
        LESS_TERMCAP_md=$(printf "\e[1;31m") \
        LESS_TERMCAP_me=$(printf "\e[0m") \
        LESS_TERMCAP_se=$(printf "\e[0m") \
        LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
        LESS_TERMCAP_ue=$(printf "\e[0m") \
        LESS_TERMCAP_us=$(printf "\e[1;32m") \
            man "$@"
}

