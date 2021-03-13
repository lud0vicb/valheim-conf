set valheim=e:\Steam\SteamApps\common\Valheim
del /f /s /q valheim-conf-cfg-dll
curl -o valheim-glorom.zip -LJO https://github.com/lud0vicb/valheim-conf/archive/cfg-dll.zip
tar -xf valheim-glorom.zip
cd valheim-conf-cfg-dll
del /f %valheim%\BepInEx\config\*.cfg
del /f %valheim%\BepInEx\plugins\*.dll
copy Valheim\BepInEx\config\*.cfg %valheim%\BepInEx\config\
copy Valheim\BepInEx\plugins\*.dll %valheim%\BepInEx\plugins\
explorer %valheim%
pause