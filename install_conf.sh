#!/bin/bash
VER=9.3
cp valheim_plus_$VER.cfg Valheim/BepInEx/config/valheim_plus.cfg
cp valheim_plus_$VER.cfg Valheim\ dedicated\ server/BepInEx/config/valheim_plus.cfg
ls -l Valheim/BepInEx/config/valheim_plus.cfg| cut -d ' ' -f6-
ls -l Valheim\ dedicated\ server/BepInEx/config/valheim_plus.cfg| cut -d ' ' -f6-
