set valheim=e:\Steam\SteamApps\common\Valheim
del /f /s /q valheim-conf-cfg-dll
curl -o valheim-glorom.zip -LJO https://github.com/lud0vicb/valheim-conf/archive/cfg-dll.zip
tar -xf valheim-glorom.zip
cd valheim-conf-cfg-dllr
del /f /s %valheim%\BepInEx\config\
del /f /s %valheim%\BepInEx\plugins\
xcopy /s Valheim\BepInEx\config\ %valheim%\BepInEx\
xcopy /s Valheim\BepInEx\plugins\ %valheim%\BepInEx\
explorer %valheim%
