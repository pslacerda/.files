#!/bin/zsh
setopt extended_glob

for f in ^${0:t}*; echo rm -r ~/.$f && echo ln -s $PWD/$f ~/.$f

