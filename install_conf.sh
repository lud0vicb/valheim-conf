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
# conf plus 
VER=9.7
cp valheimplus/valheim_plus_$VER.cfg client-server/config/commun/valheim_plus.cfg

# client version base
cp client/config/commun/*         $JEU/BepInEx/config/
cp -R client/plugins/commun/      $JEU/BepInEx/plugins/client-commun/

cp client/config/base/*           $JEU/BepInEx/config/
cp -R client/plugins/base/        $JEU/BepInEx/plugins/client-base/

cp client-server/config/commun/*    $JEU/BepInEx/config/
cp -R client-server/plugins/commun/ $JEU/BepInEx/plugins/client-server/

cp client-server-base/config/*    $JEU/BepInEx/config/
cp -R client-server-base/plugins/ $JEU/BepInEx/plugins/client-server-base/

# client version elsa
cp client/config/commun/*        $JEUELSA/BepInEx/config/
cp -R client/plugins/commun/     $JEUELSA/BepInEx/plugins/client-commun/

cp client/config/elsa/*          $JEUELSA/BepInEx/config/
cp -R client/plugins/elsa/       $JEUELSA/BepInEx/plugins/client-elsa/

cp client-server/config/commun/*    $JEUELSA/BepInEx/config/
cp -R client-server/plugins/commun/ $JEUELSA/BepInEx/plugins/client-server/

cp client-server-elsa/config/*    $JEUELSA/BepInEx/config/
cp -R client-server-elsa/plugins/ $JEUELSA/BepInEx/plugins/client-server-elsa/

# server version base
cp client-server/config/commun/*    $SRV/BepInEx/config/
cp -R client-server/plugins/commun/ $SRV/BepInEx/plugins/client-server/

cp client-server-base/config/*    $SRV/BepInEx/config/
cp -R client-server-base/plugins/ $SRV/BepInEx/plugins/client-server-base/

# server version elsa
cp client-server/config/commun/*    $SRVELSA/BepInEx/config/
cp -R client-server/plugins/commun/ $SRVELSA/BepInEx/plugins/client-server/

cp client-server-elsa/config/*    $SRVELSA/BepInEx/config/
cp -R client-server-elsa/plugins/ $SRVELSA/BepInEx/plugins/client-server-elsa/
