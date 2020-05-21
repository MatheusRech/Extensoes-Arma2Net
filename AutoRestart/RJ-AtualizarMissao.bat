@echo off

set NomeMissao=nome da missao
set NomeSVMod=nome do ModServer
set pathServer="path server"
set pathModAddons="path mod addons"
set pathNovamissao="path da pasta com os novos arquivos"

goto :MataArma3

:MataArma3
taskkill /f /im "arma3server.exe"
taskkill /f /im "arma3server_x64.exe"
ping -n 2 127.0.0.1 >NUL
taskkill /f /im "arma3server.exe"
taskkill /f /im "arma3server_x64.exe"

goto :TrocaMissao

:TrocaMissao
if NOT exist "%pathServer%\%pathNovamissao%\%NomeMissao%" goto :TrocaLifeServer

del /q "%pathServer%\mpmissions\%NomeMissao%"
move /Y "%pathServer%\%pathNovamissao%\%NomeMissao%" "%pathServer%\mpmissions"
del /q "%pathServer%\%pathNovamissao%\%NomeMissao%"

goto :TrocaLifeServer

:TrocaLifeServer
if NOT exist "%pathServer%\%pathNovamissao%\%NomeSVMod%" goto :Inicia

del /q "%pathServer%\%pathModAddons%\%NomeSVMod%"
move /Y "%pathServer%\%pathNovamissao%\%NomeSVMod%" "%pathServer%\%pathModAddons%"
del /q "%pathServer%\%pathNovamissao%\%NomeSVMod%"

goto :Inicia

:Inicia
cd %pathServer%
call RJ-Iniciar.bat

exit