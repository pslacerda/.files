#!/bin/sh


ls -1 | grep -v setup.sh | xargs -i sh -c "ln -s $PWD/{} $HOME/{}"

