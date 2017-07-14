@@ -0,0 +1,55 @@
@echo off
setlocal EnableDelayedExpansion

if "%~4" neq "" goto begin
echo Usage: %0 item=value IN materialName
echo/
echo For example:
echo    %0 illum=4 IN A_C2_CC__Default_A___GLT_
goto :EOF

:begin

set "var=%~1"
set "value=%~2"

rem Get the number of the line that contain the materialName (the first instance only)
for /F "delims=:" %%a in ('findstr /N /C:"%~4" input.txt') do set "lines=%%a" & goto continue
:continue

rem Open a code block to read from input.txt and write to output.txt
< input.txt (

   rem Read and write the first "lines" lines
   for /L %%i in (1,1,%lines%) do (
      set "line="
      set /P "line="
      echo(!line!
   )

   rem Search for the desired variable and change its value
   call :changeVar

   rem Copy the rest of lines
   findstr "^"

) > output.txt

rem Replace the original file by the new one
move /Y output.txt input.txt >NUL
goto :EOF


:changeVar
   set "line="
   set /P "line="
   for /F %%a in ("%line%") do (
      if "%%a" equ "%var%" (
         echo %%a %value%
         goto endChange
      )
   )
   echo(%line%
goto changeVar
:endChange
exit /B
\ No newline at end of file