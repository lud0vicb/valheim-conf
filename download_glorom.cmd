set valheim=e:\Steam\SteamApps\common\Valheim
del /f /s /q valheim-conf-cfg-dll
curl -o valheim-glorom.zip -LJO https://github.com/lud0vicb/valheim-conf/archive/cfg-dll.zip
tar -xf valheim-glorom.zip
cd valheim-conf-cfg-dll
del /f /s /q %valheim%\BepInEx\config
del /f /s /q %valheim%\BepInEx\plugins
robocopy /s Valheim\BepInEx\config %valheim%\BepInEx\config
robocopy /s Valheim\BepInEx\plugins %valheim%\BepInEx\plugins
explorer %valheim%