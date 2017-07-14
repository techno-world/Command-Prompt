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
@echo off
:A
Cls
echo Activate/Deactivate any User Account
echo Enter the Username of the account you would like to Activate/Deactivate
set /p n=Username: 
echo Enter the Password of the account that you are trying to Activate/Deactivate
set /p n=Password:  
echo To Activate, type Y, and to Deactivate, type N
set/p "cho=>"
if %cho%==Y net user %n% /active:yes
if %cho%==y net user %n% /active:yes
if %cho%==n net user %n% /active:no
if %cho%==N net user %n% /active:no
Pause
Exit