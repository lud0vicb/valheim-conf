#!/bin/bash
set -x

cp -R /mnt/c/Users/lud0vicb/AppData/LocalLow/IronGate/Valheim ./backup/

git commit  -m "backup world $(date)" ./backup
git push

