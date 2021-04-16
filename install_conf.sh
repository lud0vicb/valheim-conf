#!/bin/bash
set -x
JEU=/mnt/c/jeux/steamapps/common/Valheim
JEUELSA=/mnt/c/jeux/steamapps/common/Valerheim
SRV=/mnt/c/jeux/steamapps/common/Valheim-server
SRVELSA=/mnt/c/jeux/steamapps/common/Valerheim-server

# clean
for a in $JEU $JEUELSA $SRV $SRVELSA ; do
	rm -rf $a/BepInEx/config/
	rm -rf $a/BepInEx/plugins/
	mkdir  $a/BepInEx/config/
	mkdir  $a/BepInEx/plugins/
done
# conf plus client + server
VER=9.7
cp valheimplus/valheim_plus_$VER.cfg valheimplus/valheim_plus.cfg
for i in $JEU $JEUELSA $SRV $SRVELSA ; do
	cp valheimplus/valheim_plus_$VER.cfg $i/BepInEx/config/valheim_plus.cfg
done

# conf 
cp BepInEx\config\client\commun\*.cfg $JEU/BepInEx/config/
cp BepInEx\config\client\commun\*.cfg $JEUELSA/BepInEx/config/
cp BepInEx\config\client\base\*.cfg   $JEU/BepInEx/config/
cp BepInEx\config\client\elsa\*.cfg   $JEUELSA/BepInEx/config/

# plugins
cp BepInEx\plugins\client\commun\*.cfg $JEU/BepInEx/plugins/
cp BepInEx\plugins\client\commun\*.cfg $JEUELSA/BepInEx/plugins/
cp BepInEx\plugins\client\base\*.cfg   $JEU/BepInEx/plugins/
cp BepInEx\plugins\client\elsa\*.cfg   $JEUELSA/BepInEx/plugins/

# plugins et conf pour le jeu de base
for j in spawnthat customraids dropthat ; do
	cp $j/*.dll $JEU/BepInEx/plugins/
	cp $j/*.dll $SRV/BepInEx/plugins/
	cp $j/*.cfg $JEU/BepInEx/config/
	cp $j/*.cfg $SRV/BepInEx/config/
done
	
# plugins et conf elsa
cp EpicLoot/ExtendedItemDataFramework.dll $SRVELSA/BepInEx/plugins/
cp EpicLoot/ExtendedItemDataFramework.dll $JEUELSA/BepInEx/plugins/

for k in EpicLoot RunicPower ; do
	mkdir $SRVELSA/BepInEx/plugins/$k
	mkdir $JEUELSA/BepInEx/plugins/$k
	cp $k/plugins/* $JEUELSA/BepInEx/plugins/EpicLoot/
	cp $k/plugins/* $SRVELSA/BepInEx/plugins/EpicLoot/
	cp $k/*.cfg     $JEUELSA/BepInEx/config/
	cp $k/*.cfg     $SRVELSA/BepInEx/config/
done

cp odinplus/*.dll $JEUELSA/BepInEx/plugins/
cp odinplus/*.dll $SRVELSA/BepInEx/plugins/
cp odinplus/*.cfg $SRVELSA/BepInEx/config/
cp odinplus/*.cfg $JEUELSA/BepInEx/config/


# bettercontinent
# cp BetterContinents.dll Valheim\ dedicated\ server/BepInEx/plugins/
# cp BetterContinents.dll Valheim/BepInEx/plugins/
# cp BetterContinents.cfg Valheim\ dedicated\ server/BepInEx/config/
# cp BetterContinents.cfg Valheim/BepInEx/config/
