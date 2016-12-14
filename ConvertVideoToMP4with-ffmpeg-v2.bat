set ffmpeg=C:\Users\niliu\Documents\LNSoftware\ffmpeg-20151105-git-a8b254e-win64-static\bin\ffmpeg.exe
PUSHD  C:\Users\niliu\Documents\LNIPhone\
for %%f in (*.mov) do %ffmpeg% -i "%%f" "%%~nf.mp4"


pause

