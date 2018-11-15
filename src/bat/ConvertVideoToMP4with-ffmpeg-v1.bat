set /p input=Please provide the source media file path:

echo %input%

call C:\Users\niliu\Documents\LNSoftware\ffmpeg-20151105-git-a8b254e-win64-static\bin\ffmpeg.exe -i %input% %input%.mp4

del %input%


pause

