set /p input=Please put the path you want to add to environment Path:

echo %input%
pause


set path=%path%;"%input%"

pause

echo %PATH%