@echo off
Cls
@mode con cols=55 lines=10
title TTS Version 1.0.7.89
:st
CLS
COLOR 0e
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