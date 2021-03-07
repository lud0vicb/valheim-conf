#!/bin/bash

printf "\n-----------------------------------------------------------\npréparation\n-----------------------------------------------------------\n"
git status
git add -f Valheim/BepInEx/plugins/
git add -f Valheim/BepInEx/config/
git add -f *.sh
git add -f *.cfg
printf "\n-----------------------------------------------------------\najouts fait\n-----------------------------------------------------------\n"
git status
git commit  -m "$(date)" .
git push
printf "\n-----------------------------------------------------------\npost\n-----------------------------------------------------------\n"
git status

