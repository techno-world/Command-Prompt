@ECHO OFF
CLS
:ORIGIN
ECHO 1.Create a New User Account
ECHO 2.Change the Password of an Existing User Account
ECHO 3.Activate/Deactivate a User Account
ECHO 4.Activate/Deactivate the Built-In Administrator Account
ECHO 5.Exit
ECHO.

CHOICE /C 12345 /M "Enter your choice:"

:: Note - list ERRORLEVELS in decreasing order
IF ERRORLEVEL 5 GOTO Exit
IF ERRORLEVEL 4 GOTO Operation4
IF ERRORLEVEL 3 GOTO Operation3
IF ERRORLEVEL 2 GOTO Operation2
IF ERRORLEVEL 1 GOTO Operation1

:Operation1
ECHO Restart (put your restart code here)
GOTO ORIGIN

:Operation2
ECHO Shutdown (put your shutdown code here)
GOTO ORIGIN

:Operation3
ECHO Close All Windows (put your close all windows code here)
GOTO ORIGIN

:Operation4
ECHO Logoff (put your log off code here)
GOTO ORIGIN

:Exit
ECHO Switch User (put your switch user code here)
GOTO ORIGIN