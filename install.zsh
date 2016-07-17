#!/bin/zsh

sudo apt-get -q install zsh git tmux i3-wm i3status dunst suckless-tools rxvt-unicode-256color fortune vim

# inicializa os submódulos prezto e vim/bundle/vundle
git submodule update --init --recursive

# link config files to $HOME
setopt EXTENDED_GLOB
for rcfile in "$PWD/"^(install.zsh|prezto); do
    rm -rf "$HOME/.${rcfile:t}"
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

# instala bundles
vim -e -c BundleInstall -c q -c q

source "$HOME/.zshrc"
