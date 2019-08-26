@echo off
dir /a-d /b *.js >src.txt
start for /f "delims=" %%i in (src.txt) do (dtsmake -s  %%i -A -i -a -g)

