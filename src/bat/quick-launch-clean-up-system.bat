@echo on

@REM Set Path
@echo off


REM vs2015 quick launch
set vs_path="C:\Program Files (x86)\Microsoft Visual Studio 14.0\Common7\IDE\"
set vs=devenv.exe

REM quick launch for microsoft sql server 2014
set sql_path="C:\Program Files (x86)\Microsoft SQL Server\120\Tools\Binn\ManagementStudio\"
set sql=Ssms.exe


set SA_Log_path=C:\Logfiles\SA

set ie_path="C:\Program Files\Internet Explorer\"
set ie=iexplore.exe


set cmd_path="C:\WINDOWS\system32\"
set cmd=cmd.exe

set mstsc_path=%SystemRoot%\system32\
set mstsc=mstsc.exe

set notepad_path=%SystemRoot%\system32\
set notepad=notepad.exe

set SyncCode_path=C:\Documents and Settings\niliu\My Documents\Bat
set SyncCode=SyncCode.bat

set il_path=C:\Program Files\Microsoft Visual Studio 8\SDK\v2.0\Bin\
set il= ildasm.exe

set iis_path=%SystemRoot%\system32\
set iis=inetmgr

set draw_path=%SystemRoot%\system32\
set draw=mspaint.exe

set outlook_path="C:\Program Files\Microsoft Office\OFFICE15\"
@rem set outlook=OUTLOOK.EXE /recycle

set qq_path="D:\Program Files\QQ2007\Bin\"
set qq=QQ.exe

set Word_path="C:\Program Files\Microsoft Office\Office12"
set word=WINWORD.EXE

set excel_path="C:\Program Files\Microsoft Office\Office12"
set excel=EXCEL.EXE


set excel_path="C:\Program Files\Microsoft Office\Office12"
set excel=EXCEL.EXE

set ppt_path="C:\Program Files\Microsoft Office\Office12"
set ppt=POWERPNT.EXE


set ttplayer_path="C:\Program Files\TTPlayer\"
set ttplayer=TTPlayer.exe

set reflector_path="C:\Documents and Settings\niliu\My Documents\Software\reflector"
set reflector=reflector.exe

set eventlog_path="C:\WINDOWS\system32\"
set eventlog=eventvwr.exe

set buildsolution_path="C:\Documents and Settings\niliu\My Documents\Bat"
set buildsolution=BuildSolution.bat

set root_path="C:\Documents and Settings\niliu\My Documents\Bat"

set windbgPath= "C:\Program Files\Windows Kits\8.0\Debuggers\x86\"
@rem call setpath.bat



set Cmd_A_Result=1

:menu
cls
if %Cmd_A_Result%==0 echo invalid command!
echo clear="clear system"
echo startIIS="Start IIS"
echo StopIIS="Stop IIS"
echo log=eventvwr.exe
echo svn="update svn code"
echo outlook="MS Outlook"
echo vs=devenv.exe	notepad=notepad.exe	draw=mspaint.exe
echo sql=Ssms.exe			qq=QQ.exe
echo ie=iexplore.exe	notepad2=notepad2.exe	tt=TTPlayer
echo cmd=cmd.exe	    build=buildsolution.bat
echo iis=inetmgr.exe 	ppt=PowerPoint		doc=Word       		xls=Excel
echo todo=TODO.txt		il=ildasm		ref=reflector

title my control center
::color fc


set /p Cmd_A=:
set Cmd_A_Result=0
call :%Cmd_A%
goto :menu

:VisualStudio
set Cmd_A_Result=1
pushd %vs_path%
start %vs%
popd
goto :menu


:windbg
set Cmd_A_Result=1
pushd %windbgPath%
start windbg.exe
popd
goto :menu

@REM *************************************************************************
@REM This script is used to dump process using adplus.
@REM *************************************************************************
:dump
set /p input=Please input the process number:
@echo [pushd to winDbg Path]
@pushd %windbgPath%
call adplus.exe -hang -o C:\mydump -p %input%
@popd
goto:menu


@REM *************************************************************************
@REM This script is used to build visual studio sln using msbuild.
@REM *************************************************************************
:msbuild
@echo  "2 for .net 2.0"
@echo "3 for .net 3.0 &3.5"
@echo "4 for .net 4.0 & 4.5"
set /p input=Please choose .net framework version:
if %input%==2 goto 2
if %input%==3 goto 3
if %input%==4 goto 4

