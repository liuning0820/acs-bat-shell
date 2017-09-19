@echo off&setlocal Enabledelayedexpansion

For /f "tokens=1-4 delims=/ " %%a in ('date /t') do (set mydate=%%a%%b%%c)
echo %mydate%

type nul > result.txt
pause

set n=0
for /f "delims=" %%i in ('more /s *%mydate%.txt') do (
for /f "delims=" %%a in ('echo %%i^|find /i "Error:"') do Goto:RR
set /a n+=1
)
exit
:RR
echo *%mydate%
more +!n! *%mydate%.txt>result.txt
exit