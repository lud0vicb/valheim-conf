#!/bin/bash

cp -R /mnt/c/Users/lud0vicb/AppData/LocalLow/IronGate/Valheim ./backup/
cd ./backup/
tar zvcf Valheim.tgz Valheim
rm -rf Valheim
cd -
git add -f ./backup
git status
git commit  -m "backup world $(date)" ./backup
git push

