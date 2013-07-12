#!/bin/zsh
# setopt extended_glob
# 
# git clone 'http://github.com/gmarik/vundle' vim/bundle/vundle
# git clone 'https://github.com/zsh-users/antigen.git' ~/.antigen
# 
# for f in ^(config|install.zsh)*; do
#     rm -rf ~/.$f
#     ln -s $PWD/$f ~/.$f
# done
# 
# mkdir -p ~/.config
# for f in config/*; do
#     rm -rf ~/.$f
#     ln -s $PWD/$f ~/.$f
# done
# 
# vim -c BundleInstall -c q -c q
# zsh ~/.zshrc

# git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
# 
# setopt EXTENDED_GLOB
# for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
#     rm -f "${ZDOTDIR:-$HOME}/.${rcfile:t}"
#     ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
# done

# git clone --recursive http://github.com/gmarik/vundle vim/bundle/vundle
# git clone --recursive https://github.com/sorin-ionescu/prezto.git "$HOME/.zprezto"

git submodule update --init --recursive

# link config files to $HOME
setopt EXTENDED_GLOB
for rcfile in "$PWD/"^(install.zsh|prezto); do
    rm -f "$HOME/.${rcfile:t}"
    ln -s "$rcfile" "$HOME/.${rcfile:t}"
done

# link zprezto
rm -rf "$HOME/.zprezto"
ln -s "$PWD/prezto" "$HOME/.zprezto"

# change default shell to ZSH
curr_shell=$(basename $(getent passwd $LOGNAME | cut -d: -f7))
if [ $curr_shell != zsh ]; then
    chsh -s /bin/zsh
fi
