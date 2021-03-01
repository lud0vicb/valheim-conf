@echo off

set game="e:\Steam\SteamApps\common\Valheim"
set server="e:\Steam\SteamApps\common\Valheim dedicated server"

set gameconf="%game%\BepInEx\config\valheim_plus.cfg"
set serverconf="%server%\BepInEx\config\valheim_plus.cfg"
set quickconnect="%valheim%\BepInEx\config\quick_connect_servers.cfg"
set quickdll="%valheim%\BepInEx\plugins\QuickConnect.dll"

curl -o %gameconf% https://raw.githubusercontent.com/lud0vicb/valheim-conf/main/Valheim/BepInEx/config/valheim_plus.cfg
copy %gameconf% %serverconf% 
curl -o %quickconnect% https://raw.githubusercontent.com/lud0vicb/valheim-conf/main/Valheim/BepInEx/config/quick_connect_servers.cfg
curl -o %quickdll% https://raw.githubusercontent.com/lud0vicb/valheim-conf/main/Valheim/BepInEx/plugins/QuickConnect.dll
