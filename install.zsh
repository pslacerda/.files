#!/bin/zsh
setopt extended_glob

git clone 'http://github.com/gmarik/vundle' vim/bundle/vundle
git clone 'https://github.com/zsh-users/antigen.git' ~/.antigen

for f in ^(config|install.zsh)*; do
    rm -rf ~/.$f
    ln -s $PWD/$f ~/.$f
done

mkdir -p ~/.config
for f in config/*; do
    rm -rf ~/.$f
    ln -s $PWD/$f ~/.$f
done

vim -c BundleInstall -c q -c q
zsh ~/.zshrc
