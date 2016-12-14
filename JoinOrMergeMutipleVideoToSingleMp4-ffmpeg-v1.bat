REM http://stackoverflow.com/questions/7333232/concatenate-two-mp4-files-using-ffmpeg
set ffmpeg=C:\Users\niliu\Documents\LNSoftware\ffmpeg-20151105-git-a8b254e-win64-static\bin\ffmpeg.exe

REM python.exe JoinOrMergeDozensVideoSource.py
python.exe JoinOrMergeHundredsVideo.py

set /p input=Please input the path fileslist again:


PUSHD  C:\Users\niliu\Downloads\mergefils\


pause
REM #%ffmpeg% -i myfile1.mp4 -c copy -bsf:v h264_mp4toannexb -f mpegts intermediate1.ts
REM #%ffmpeg% -i myfile2.mp4 -c copy -bsf:v h264_mp4toannexb -f mpegts intermediate2.ts
REM // now join
REM %ffmpeg% -i "concat:1.ts|2.ts|3.ts|4.ts|5.ts" -c copy -bsf:a aac_adtstoasc output.mp4
%ffmpeg% -i %input% -c copy -bsf:a aac_adtstoasc output.mp4

pause




:concat
set myvar=%myvar% + %1 + %2

