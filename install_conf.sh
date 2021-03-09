#!/bin/bash
VER=9.3
cp valheim_plus_$VER.cfg Valheim/BepInEx/config/valheim_plus.cfg
cp Valheim/BepInEx/config/*.cfg  Valheim\ dedicated\ server/BepInEx/config/
cp Valheim/BepInEx/plugins/*.dll  Valheim\ dedicated\ server/BepInEx/plugins/
cp valheim_plus_$VER.cfg Valheim\ dedicated\ server/BepInEx/config/valheim_plus.cfg
ls -l Valheim/BepInEx/config/valheim_plus.cfg| cut -d ' ' -f6-
ls -l Valheim\ dedicated\ server/BepInEx/config/valheim_plus.cfg| cut -d ' ' -f6-
