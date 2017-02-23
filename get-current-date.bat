@echo off
For /f "tokens=1-4 delims=/ " %%a in ('date /t') do (set mydate=%%a-%%b-%%c)
echo %mydate%
pause