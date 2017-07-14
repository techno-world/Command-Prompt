@echo off
:: BatchGotAdmin
::-------------------------------------
REM  --> Check for permissions
>nul 2>&1 "%SYSTEMROOT%\system32\cacls.exe" "%SYSTEMROOT%\system32\config\system"

REM --> If error flag set, we do not have admin.
if '%errorlevel%' NEQ '0' (
    echo Requesting administrative privileges...
    goto UACPrompt
) else ( goto gotAdmin )

:UACPrompt
    echo Set UAC = CreateObject^("Shell.Application"^) > "%temp%\getadmin.vbs"
    set params = %*:"="
    echo UAC.ShellExecute "cmd.exe", "/c %~s0 %params%", "", "runas", 1 >> "%temp%\getadmin.vbs"

    "%temp%\getadmin.vbs"
    del "%temp%\getadmin.vbs"
    exit /B

:gotAdmin
    pushd "%CD%"
    CD /D "%~dp0"
::--------------------------------------

::ENTER YOUR CODE BELOW:
@ECHO OFF
CLS
:ORIGIN
ECHO 1. Create a New User Account
ECHO 2. Change the Password of an Existing User Account
ECHO 3. Activate/Deactivate a User Account
ECHO 4. Activate/Deactivate the Built-In Administrator Account
ECHO 5. Create a Password-Protected Folder
ECHO 6. Exit
ECHO.

CHOICE /C 123456 /M "Enter your choice: "

:: Note - list ERRORLEVELS in decreasing order
IF ERRORLEVEL 6 GOTO Exit
IF ERRORLEVEL 5 GOTO Operation5
IF ERRORLEVEL 4 GOTO Operation4
IF ERRORLEVEL 3 GOTO Operation3
IF ERRORLEVEL 2 GOTO Operation2
IF ERRORLEVEL 1 GOTO Operation1

:Operation1
@echo off
Cls
echo Create a new User Account
set /p n=Username of New Account: 
set /p np= Password for New Account: 
net user %n% %np% /ADD
Pause
GOTO ORIGIN

:Operation2
@echo off
Cls
ECHO Change the Password of an Existing User Account
set /p j=Username of the Account: 
set /p k=Current Password of the Account:
set /p l=New Password for the Account: 
net user %j% %l% /CHANGE
Pause
GOTO ORIGIN

:Operation3
@echo off
Cls
ECHO Activate/Deactivate a User Account
set /p m=Username of the Account: 
set /p n=Current Password of the Account: 
echo Type Y to activate, and Type N to Deactivate
set/p "cho=>"
if %cho%==Y net user %m% /active:yes
if %cho%==y net user %m% /active:yes
if %cho%==n net user %m% /active:no
if %cho%==N net user %m% /active:no
Pause
GOTO ORIGIN

:Operation4
@echo off
Cls
ECHO Activate/Deactivate the Built-In Administrator Account
echo Type Y to activate the Built-In Administrator Account, and Type N to Deactivate the Built-In Administrator Account
set/p "cho=>"
if %cho%==Y net user Administrator /active:yes
if %cho%==y net user Administrator /active:yes
if %cho%==n net user Administrator /active:no
if %cho%==N net user Administrator /active:no
Pause
GOTO ORIGIN

:Operation5
@echo off
Cls
title Password Protected Folder
echo This will create a Password-Protected Folder that you can use to protect your documents.
echo The default folder Password is: password. To edit the password, please go to the Readme.md file at github.com/maketecheasier/Utilizing-CMD-For-a-More-User-Friendly-Interface
if EXIST "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" goto UNLOCK
if NOT EXIST Locker goto MDLOCKER
:CONFIRM
echo Are you sure u want to Lock the folder(Y/N)
set/p "cho=>"
if %cho%==Y goto LOCK
if %cho%==y goto LOCK
if %cho%==n goto END
if %cho%==N goto END
echo Invalid choice.
goto CONFIRM
:LOCK
ren Locker "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
echo Folder locked
goto End
:UNLOCK
echo Enter password to Unlock folder
set/p "pass=>"
if NOT %pass%==password goto FAIL
attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" Locker
echo Folder Unlocked successfully
goto End
:FAIL
echo Invalid password
goto end
:MDLOCKER
md Locker
echo Locker created successfully

:Exit
@echo off
Cls
ECHO Exit the Program
Pause
Exit