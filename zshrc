##
# Carrega coisas úteis
#
autoload colors && colors
autoload compinit && compinit

##
# Configura o histórico de comandos
# 
HISTFILE=~/history
HISTSIZE=5000
SAVEHIST=5000

setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt APPEND_HISTORY

# pesquisa o histórico com as setas direcionais
bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward


##
# Miscelânea
#
setopt AUTO_CD
setopt AUTO_REMOVE_SLASH
zstyle ':completion:*' menu select # autocompletar com esteróides

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
alias   ..='cd ..'
alias diff='colordiff'

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
