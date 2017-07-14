@mode con cols=55 lines=10
title TTS Version 1.2.6.54
:st
@echo off
Cls
echo ----------------------
echo TTS Version 1.2.6.54
echo ----------------------
echo Date: %DATE%
echo ----------------------
echo.
echo It is currently %TIME%
echo What would you like your computer to say?
echo.
set /p command=
cls
cd "%userprofile%\desk*"
if exist Talk_.vbs del Talk_.vbs
copy NUL Talk_.vbs
cls
ping localhost -n 2 > nul
echo strText = ("%command%")> "Talk_.vbs"
echo Set objvoice = CreateObject("SAPI.SpVoice")>> "Talk_.vbs"
echo ObjVoice.Speak strText>> "Talk_.vbs"
cls
cd "%userprofile%\desk*"
start Talk_.vbs
ping localhost -n 3 > nul
del Talk_.vbs
cd..
cls
goto st