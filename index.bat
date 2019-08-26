@echo off
set Copy="dmake.bat"
for /f "tokens=*" %%i in ('dir/s/b/ad') do copy %Copy% "%%i"
pause
@echo off
for /f "delims=" %%i in ('dir /a-d/s/b dmake.bat') do (
cd /d "%%~dpi"
call "%%~nxi"
)
pause
@echo off
del %0
pause