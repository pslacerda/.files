#!/bin/sh


ls -1 | grep -v setup.sh | xargs -I {} -i sh -c 'rm -rf ~/.{}; cp -r {} ~/.{}'

