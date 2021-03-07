#!/bin/bash

git status
git add -f Valheim/BepInEx/plugins/
git add -f Valheim/BepInEx/config/
git status
git commit  -m "$(date)" .
git push

