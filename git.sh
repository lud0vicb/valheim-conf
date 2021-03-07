#!/bin/bash

printf "préparation\n---\n"
git status
git add -f Valheim/BepInEx/plugins/
git add -f Valheim/BepInEx/config/
git add -f *.sh
git add -f *.cfg
printf "ajouts fait\n---\n"
git status
git commit  -m "$(date)" .
git push
printf "post\n---\n"
git status