:2
set msPath= C:\Windows\Microsoft.NET\Framework\v2.0.50727  
goto :project
:3
set msPath= C:\Windows\Microsoft.NET\Framework\v3.5 
goto :project
:4
set msPath= "C:\Windows\Microsoft.NET\Framework\v4.0.30319"
goto :project

:project
echo msPath is %msPath%
set /p input=Please choose sln or project path:

if %input%==0 goto menu
echo %input%

@echo %msPath%\MSBuild.exe %input%
call %msPath%\MSBuild.exe %input% /t:Build
goto :project
goto :menu


@REM *************************************************************************
@REM This script is used to auto update svn code.
@REM *************************************************************************
:svn
set Cmd_A_Result=1
set svn_home=C:\Program Files\TortoiseSVN\bin
set svn_work1=C:\LNProject\SA
set svn_work2=C:\LNProject\Mobility
set svn_work3=C:\LNProject\DotNetTutorial
set svn_work4=C:\LNProject\DebuggingTutorial
if not exist %svn_work1% GOTO :menu
"%svn_home%"\TortoiseProc.exe/command:update /path:"%svn_work1%" /notempfile /closeonend:1
"%svn_home%"\TortoiseProc.exe/command:update /path:"%svn_work2%" /notempfile /closeonend:1
"%svn_home%"\TortoiseProc.exe/command:update /path:"%svn_work3%" /notempfile /closeonend:1
"%svn_home%"\TortoiseProc.exe/command:update /path:"%svn_work4%" /notempfile /closeonend:1
goto :menu


@REM *************************************************************************
@REM This script is used to start the Internet Information Services.
@REM *************************************************************************
:salog
set Cmd_A_Result=1

set SA_Log_path=C:\Logfiles\SA
@echo 1
pause
echo %SA_Log_path%\log%date:~10,4%%date:~4,2%%date:~7,2%.txt
pause
type %SA_Log_path%\log%date:~10,4%%date:~4,2%%date:~7,2%.txt

goto :menu

:test

if exist C:\LNProject\SA\TestResults == false
md "C:\LNProject\SA\TestResults"
goto :menu



@REM *************************************************************************
@REM This script is used to start the Internet Information Services.
@REM *************************************************************************
:StartIIS
set Cmd_A_Result=1
echo 1
net start iisadmin
net start w3svc
goto :menu

@REM *************************************************************************
@REM This script is used to stop the Internet Information Services.
@REM *************************************************************************
:StopIIS
set Cmd_A_Result=1
net stop w3svc
net stop iisadmin
goto :menu

:sql
set Cmd_A_Result=1
pushd %sql_path%
start %sql%
popd
goto :menu


:ie
set Cmd_A_Result=1
set Cmd_B=http://www.google.cn
set /p Cmd_B=:
if %Cmd_B%==gl set Cmd_B=https://mail.google.com/
if %Cmd_B%==weather set Cmd_B=http://www.weather.com.cn/weather/101020100.shtml
if %Cmd_B%==Provisioning set Cmd_B="http://192.168.28.121/PremierOneAdminConsole/AppLogin/UserLogin.aspx?ReturnUrl=/PremierOneAdminConsole/AppComponents/WebPortal.aspx"
if %Cmd_B%==pic set Cmd_B="http://www.tianya.cn/new/Publicforum/articlesList.asp?strItem=no04"
if %Cmd_B%==Translate set Cmd_B="http://translate.google.cn/?hl=zh-CN&tab=wT#"
if %Cmd_B%==Google.com set Cmd_B=http://www.google.com/
if %Cmd_B%==Baidu set Cmd_B=http://www.baidu.com/
if %Cmd_B%==News set Cmd_B=http://www.daqi.com/
pushd %ie_path%
start %ie% %Cmd_B%
popd
goto :menu


:Cmd
set Cmd_A_Result=1
pushd %cmd_path%
start %cmd%
popd
goto :menu





:email
set Cmd_A_Result=1
pushd %outlook_path%
@rem run outlook every 1 hour
:1s
call OUTLOOK.exe
ping -n 3600 127.0.0.1 >nul
goto :1s


