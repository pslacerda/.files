#!/bin/sh
ls -1 | grep -v ${0##./} | xargs -i sh -c "rm $HOME/.{}; ln -s $PWD/{} $HOME/.{}"
git clone 'http://github.com/gmarik/vundle' vim/bundle/vundle
vim -c BundleInstall -c q -c q

