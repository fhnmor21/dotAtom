#!/bin/sh
cd ~/Develop/atom/
git checkout master
git pull
git fetch -p
git checkout $(git describe --tags `git rev-list --tags --max-count=1`)
script/build
sript/grunt install --install-dir /home/flavio/Local/stow/atom
