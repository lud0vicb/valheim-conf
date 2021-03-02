set bck=d:\zBackup\valheim

robocopy %userprofile%\appdata\locallow\irongate\valheim %bck% /s /copy:DT /njh /ndl /nc
pause