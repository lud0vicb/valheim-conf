#!/bin/bash
set -x
# conf plus client + server
VER=9.7
cp valheimplus/valheim_plus_$VER.cfg Valheim/BepInEx/config/valheim_plus.cfg
cp valheimplus/valheim_plus_$VER.cfg Valheim\ dedicated\ server/BepInEx/config/valheim_plus.cfg

# hack server pour data sent 60=>600
# doit être recompilée pour la nouvelle version de valheim 
#cp assembly_valheim.dll Valheim\ dedicated\ server/valheim_server_Data/Managed 

# plugin spawn that client + serveur / plugin + conf
## plugin
cp spawnthat/Valheim.SpawnThat.dll Valheim\ dedicated\ server/BepInEx/plugins/
cp spawnthat/Valheim.SpawnThat.dll Valheim/BepInEx/plugins/
## config
cp spawnthat/*.cfg Valheim/BepInEx/config/
cp spawnthat/*.cfg Valheim\ dedicated\ server/BepInEx/config/

# cuton raids
## plugin
cp customraids/Valheim.CustomRaids.dll Valheim\ dedicated\ server/BepInEx/plugins/
cp customraids/Valheim.CustomRaids.dll Valheim/BepInEx/plugins/
## config
cp customraids/*.cfg Valheim/BepInEx/config/
cp customraids/*.cfg Valheim\ dedicated\ server/BepInEx/config/

# dropthat
## plugin
cp dropthat/Valheim.DropThat.dll Valheim\ dedicated\ server/BepInEx/plugins/
cp dropthat/Valheim.DropThat.dll Valheim/BepInEx/plugins/
## config
cp dropthat/*.cfg Valheim/BepInEx/config/
cp dropthat/*.cfg Valheim\ dedicated\ server/BepInEx/config/

# loot epic
# cp ExtendedItemDataFramework.dll Valheim/BepInEx/plugins/
# cp ExtendedItemDataFramework.dll Valheim\ dedicated\ server/BepInEx/plugins/
# rm -rf Valheim/BepInEx/plugins/EpicLoot/
# rm -rf Valheim\ dedicated\ server/BepInEx/plugins/EpicLoot/
# cp -R EpicLoot Valheim/BepInEx/plugins/
# cp -R EpicLoot Valheim\ dedicated\ server/BepInEx/plugins/
# cp randyknapp.mods.epicloot.cfg Valheim/BepInEx/config/
# cp randyknapp.mods.epicloot.cfg Valheim\ dedicated\ server/BepInEx/config/

# bettercontinent
# cp BetterContinents.dll Valheim\ dedicated\ server/BepInEx/plugins/
# cp BetterContinents.dll Valheim/BepInEx/plugins/
# cp BetterContinents.cfg Valheim\ dedicated\ server/BepInEx/config/
# cp BetterContinents.cfg Valheim/BepInEx/config/
