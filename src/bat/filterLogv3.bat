@echo off&setlocal Enabledelayedexpansion

For /f "tokens=1-4 delims=/ " %%a in ('date /t') do (set mydate=%%a%%b%%c)
echo %mydate%

type nul > result.txt



for /f "delims=" %%i in ('more /s *%mydate%.txt') do (
if (%%i^|find /i "msdtc.exe")(echo %%i>result.txt)
)
pause
exit
