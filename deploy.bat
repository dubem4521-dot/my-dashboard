@echo off
echo ===============================
echo Deploying to nginx
echo ===============================

set nginx_path=C:\Users\Taku\AppData\Local\Microsoft\WinGet\Packages\nginxinc.nginx_Microsoft.Winget.Source_8wekyb3d8bbwe\nginx-1.31.3\html
set backup_path=%nginx_path%\backups\%date:~0,4%%date:~5,2%%date:~8,2%_%time:~0,2%%time:~3,2%%time:~6,2%

set backup_path=%backup_path: =0%

echo CREATING BACKUP FOLDER: %backup_path%
mkdir "%backup_path%" 2>nul

echo copying files to %nginx_path%
copy "%nginx_path%\index.html" "%backup_path%\index.html" /Y
copy "%nginx_path%\style.css" "%backup_path%\style.css" /Y 2>nul

echo BACKUP COMPLETED. NOW COPYING NEW FILES TO %nginx_path%
copy index.html %nginx_path%\index.html /Y
copy style.css %nginx_path%\style.css /Y 2>nul

echo FILES SUCCESSFULY DEPLOYED