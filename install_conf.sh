#!/bin/bash
set -x
VER=9.3
cp valheim_plus_$VER.cfg Valheim/BepInEx/config/valheim_plus.cfg
cp valheim_plus_$VER.cfg Valheim\ dedicated\ server/BepInEx/config/valheim_plus.cfg

git commit  -m "install conf $(date)" .
git push

