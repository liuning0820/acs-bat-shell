@echo off
findstr /m "computerhope" *.txt > results.txt
if %errorlevel%==0 (
echo Found! logged files into results.txt
) else (
echo No matches found
)