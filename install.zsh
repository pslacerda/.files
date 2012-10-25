#!/bin/zsh
setopt extended_glob

for f in ^${0:t}*; rm -fr ~/.$f && ln -s $PWD/$f ~/.$f
git clone 'http://github.com/gmarik/vundle' vim/bundle/vundle
vim -c BundleInstall -c q -c q
