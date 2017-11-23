# Load Prezto
source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"

# Set the list of directories that Zsh searches for programs.
path=(
  /usr/local/{bin,sbin}
  $HOME/bin
  $path
)

# some variables
export BROWSER='chromium-browser'
export EDITOR='vim'
export VISUAL='vim'
export PAGER='less'

# Type jj exits to command mode
bindkey -M viins "jj" vi-cmd-mode

# Report CPU usage for commands running longer than 10 seconds
export REPORTTIME=10

# Set the default Less options
export LESS='-F -i -M -R -X'

# Expand global upper case alias as you type
# http://blog.patshead.com/2012/11/automatically-expaning-zsh-global-aliases---simplified.html
globalias() {
    if [[ $LBUFFER =~ ' [A-Z0-9]+$' ]]; then
        zle _expand_alias
        zle expand-word
    fi
    zle self-insert }

zle -N globalias
bindkey " " globalias
bindkey "^ " magic-space           # control-space to bypass completion
bindkey -M isearch " " magic-space # normal space during searches

# Global aliases
alias -g G='| grep'
alias -g L='|& less'
alias -g C='| wc -l'

