#!/bin/bash
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
cp valheimplus/*.dll $SRVELSA/BepInEx/plugins/
cp valheimplus/*.dll $SRV/BepInEx/plugins/

# conf 
cp BepInEx/config/client/commun/* $JEU/BepInEx/config/
cp BepInEx/config/client/commun/* $JEUELSA/BepInEx/config/
cp BepInEx/config/client/base/*   $JEU/BepInEx/config/
cp BepInEx/config/client/elsa/*   $JEUELSA/BepInEx/config/

# plugins
cp BepInEx/plugins/client/commun/* $JEU/BepInEx/plugins/
cp BepInEx/plugins/client/commun/* $JEUELSA/BepInEx/plugins/
cp BepInEx/plugins/client/base/*   $JEU/BepInEx/plugins/
cp BepInEx/plugins/client/elsa/*   $JEUELSA/BepInEx/plugins/

# plugins et conf pour le jeu de base
for j in base ; do
	cp $j/*.dll $JEU/BepInEx/plugins/
	cp $j/*.dll $SRV/BepInEx/plugins/
	cp $j/*.cfg $JEU/BepInEx/config/
	cp $j/*.cfg $SRV/BepInEx/config/
done
	
# plugins et conf elsa
for k in EpicLoot RunicPower ; do
	cp -R elsa/$k $JEUELSA/BepInEx/plugins/
	cp -R elsa/$k $SRVELSA/BepInEx/plugins/
done

cp elsa/*.dll $JEUELSA/BepInEx/plugins/
cp elsa/*.dll $SRVELSA/BepInEx/plugins/
cp elsa/*.cfg $JEUELSA/BepInEx/config/
cp elsa/*.cfg $SRVELSA/BepInEx/config/


