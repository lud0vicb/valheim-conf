#!/bin/bash

cp -R /mnt/c/Users/lud0vicb/AppData/LocalLow/IronGate/Valheim ./backup/

git add -f ./backup
git status
git commit  -m "backup world $(date)" ./backup
git push

