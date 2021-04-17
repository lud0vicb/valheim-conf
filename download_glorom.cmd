set valheim=c:\jeux\SteamApps\common\Valheim-2
set valerheim=c:\jeux\SteamApps\common\Valerheim-2

echo 'téléchargement version courante'
del /f /s /q valheim-conf-elsa
curl -o valheim-elsa.zip -LJO https://github.com/lud0vicb/valheim-conf/archive/elsa.zip
tar -xf valheim-elsa.zip
cd valheim-conf-elsa

if exist %valerheim% (
    rem file exists
) else (
    echo "copie du jeu elsa dans une nouvelle installation"
	robocopy /e %valheim% %valerheim%
	pause
)

echo 'nettoyage'
robocopy /e %valheim%\BepInEx\plugins\CustomTextures\ c:\CustomTextures
del /f /s /q %valheim%\BepInEx\config\
del /f /s /q %valheim%\BepInEx\plugins\
del /f /s /q %valerheim%\BepInEx\config\
del /f /s /q %valerheim%\BepInEx\plugins\
robocopy /e c:\CustomTextures %valheim%\BepInEx\plugins\CustomTextures\ 
robocopy /e c:\CustomTextures %valerheim%\BepInEx\plugins\CustomTextures\ 

echo 'installation valheim plus'
copy valheimplus\valheim_plus.cfg %valheim%\BepInEx\config\
copy valheimplus\valheim_plus.cfg %valerheim%\BepInEx\config\
copy valheimplus\*.dll %valheim%\BepInEx\plugins\
copy valheimplus\*.dll %valerheim%\BepInEx\plugins\

echo 'installation config jeu classique'
copy BepInEx\config\client\commun\*.cfg %valheim%\BepInEx\config\
copy BepInEx\config\client\base\*.cfg   %valheim%\BepInEx\config\
copy BepInEx\plugins\client\commun\*.*  %valheim%\BepInEx\plugins\
copy BepInEx\plugins\client\base\*.*    %valheim%\BepInEx\plugins\
copy *.cmd %valheim%
copy base\*.dll %valheim%\BepInEx\plugins\
copy base\*.cfg %valheim%\BepInEx\config\

echo 'installation config jeu plugins elsa'
copy BepInEx\config\client\commun\*.cfg %valerheim%\BepInEx\config\
copy BepInEx\config\client\elsa\*.cfg   %valerheim%\BepInEx\config\
copy BepInEx\plugins\client\commun\*.*  %valerheim%\BepInEx\plugins\
copy BepInEx\plugins\client\elsa\*.*    %valerheim%\BepInEx\plugins\
copy *.cmd %valerheim%
copy elsa\*.dll %valerheim%\BepInEx\plugins\
copy elsa\*.cfg %valerheim%\BepInEx\config\
robocopy /e elsa\EpicLoot   %valerheim%\BepInEx\plugins\EpicLoot\
robocopy /e elsa\RunicPower %valerheim%\BepInEx\plugins\RunicPower\

explorer %valheim%
explorer %valerheim%