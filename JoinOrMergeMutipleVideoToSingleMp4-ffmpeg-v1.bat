REM http://stackoverflow.com/questions/7333232/concatenate-two-mp4-files-using-ffmpeg

set ffmpeg=C:\Users\niliu\Documents\LNSoftware\ffmpeg-20151105-git-a8b254e-win64-static\bin\ffmpeg.exe

PUSHD  C:\Users\niliu\Downloads\mergefils\
for %%f in (*.flv) do %ffmpeg% -i "%%f" -ar 22050 "%%~nf.mp4"
del *.flv
REM 1. Transcode them to mpeg streams before concatenation
REM #%ffmpeg% -i myfile1.mp4 -c copy -bsf:v h264_mp4toannexb -f mpegts intermediate1.ts
REM #%ffmpeg% -i myfile2.mp4 -c copy -bsf:v h264_mp4toannexb -f mpegts intermediate2.ts
for %%f in (*.mp4) do %ffmpeg% -i "%%f" -c copy -bsf:v h264_mp4toannexb -f mpegts "%%~nf.ts"
POPD

REM python.exe JoinOrMergeDozensVideoSource.py
python.exe JoinOrMergeHundredsVideo.py

set /p input=Please input the path fileslist:


PUSHD  C:\Users\niliu\Downloads\mergefils\

For /f "tokens=1-4 delims=/ " %%a in ('date /t') do (set mydate=%%a%%b%%c)
echo %mydate%

For /f "tokens=1-4 delims=: " %%a in ('time /t') do (set mytime=%%a%%b)
echo %mytime%

set outputFileName= %mydate%%mytime%

del *.mp4

REM 2. now join
REM %ffmpeg% -i "concat:1.ts|2.ts|3.ts|4.ts|5.ts" -c copy -bsf:a aac_adtstoasc output.mp4
%ffmpeg% -i %input% -c copy -bsf:a aac_adtstoasc %outputFileName%.mp4

echo "Wait for 10 seconds"

if not exist %outputFileName%.mp4 goto end
move %outputFileName%.mp4 \\192.168.0.100\32gusb\LNVideo\
echo "moved to raspberry"
TIMEOUT /T 10

REM clean up *ts 
del *.ts


:concat
set myvar=%myvar% + %1 + %2

:end
