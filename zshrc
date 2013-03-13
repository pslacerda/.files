


source ~/.antigen/antigen.zsh
antigen-bundle zsh-users/zsh-syntax-highlighting

##
# Carrega coisas úteis
#
autoload -U colors && colors
autoload -U compinit && compinit



##
# Configura o histórico de comandos
# 
HISTFILE=~/.history

HISTSIZE=20000
SAVEHIST=20000

setopt HIST_IGNORE_DUPS
setopt APPEND_HISTORY


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

zstyle ':completion:*:commands' menu select rehash 1

##
# Define funções úteis para as teclas HOME e END
#
bindkey "\e[H" beginning-of-line
bindkey "\e[F" end-of-line

##
# Um prompt empiriquitado
#
PROMPT="%B%{$fg[magenta]%}%c%{$fg[green]%}%#%b "

##
# Aliases
# 
alias   ls='ls --color=auto'
alias   mv='mv -i'
alias grep='grep --color=auto'
alias less='less -r'
alias diff='colordiff'

alias -g C='| wc -l'
alias -g L='| less'

##
# Make 
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
