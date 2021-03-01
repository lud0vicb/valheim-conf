@echo off

set valheim="e:\Steam\SteamApps\common\Valheim"

set gameconf="%valheim%\BepInEx\config\valheim_plus.cfg"
set destconf="%appdata%\..\..\Downloads\valheim_plus.cfg"
curl -o %destconf% https://raw.githubusercontent.com/lud0vicb/valheim-conf/main/Valheim/BepInEx/config/valheim_plus.cfg
copy %destconf% %gameconf%
