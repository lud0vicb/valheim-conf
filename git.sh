#!/bin/bash

printf "\n-----------------------------------------------------------\nadd\n-----------------------------------------------------------\n\n"
git status
# Jeu par défaut
git add -f Valheim/BepInEx/plugins/*.dll
git add -f Valheim/BepInEx/plugins/*assets
git add -f Valheim/BepInEx/plugins/EpicLoot
git add -f Valheim/BepInEx/config/*.cfg
git add -f Valheim/*.cmd
# Jeu avec plugin elsa
git add -f Valerheim/*.cmd
git add -f Valerheim/BepInEx/config/*.cfg
git add -f Valerheim/BepInEx/plugins/*.dll
# fichiers d'install
git add -f *.sh
git add -f *.cfg
git add -f *.cmd
git add -f *.dll
git add -f spawnthat/
git add -f dropthat/
git add -f customraids/
git add -f EpicLoot/
git add -f valheimplus/
git add -f odinplus/
git add -f runic/
printf "\n-----------------------------------------------------------\npush\n-----------------------------------------------------------\n\n"
git commit  -m "$(date)" .
git push
printf "\n-----------------------------------------------------------\ntag\n-----------------------------------------------------------\n\n"
git checkout cfg-dll
git merge main
git status
git push origin HEAD:cfg-dll --force
git checkout main
