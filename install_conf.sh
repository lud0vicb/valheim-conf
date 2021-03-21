#!/bin/bash
set -x
# conf plus client + server
VER=9.5
cp valheim_plus_$VER.cfg Valheim/BepInEx/config/valheim_plus.cfg
cp valheim_plus_$VER.cfg Valheim\ dedicated\ server/BepInEx/config/valheim_plus.cfg

# hack server pour data sent 60=>600
cp assembly_valheim.dll Valheim\ dedicated\ server/valheim_server_Data/Managed

# plugin swpawn that client + serveur / plugin + conf
cp Valheim.SpawnThat.dll Valheim\ dedicated\ server/BepInEx/plugins/
cp Valheim.SpawnThat.dll Valheim/BepInEx/plugins/
cp spawn_that.world_spawners_advanced.cfg Valheim\ dedicated\ server/BepInEx/config/
cp spawn_that.world_spawners_advanced.cfg Valheim/BepInEx/config/
cp spawn_that.simple.cfg Valheim/BepInEx/config/
cp spawn_that.simple.cfg Valheim\ dedicated\ server/BepInEx/config/

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
