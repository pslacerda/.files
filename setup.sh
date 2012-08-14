#!/bin/sh


ls -1 | grep -v setup.sh | xargs -i sh -c 'rm -rf ~/.{}; cp -r {} ~/.{}'

