@echo off&setlocal Enabledelayedexpansion

For /f "tokens=1-4 delims=/ " %%a in ('date /t') do (set mydate=%%a%%b%%c)
echo %mydate%

type nul > result.txt


set n=0
for /f "delims=" %%i in ('more /s *%mydate%.txt') do (
for /f "delims=" %%a in ('echo %%i^|find /i "msdtc.exe"') do echo %%i>result.txt
set /a n+=1
)
pause
exit
