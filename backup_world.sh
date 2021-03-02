#!/bin/bash

WORLD="/mnt/c/Users/lud0vicb/AppData/LocalLow/IronGate/Valheim"
BACKUP="/home/bellierl/Documents/valheim/backup"

[ -d $BACKUP ] || mkdir -p $BACKUP
cp -R $WORLD $BACKUP/
