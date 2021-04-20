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

echo 'installation config jeu classique'
copy client\config\commun\*.*          %valheim%\BepInEx\config\
copy client\config\base\*.*            %valheim%\BepInEx\config\
copy client-server-base\config\*.cfg   %valheim%\BepInEx\config\
copy client-server\config\commun\*.cfg %valheim%\BepInEx\config\

robocopy /e client\plugins\commun\      %valheim%\BepInEx\plugins\client-commun\
robocopy /e client\plugins\base\        %valheim%\BepInEx\plugins\client-base\
robocopy /e client-server-base\plugins\ %valheim%\BepInEx\plugins\client-server-base\
robocopy /e client-server\plugins\commun\      %valheim%\BepInEx\plugins\client-server\

copy *.cmd %valheim%
rem del %valheim%\BepInEx\plugins\InvisHelm.dll

echo 'installation config jeu plugins elsa'
copy client\config\commun\*.*           %valerheim%\BepInEx\config\
copy client\config\elsa\*.*             %valerheim%\BepInEx\config\
copy client-server-elsa\config\*.cfg    %valerheim%\BepInEx\config\
copy client-server\config\commun\*.cfg  %valerheim%\BepInEx\config\

robocopy /e client\plugins\commun\        %valerheim%\BepInEx\plugins\client-commun\
robocopy /e client\plugins\elsa\          %valerheim%\BepInEx\plugins\client-elsa\
robocopy /e client-server-elsa\plugins\   %valerheim%\BepInEx\plugins\client-server-elsa\
robocopy /e client-server\plugins\commun\ %valerheim%\BepInEx\plugins\client-server\

copy *.cmd %valerheim%
rem del %valerheim%\BepInEx\plugins\InvisHelm.dll

explorer %valheim%
explorer %valerheim%