:outlook
set Cmd_A_Result=1
pushd %outlook_path%
call OUTLOOK.exe
goto :menu


:Mstsc
set Cmd_A_Result=1
set arg=/v 16.158
set Cmd_C=28.121
set /p Cmd_C=:
if %Cmd_C%==121 set Cmd_C=28.121
if %Cmd_C%==212 set Cmd_C=28.212
if %Cmd_C%==100 set Cmd_C=17.100
pushd %mstsc_path%
start %mstsc% %arg%%Cmd_C%
popd
goto :menu

:NotePad
set Cmd_A_Result=1
pushd %notepad_path%
start %notepad%
popd
goto :menu

:Ref
set Cmd_A_Result=1
pushd %reflector_path%
start %reflector%
popd
goto :menu


:syncc
set Cmd_A_Result=1
pushd %SyncCode_path%
call %SyncCode%
cd %root_path%
goto :menu


:il
set Cmd_A_Result=1
pushd %il_path%
start %il%
popd
goto :menu

:iis
set Cmd_A_Result=1
pushd %iis_path%
start %iis%
popd
goto :menu

:Draw
set Cmd_A_Result=1
pushd %draw_path%
start %draw%
popd
goto :menu

:WinMerge
set Cmd_A_Result=1
pushd %merge_path%
start %merge%
popd
goto :menu

:OutLook
set Cmd_A_Result=1
pushd %outlook_path%
start %outlook%
popd
goto :menu


:doc
set Cmd_A_Result=1
pushd %word_path%
start %word%
popd
goto :menu


:ppt
set Cmd_A_Result=1
pushd %ppt_path%
start %ppt%
popd
goto :menu


:xls
set Cmd_A_Result=1
pushd %excel_path%
start %excel%
popd
goto :menu

:root
set Cmd_A_Result=1
pushd %root_path%
cd %root_path%
cmd

:Explorer
set Cmd_A_Result=1
set Cmd_B=
set /p Cmd_B=:
if %Cmd_B%==MDT set Cmd_B=%mdt_path%
if %Cmd_B%==CAD set Cmd_B=%cad_path%
if %Cmd_B%==Log set Cmd_B="C:\Documents and Settings\All Users"
if %Cmd_B%==Daily set Cmd_B="\\192.168.1.18\development\Motorola\Temp\R2\Team7\DailyWorkReport"
if %Cmd_B%==Tool set Cmd_B="D:\DeploymentTool_12_09_For_R2_DEV"
if %Cmd_B%==Provisioning set Cmd_B=%prov_path%
start %explorer% %Cmd_B%
goto :menu


:clear
set Cmd_A_Result=1
@rem pushd %clear_path%
@rem start %clear%
@echo off
echo Start to clear the system,Please wait...
del /f /s /q %systemdrive%\*.tmp
del /f /s /q %systemdrive%\*._mp
del /f /s /q %systemdrive%\*.log
del /f /s /q %systemdrive%\*.gid
del /f /s /q %systemdrive%\*.chk
del /f /s /q %systemdrive%\*.old
del /f /s /q %systemdrive%\recycled\*.*
del /f /s /q %windir%\*.bak
del /f /s /q %windir%\prefetch\*.*
rd /s /q %windir%\temp & md %windir%\temp
del /f /q %userprofile%\cookies\*.*
del /f /q %userprofile%\recent\*.*
del /f /s /q "%userprofile%\Local Settings\Temporary Internet Files\*.*"
del /f /s /q "%userprofile%\Local Settings\Temp\*.*"
del /f /s /q "%userprofile%\recent\*.*"
echo Clear finished...
popd

echo Start to defrag
defrag /C /U /V
goto :menu

:qq
set Cmd_A_Result=1
pushd %qq_path%
start %qq%
popd
goto :menu

:build
set Cmd_A_Result=1
pushd %buildsolution_path%
call %buildsolution%
popd
goto :menu

:tt
set Cmd_A_Result=1
pushd %ttplayer_path%
start %ttplayer%
popd
goto :menu

:log
set Cmd_A_Result=1
pushd %eventlog_path%
start %eventlog%
popd
goto :menu


:TaskKill
set Cmd_A_Result=1
set /p Cmd_B=:
taskkill /im %Cmd_B%.exe
goto :menu