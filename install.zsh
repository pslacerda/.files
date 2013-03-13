#!/bin/zsh
setopt extended_glob

git clone 'http://github.com/gmarik/vundle' vim/bundle/vundle
git clone 'https://github.com/zsh-users/antigen.git' ~/.antigen

for f in ^${0:t}*; rm -fr ~/.$f && ln -s $PWD/$f ~/.$f

vim -c BundleInstall -c q -c q
zsh ~/.zshrc
