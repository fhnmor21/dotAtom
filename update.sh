#!/bin/sh
cd ~/SourceCode/atom/
git checkout master
git pull
git fetch -p
git checkout $(git describe --tags `git rev-list --tags --max-count=1`)
script/build
sudo script/grunt install

