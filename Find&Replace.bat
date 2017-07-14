@echo off &setlocal
set "myfile=%~1"
(for /f "delims=" %%i in ('findstr /n "C:\Users\joelt\Desktop\testdb.txt" "%myfile%"') do (
    set "line=%%i"
    for /f "delims=:" %%a in ("%%i") do set "row=%%a"
    setlocal enabledelayedexpansion
    set "line=!line:*:=!"
    if !row! gtr 2 echo(!line!
    endlocal
))>newfile
type newfile
Pause