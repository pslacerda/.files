source ~/.antigen/antigen.zsh
antigen-lib

antigen-bundles <<EOF
    extract
    
    zsh-users/zsh-history-substring-search
    zsh-users/zsh-syntax-highlighting
    zsh-users/zsh-completions
EOF

antigen-apply


##
# Configura o histórico de comandos
#
setopt HIST_IGNORE_DUPS
setopt APPEND_HISTORY

HISTFILE=~/.history
HISTSIZE=20000
SAVEHIST=20000

# pesquisa o histórico com as setas direcionais
bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward

##
# Entrada do teclado
#
bindkey -v                          # vi
bindkey -M viins 'jj' vi-cmd-mode   # jj entra no modo normal

##
# Miscelânea
#
setopt AUTO_CD
setopt AUTO_REMOVE_SLASH
setopt INTERACTIVE_COMMENTS
setopt ALWAYS_TO_END
setopt NO_CLOBBER
setopt EXTENDED_GLOB
export DISABLE_AUTO_TITLE=true

#zstyle ':completion:*:commands' menu select rehash 1

# prompt empiriquitado
PROMPT=" %B%{$fg[magenta]%}%c%{$fg[green]%}%#%b "

function zle-line-init zle-keymap-select {
    VIMODE="${${KEYMAP/vicmd/ }/(main|viins)/I}"
    PROMPT="$VIMODE%B%{$fg[magenta]%}%c%{$fg[green]%}%#%b "

    zle reset-prompt
}
zle -N zle-line-init
zle -N zle-keymap-select



##
# Aliases
# 
alias   ls='ls --color=auto'
alias   mv='mv --interactive'
alias   rm='rm --interactive=once'
alias grep='grep --color=auto'
alias diff='colordiff'

alias -g C='| wc -l'
alias -g L='| less -R'

##
# Colore os manuais
#
man() {
    env \
        LESS_TERMCAP_mb=$fg_bold[red] \
        LESS_TERMCAP_md=$fg_bold[red] \
        LESS_TERMCAP_me=$reset_color \
        LESS_TERMCAP_se=$reset_color \
        LESS_TERMCAP_so=$bg[blue]$fg_bold[yellow] \
        LESS_TERMCAP_ue=$reset_color \
        LESS_TERMCAP_us=$fg_bold[green] \
            man "$@"
}
