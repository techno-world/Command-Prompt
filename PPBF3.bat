REM Codes from http://errorcode401.blogspot.in
REM ******************************************
@echo off
color B
mode con: cols=51 lines=18
IF NOT EXIST "C:\Users\BondJo\Documents\GitHub\Utilizing-CMD-For-a-User-Friendly-Interface\Utilizing-CMD-For-a-User-Friendly-Interface\info\uname.txt" goto SIGNUP
IF NOT EXIST "C:\Users\BondJo\Documents\GitHub\Utilizing-CMD-For-a-User-Friendly-Interface\Utilizing-CMD-For-a-User-Friendly-Interface\info\password.txt" goto SIGNUP
goto LOGIN

:SIGNUP
title SignUp
cls
echo -------------------------------------------------
echo                     SignUp
echo -------------------------------------------------
echo.
set/p "unamesu=Enter Username : "
set/p "passsu=Enter Password : "
echo.
echo.
IF ["%unamesu%"] == [""] goto SIGNUPERROR
IF ["%passsu%"] ==[""] goto SIGNUPERROR
goto CREATEACC

:SIGNUPERROR
echo -------------------------------------------------
echo                     Error
echo -------------------------------------------------
echo Invalid Username or password
pause
goto SIGNUP

:CREATEACC
echo %unamesu% >> C:\Users\BondJo\Documents\GitHub\Utilizing-CMD-For-a-User-Friendly-Interface\Utilizing-CMD-For-a-User-Friendly-Interface\info\uname.txt
echo %passsu% >> C:\Users\BondJo\Documents\GitHub\Utilizing-CMD-For-a-User-Friendly-Interface\Utilizing-CMD-For-a-User-Friendly-Interface\info\password.txt
attrib "C:\Users\BondJo\Documents\GitHub\Utilizing-CMD-For-a-User-Friendly-Interface\Utilizing-CMD-For-a-User-Friendly-Interface\info\uname.txt" +s +h
attrib "C:\Users\BondJo\Documents\GitHub\Utilizing-CMD-For-a-User-Friendly-Interface\Utilizing-CMD-For-a-User-Friendly-Interface\info\password.txt" +s +h


:LOGIN
set/p uname= < C:\Users\BondJo\Documents\GitHub\Utilizing-CMD-For-a-User-Friendly-Interface\Utilizing-CMD-For-a-User-Friendly-Interface\info\uname.txt
set/p pass=< C:\Users\BondJo\Documents\GitHub\Utilizing-CMD-For-a-User-Friendly-Interface\Utilizing-CMD-For-a-User-Friendly-Interface\info\password.txt
title Login
cls
echo -------------------------------------------------
echo                       Login
echo -------------------------------------------------
echo.
echo.
set/p "unamel=_               Username : "
set/p "passwordl=_               Password : "
echo.
IF "%unamel%"=="" goto LOGINERROR
IF "%passwordl"=="" goto LOGINERROR
IF NOT %unamel%==%uname% goto LOGINERROR
IF NOT %passwordl%==%pass% goto LOGINERROR
goto LOADING

:LOGINERROR
echo -------------------------------------------------
echo                     Error
echo -------------------------------------------------
echo Invalid Username or password
pause
goto LOGIN


:LOADING
title Loading...
set load=%load%!!!!!!!
cls
echo -------------------------------------------------
echo                       Login
echo -------------------------------------------------
echo.
echo.
echo                 Username : %unamel%
echo                 Password : %passwordl%
echo.
echo.
echo          Logging in...
echo          ===================================
echo          %load%
echo          ===================================
echo.                              Please Wait...
echo.
ping localhost -n 2 >nul
set/a loadnum=%loadnum% +1
if %loadnum%==5 goto DONE
goto LOADING

:DONE
title Done
cls
echo -------------------------------------------------
echo                       Done
echo -------------------------------------------------
echo.
echo               #
echo             #
echo     #     #            Login Successfull
echo      #  #
echo       #
echo.
echo.
echo -------------------------------------------------
pause
goto BeginOfBat

:BeginOfBat
echo Welcome! YOu have Entered!
Pause

