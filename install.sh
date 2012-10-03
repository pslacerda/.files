#!/bin/sh
ls -1 | grep -v ${0##./} | xargs -i sh -c "rm $HOME/.{}; ln -s $PWD/{} $HOME/.{}"

