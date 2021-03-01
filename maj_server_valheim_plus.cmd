@echo off

set valheim="e:\Steam\SteamApps\common\Valheim"
set server="e:\Steam\SteamApps\common\Valheim dedicated server"
set plusconf="BepInEx\config\valheim_plus.cfg"
set srcconf="C:\Users\lud0vicb\Documents\valheim\Valheim\BepInEx\config"

copy %srcconf% %server%\%plusconf%
copy %srcconf% %valheim%\%plusconf%
