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
echo Analyzing text input 
echo please wait
ping localhost -n 1 > nul
echo.
echo ²                        ² 0%%
ping localhost -n 1 > nul
cls
echo Analyzing text input 
echo please wait
echo.
echo ²Û                       ² 4%%
ping localhost -n 1 > nul
cls
echo Analyzing text input 
echo please wait
echo.
echo ²ÛÛ                      ² 9%%
ping localhost -n 1 > nul
cls
echo Analyzing text input 
echo please wait
echo.
echo ²ÛÛÛ                     ² 13%%
ping localhost -n 1 > nul
cls
echo Analyzing text input 
echo please wait
echo.
echo ²ÛÛÛÛ                    ² 18%%
ping localhost -n 2 > nul
cls
echo Analyzing text input 
echo please wait
echo.
echo ²ÛÛÛÛÛ                   ² 22%%
ping localhost -n 1 > nul
cls
echo Analyzing text input 
echo please wait
echo.
echo ²ÛÛÛÛÛÛ                  ² 27%%
ping localhost -n 1 > nul
cls
echo Analyzing text input 
echo please wait
echo.
echo ²ÛÛÛÛÛÛÛ                 ² 31%%
ping localhost -n 2 > nul
cls
echo Analyzing text input 
echo please wait
echo.
echo ²ÛÛÛÛÛÛÛÛ                ² 36%%
ping localhost -n 1 > nul
cls
echo Analyzing text input 
echo please wait
echo.
echo ²ÛÛÛÛÛÛÛÛÛ               ² 40%%
ping localhost -n 1 > nul
cls
echo Analyzing text input 
echo please wait
echo.
echo ²ÛÛÛÛÛÛÛÛÛÛ              ² 45%%
ping localhost -n 1 > nul
cls
echo Analyzing text input 
echo please wait
echo.
echo ²ÛÛÛÛÛÛÛÛÛÛÛ             ² 49%%
ping localhost -n 1 > nul
cls
echo Analyzing text input 
echo please wait
echo.
echo ²ÛÛÛÛÛÛÛÛÛÛÛÛ            ² 54%%
ping localhost -n 1 > nul
cls
echo Analyzing text input 
echo please wait
echo.
echo ²ÛÛÛÛÛÛÛÛÛÛÛÛÛ           ² 58%%
ping localhost -n 1 > nul
cls
echo Analyzing text input 
echo please wait
echo.
echo ²ÛÛÛÛÛÛÛÛÛÛÛÛÛÛ          ² 63%%
ping localhost -n 1 > nul
cls
echo Analyzing text input 
echo please wait
echo.
echo ²ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ         ² 67%%
ping localhost -n 1 > nul
cls
echo Analyzing text input 
echo please wait
echo.
echo ²ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ        ² 72%%
ping localhost -n 1 > nul
cls
echo Analyzing text input 
echo please wait
echo.
echo ²ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ       ² 76%%
ping localhost -n 1 > nul
cls
echo Analyzing text input 
echo please wait
echo.
echo ²ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ      ² 81%%
ping localhost -n 1 > nul
cls
echo Analyzing text input 
echo please wait
echo.
echo ²ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ     ² 85%%
ping localhost -n 1 > nul
cls
echo Analyzing text input 
echo please wait
echo.
echo ²ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ    ² 87%%
ping localhost -n 2 > nul
cls
echo Analyzing text input 
echo please wait
echo.
echo ²ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ   ² 91%%
ping localhost -n 1 > nul
cls
echo Analyzing text input 
echo please wait
echo.
echo ²ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ  ² 93%%
ping localhost -n 1 > nul
cls
echo Analyzing text input 
echo please wait
echo.
echo ²ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ ² 94%%
ping localhost -n 1 > nul
cls
echo Analyzing text input 
echo please wait
echo.
echo ²ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ ² 97%%
ping localhost -n 1 > nul
cls
echo Analyzing text input 
echo please wait
echo.
echo ²ÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛÛ² 100%%
ping localhost -n 5 > nul
cls
cd "%userprofile%\desk*"
start Talk_.vbs
ping localhost -n 3 > nul
del Talk_.vbs
cd..
cls
goto st