#!/bin/bash
JEU=/mnt/c/jeux/steamapps/common/Valheim
JEUELSA=/mnt/c/jeux/steamapps/common/Valerheim
SRV=/mnt/c/jeux/steamapps/common/Valheim-server
SRVELSA=/mnt/c/jeux/steamapps/common/Valerheim-server

# clean
[ -d /tmp/CustomTextures ] && rm -rf /tmp/CustomTextures
[ -d $JEU/BepInEx/plugins/CustomTextures ] && cp -R $JEU/BepInEx/plugins/CustomTextures /tmp/
for a in $JEU $JEUELSA $SRV $SRVELSA ; do
	rm -rf $a/BepInEx/config/
	rm -rf $a/BepInEx/plugins/
	mkdir  $a/BepInEx/config/
	mkdir  $a/BepInEx/plugins/
done
for b in $JEU $JEUELSA ; do
	[ -d /tmp/CustomTextures ] && cp -R /tmp/CustomTextures $b/BepInEx/plugins/
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
cp client/config/commun/* $JEU/BepInEx/config/
cp client/config/commun/* $JEUELSA/BepInEx/config/
cp client/config/base/*   $JEU/BepInEx/config/
cp client/config/elsa/*   $JEUELSA/BepInEx/config/

# plugins
cp -R client/plugins/commun/ $JEU/BepInEx/plugins/client-commun/
cp -R client/plugins/commun/ $JEUELSA/BepInEx/plugins/client-commun/
cp -R client/plugins/base/   $JEU/BepInEx/plugins/client-base/
cp -R client/plugins/elsa/   $JEUELSA/BepInEx/plugins/client-elsa/

# plugins et conf pour le jeu de base
cp -R client-server-base/plugins/ $JEU/BepInEx/plugins/client-server-base/
cp -R client-server-base/plugins/ $SRV/BepInEx/plugins/client-server-base/

cp client-server-base/config/* $JEU/BepInEx/config/
cp client-server-base/config/* $SRV/BepInEx/config/
	
# plugins et conf elsa
cp -R client-server-elsa/plugins/ $JEUELSA/BepInEx/plugins/client-server-elsa/
cp -R client-server-elsa/plugins/ $SRVELSA/BepInEx/plugins/client-server-elsa/

cp client-server-elsa/config/* $JEUELSA/BepInEx/config/
cp client-server-elsa/config/* $SRVELSA/BepInEx/config/


