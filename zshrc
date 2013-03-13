cd ~
source ~/.antigen/antigen.zsh
antigen-lib

antigen-bundles <<EOF
    command-not-found
    extract
    git

    zsh-users/zsh-syntax-highlighting
    zsh-users/zsh-completions
    zsh-users/zsh-history-substring-search
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

# torna as teclas HOME e END úteis
bindkey "\e[H" beginning-of-line
bindkey "\e[F" end-of-line

# prompt empiriquitado
PROMPT="%B%{$fg[magenta]%}%c%{$fg[green]%}%#%b "


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
