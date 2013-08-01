# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Type jj exits to command mode
bindkey -M viins "jj" vi-cmd-mode

# Report CPU usage for commands running longer than 10 seconds
REPORTTIME=10

# Expand global upper case alias as you type
# http://blog.patshead.com/2012/11/automatically-expaning-zsh-global-aliases---simplified.html
globalias() {
    if [[ $LBUFFER =~ ' [A-Z0-9]+$' ]]; then
        zle _expand_alias
        zle expand-word
    fi
    zle self-insert
}
zle -N globalias
bindkey " " globalias
bindkey "^ " magic-space           # control-space to bypass completion
bindkey -M isearch " " magic-space # normal space during searches



# Global aliases
alias -g G='| grep'
alias -g L='|& less'
alias -g C='| wc -l'
