@echo off

set pathServer="path server"

cd %pathServer%

:inicio

forfiles /p "%pathServer%\SERVER" /s /m *.RPT /D -2 /C "cmd /c del @path"

start arma3server.exe -port=2302 -malloc=tbbmalloc "-config=C:\a3server\SERVER\server.cfg" "-cfg=C:\a3server\SERVER\network.cfg" "-profiles=C:\a3server\SERVER" -name=SERVER -filePatching -loadMissionToMemory -autoinit "-servermod=@DiscordEmbedBuilder;@RJ_Life;@RJ_A3AH;@Arma2NET"
ping -n 2 127.0.0.1 >NUL
exit