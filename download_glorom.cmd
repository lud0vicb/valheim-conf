set valheim="e:\Steam\SteamApps\common\Valheim"
curl -o valheim-glorom.zip -LJO https://github.com/lud0vicb/valheim-conf/archive/cfg-dll.zip
tar -xf valheim-glorom.zip
cd valheim-conf-cfg-dll
copy Valheim\BepInEx\config\*.cfg %valheim%\BepInEx\config\
copy Valheim\BepInEx\plugin\*.dll %valheim%\BepInEx\plugins\
explorer %valheim%
pause