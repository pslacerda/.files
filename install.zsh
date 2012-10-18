#!/bin/zsh
setopt extended_glob

git clone 'http://github.com/kanvuanza/dotfiles' dotfiles
git clone 'http://github.com/gmarik/vundle' dotfiles/vim/bundle/vundle

cd dotfiles
for f in ^${install.zsh:t}*; rm -r ~/.$f && ln -s $PWD/$f ~/.$f
vim -c BundleInstall -c q -c q
