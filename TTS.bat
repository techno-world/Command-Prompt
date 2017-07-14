@echo off
Cls
@mode con cols=55 lines=10
title TTS Version 1
:st
echo What do you want me to say?
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
cd "%userprofile%\desk*"
start Talk_.vbs
ping localhost -n 3 > nul
del Talk_.vbs
cd..
cls
goto st