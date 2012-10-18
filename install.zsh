setopt extended_glob

for f in ^$0*; echo rm -r ~/.$f && echo ln -s $PWD/$f ~/.$f
