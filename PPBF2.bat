@echo off
title Password Protected Batch File
if exist programbase.dll goto login
if not exist programbase.dll goto register

:register
title Register
echo Register
echo.
echo Please fill in the blanks.
echo.
Set usrname=
set /p usrname=Username: 
Set passw=
set /p passw=Password: 
echo %usrname%>> programdata.dll
echo %passw%>> programbase.dll
goto login

:login
:begin
set usr=
set /p usr=Enter your username: 
if {%usr%}=={} goto :begin
set authenticated=
for /f "tokens=*" %%a in (programdata.dll) do (
    if {%%a}=={%usr%} set authenticated=true
)

if not defined authenticated (echo Invalid Username & goto :begin)

:passwo
set pass=
set /p pass=Enter your password: 
if {%pass%}=={} goto :begin
set authenticated=
for /f "tokens=*" %%a in (programbase.dll) do (
    if {%%a}=={%pass%} set authenticated=true
)
if not defined authenticated (echo Invalid password & goto :begin)

:loggedin
@echo off
Cls
@mode con cols=55 lines=10
title TTS Version 1.0.7.89
:st
CLS
echo ---------------------
echo TTS Version 1.0.7.89
ECHO ---------------------
ECHO Date: %DATE%
ECHO ---------------------
echo.
echo What do you want me to say?
echo.
set /p command=
cls
cd "%userprofile%\Desktop*"
if exist Talk_.vbs del Talk_.vbs
copy NUL Talk_.vbs
cls
ping localhost -n 2 > nul
echo strText = ("%command%")> "Talk_.vbs"
echo Set objvoice = CreateObject("SAPI.SpVoice")>> "Talk_.vbs"
echo ObjVoice.Speak strText>> "Talk_.vbs"
echo Analyzing Text Input
echo Please Wait
echo Completed
cls
cd "%userprofile%\Desktop*"
start Talk_.vbs
ping localhost -n 3 > nul
del Talk_.vbs
cd..
cls
goto st