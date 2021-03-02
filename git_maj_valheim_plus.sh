#!/bin/bash
set -x
GAMEDIR=/mnt/e/Steam/SteamApps/common/Valheim
CONF=valheim_plus.cfg
PATHCONFIG=BepInEx/config
PATHPLUGIN=BepInEx/plugins
SERVERDIR="/mnt/e/Steam/SteamApps/common/Valheim dedicated server"

git add .
git commit  -m "$(date)" .
git push
cp Valheim/$PATHCONFIG/* $GAMEDIR/$PATHCONFIG/
cp "Valheim/$PATHCONFIG/$CONF" "$SERVERDIR/$PATHCONFIG/$CONF"
cp Valheim/$PATHPLUGIN/*.dll "$GAMEDIR/$PATHPLUGIN/"
