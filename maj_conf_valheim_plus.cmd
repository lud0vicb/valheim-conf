@echo off

set valheim="e:\Steam\SteamApps\common\Valheim"

set gameconf="%valheim%\BepInEx\config\valheim_plus.cfg"
set quickconnect="%valheim%\BepInEx\config\quick_connect_servers.cfg"
set quickdll="%valheim%\BepInEx\plugins\QuickConnect.dll"

curl -o %gameconf% https://raw.githubusercontent.com/lud0vicb/valheim-conf/main/Valheim/BepInEx/config/valheim_plus.cfg
curl -o %quickconnect% https://raw.githubusercontent.com/lud0vicb/valheim-conf/main/Valheim/BepInEx/config/quick_connect_servers.cfg
curl -o %quickdll% https://github.com/lud0vicb/valheim-conf/raw/main/Valheim/BepInEx/plugins/QuickConnect.dll