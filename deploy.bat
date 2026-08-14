@echo off
echo ===============================
echo Deploying to nginx
echo ===============================

set nginx_path=C:\Users\Taku\AppData\Local\Microsoft\WinGet\Packages\nginxinc.nginx_Microsoft.Winget.Source_8wekyb3d8bbwe\nginx-1.31.3\html

echo copying files to %nginx_path%
copy index.html %nginx_path%\index.html /Y
copy style.css %nginx_path%\style.css /Y 2>nul

echo FILES SUCCESSFULY DEPLOYED