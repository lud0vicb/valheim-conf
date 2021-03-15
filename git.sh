#!/bin/bash

printf "\n-----------------------------------------------------------\nadd\n-----------------------------------------------------------\n\n"
git status
git add -f Valheim/BepInEx/plugins/*.dll
git add -f Valheim/BepInEx/config/*.cfg
git add -f *.sh
git add -f *.cfg
git add -f *.cmd
git add -f *.dll
printf "\n-----------------------------------------------------------\npush\n-----------------------------------------------------------\n\n"
git commit  -m "$(date)" .
git push
printf "\n-----------------------------------------------------------\ntag\n-----------------------------------------------------------\n\n"
git checkout cfg-dll
git merge main
git status
git push origin HEAD:cfg-dll --force
git checkout main
