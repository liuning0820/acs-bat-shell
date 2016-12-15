For /f "tokens=1-4 delims=/ " %%a in ('date /t') do (set mydate=%%a%%b%%c)
echo %mydate%

For /f "tokens=1-4 delims=: " %%a in ('time /t') do (set mytime=%%a%%b)
echo %mytime%

set outputFileName= %mydate%%mytime%

echo %outputFileName%.mp4
pause