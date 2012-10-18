#!/bin/zsh
setopt extended_glob

for f in ^$0*; rm -r ~/.$f && ln -s $PWD/$f ~/.$f
