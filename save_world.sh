#!/bin/bash

cd /mnt/d/zBackup/valheim-backup/
#tar zvcf Valheim.tgz /mnt/c/Users/lud0vicb/AppData/LocalLow/IronGate/Valheim/
rm valheim-backup.z*
zip -r -s 10m valheim-backup.zip /mnt/c/Users/lud0vicb/AppData/LocalLow/IronGate/Valheim/
git add .
git status
git commit  -m "backup world $(date)" .
git push
cd -

