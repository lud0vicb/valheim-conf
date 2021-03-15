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
