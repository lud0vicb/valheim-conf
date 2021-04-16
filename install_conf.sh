#!/bin/bash
set -x
# conf plus client + server
VER=9.7
## jeu 
cp valheimplus/valheim_plus_$VER.cfg Valheim/BepInEx/config/valheim_plus.cfg
cp valheimplus/valheim_plus_$VER.cfg Valheim\ dedicated\ server/BepInEx/config/valheim_plus.cfg
## jeu plugins elsa
cp cp valheimplus/valheim_plus_$VER.cfg Valerheim/BepInEx/config/valheim_plus.cfg
cp cp valheimplus/valheim_plus_$VER.cfg Valerheim-server/BepInEx/config/valheim_plus.cfg

# jeu : plugin spawn that client + serveur / plugin + conf
## plugin
cp spawnthat/Valheim.SpawnThat.dll Valheim\ dedicated\ server/BepInEx/plugins/
cp spawnthat/Valheim.SpawnThat.dll Valheim/BepInEx/plugins/
## config
cp spawnthat/*.cfg Valheim/BepInEx/config/
cp spawnthat/*.cfg Valheim\ dedicated\ server/BepInEx/config/

# jeu : cuton raids
## plugin
cp customraids/Valheim.CustomRaids.dll Valheim\ dedicated\ server/BepInEx/plugins/
cp customraids/Valheim.CustomRaids.dll Valheim/BepInEx/plugins/
## config
cp customraids/*.cfg Valheim/BepInEx/config/
cp customraids/*.cfg Valheim\ dedicated\ server/BepInEx/config/

# jeu : dropthat
## plugin
cp dropthat/Valheim.DropThat.dll Valheim\ dedicated\ server/BepInEx/plugins/
cp dropthat/Valheim.DropThat.dll Valheim/BepInEx/plugins/
## config
cp dropthat/*.cfg Valheim/BepInEx/config/
cp dropthat/*.cfg Valheim\ dedicated\ server/BepInEx/config/

# jeu plugins elsa
## loot epic
cp EpicLoot/ExtendedItemDataFramework.dll Valerheim/BepInEx/plugins/
cp EpicLoot/ExtendedItemDataFramework.dll Valerheim-server/BepInEx/plugins/
[ -d Valerheim/BepInEx/plugins/EpicLoot ] || mkdir Valerheim/BepInEx/plugins/EpicLoot
[ -d Valerheim-server/BepInEx/plugins/EpicLoot ] || mkdir Valerheim-server/BepInEx/plugins/EpicLoot
rm -f Valerheim/BepInEx/plugins/EpicLoot/*
rm -f Valerheim-server/BepInEx/plugins/EpicLoot/*
cp -R EpicLoot/dll/* Valerheim/BepInEx/plugins/EpicLoot/
cp -R EpicLoot/dll/* Valerheim-server/BepInEx/plugins/EpicLoot/
cp EpicLoot/randyknapp.mods.epicloot.cfg Valerheim/BepInEx/config/
cp EpicLoot/randyknapp.mods.epicloot.cfg Valerheim-server/BepInEx/config/
## odin plus
cp odinplus/*.dll Valerheim/BepInEx/plugins/
cp odinplus/*.dll Valerheim-server/BepInEx/plugins/
cp EpicLoot/*.cfg Valerheim/BepInEx/config/
cp EpicLoot/*.cfg Valerheim-server/BepInEx/config/
## runic power
[ -d Valerheim/BepInEx/plugins/RunicPower ] || mkdir Valerheim/BepInEx/plugins/RunicPower
[ -d Valerheim-server/BepInEx/plugins/RunicPower ] || mkdir Valerheim-server/BepInEx/plugins/RunicPower
cp runic/*.dll Valerheim/BepInEx/plugins/
cp runic/*.dll Valerheim-server/BepInEx/plugins/
rm Valerheim/BepInEx/plugins/RunicPower/*
rm Valerheim-server/BepInEx/plugins/RunicPower/*
cp runic/RunicPower/* Valerheim/BepInEx/plugins/RunicPower/
cp runic/RunicPower/* Valerheim-server/BepInEx/plugins/RunicPower/




# bettercontinent
# cp BetterContinents.dll Valheim\ dedicated\ server/BepInEx/plugins/
# cp BetterContinents.dll Valheim/BepInEx/plugins/
# cp BetterContinents.cfg Valheim\ dedicated\ server/BepInEx/config/
# cp BetterContinents.cfg Valheim/BepInEx/config/
