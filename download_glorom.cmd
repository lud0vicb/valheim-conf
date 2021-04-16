set valheim=e:\Steam\SteamApps\common\Valheim
set valerheim=e:\Steam\SteamApps\common\Valerheim

echo 'téléchargement version courante'
del /f /s /q valheim-conf-cfg-dll
curl -o valheim-glorom.zip -LJO https://github.com/lud0vicb/valheim-conf/archive/cfg-dll.zip
tar -xf valheim-glorom.zip
cd valheim-conf-cfg-dll

echo 'installation config jeu classique'
del /f /s /q %valheim%\BepInEx\config
del /f /s /q %valheim%\BepInEx\plugins
robocopy /s Valheim\BepInEx\config %valheim%\BepInEx\config
robocopy /s Valheim\BepInEx\plugins %valheim%\BepInEx\plugins
copy Valheim/*.cmd %valheim%

if exist %valerheim% (
    rem file exists
) else (
    echo "copie du jeu dans une nouvelle installation"
	robocopy /s %valheim% %valerheim%
	echo "continue ?"
	pause
)

echo 'installation config jeu plugins elsa'
del /f /s /q %valerheim%\BepInEx\config
del /f /s /q %valerheim%\BepInEx\plugins
robocopy /s Valerheim\BepInEx\config %valerheim%\BepInEx\config
robocopy /s Valerheim\BepInEx\plugins %valerheim%\BepInEx\plugins
copy Valheim/*.cmd %valerheim%

explorer %valheim%
explorer %valerheim%