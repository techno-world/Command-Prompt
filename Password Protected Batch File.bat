@echo off
title Password Protected Batch File
color 0A
:MAIN
cls
echo.
echo Enter your username
echo.
set /p "username= > "
if %username%==BondJo goto PASSWORD
goto ERROR1
:ERROR1
echo.
echo The username was not found, please try again.
echo.
pause
goto MAIN
:PASSWORD
cls
echo.
echo Enter your password
echo.
set /p "password= > "
if %password%==JFN9TE goto OK
goto ERROR2
:ERROR2
echo.
echo The password is incorrect, please try again.
echo.
pause
goto PASSWORD
:OK
REM Do your thing here..
cls
echo.
echo Welcome %username%,
echo.