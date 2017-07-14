@ECHO OFF
CLS
:ORIGIN
ECHO 1. Text File With 1 Line
ECHO 2. Text File With 2 Lines
ECHO 3. Text File with 4 Lines
ECHO 4. Text File with 5 Lines
ECHO 5. Text File with 10 Lines
ECHO 6. Exit
ECHO.

CHOICE /C 123456 /M "Enter your choice: "

:: Note - list ERRORLEVELS in decreasing order
IF ERRORLEVEL 6 GOTO Exit
IF ERRORLEVEL 5 GOTO 10Line
IF ERRORLEVEL 4 GOTO 5Line
IF ERRORLEVEL 3 GOTO 4Line
IF ERRORLEVEL 2 GOTO 2Line
IF ERRORLEVEL 1 GOTO 1Line

:1Line
@echo off
Cls
title Save Text to a Text Document
echo This will create a new text file, and then allow you to add text to it. By default, text starts at 1st line in text file, and continues down.
echo This command should default to your user folder, and it will then save the text file to your desktop.
echo By default, the text file should be called Save2Txt Info. To add more info, run this command again and enter the info
echo For more information, please check our Readme.md file.
set /p t2a1=Text to Add: 
echo %t2a1% >> %USERPROFILE%\Desktop\Save2Txt.txt
echo The command has completed. The following text has been added to the text file: %t2a1%.
Pause
GOTO ORIGIN

:2Line
@echo off
Cls
title Save Text to a Text Document
echo This will create a new text file, and then allow you to add text to it. By default, text starts at 1st line in text file, and continues down.
echo This command should default to your user folder, and it will then save the text file to your desktop.
echo By default, the text file should be called Save2Txt Info. To add more info, run this command again and enter the info
echo For more information, please check our Readme.md file.
set /p t2a1=Line 1: 
set /p t2a2=Line 2: 
echo %t2a1% >> %USERPROFILE%\Desktop\Save2Txt.txt
echo %t2a2% >> %USERPROFILE%\Desktop\Save2Txt.txt
echo The command has completed. The following text has been added to the text file: %t2a1%, %t2a2%.
GOTO ORIGIN

:4Line
@echo off
Cls
title Save Text to a Text Document
echo This will create a new text file, and then allow you to add text to it. By default, text starts at 1st line in text file, and continues down.
echo This command should default to your user folder, and it will then save the text file to your desktop.
echo By default, the text file should be called Save2Txt Info. To add more info, run this command again and enter the info
echo For more information, please check our Readme.md file.
set /p t2a1=Line 1: 
set /p t2a2=Line 2: 
set /p t2a3=Line 3: 
set /p t2a4=Line 4: 
echo %t2a1% >> %USERPROFILE%\Desktop\Save2Txt.txt
echo %t2a2% >> %USERPROFILE%\Desktop\Save2Txt.txt
echo %t2a3% >> %USERPROFILE%\Desktop\Save2Txt.txt
echo %t2a4% >> %USERPROFILE%\Desktop\Save2Txt.txt
echo The command has completed. The following text has been added to the text file: %t2a1%, %t2a2%, %t2a3%, and %t2a4%
Pause
GOTO ORIGIN

:5Line
@echo off
Cls
title Save Text to a Text Document
echo This will create a new text file, and then allow you to add text to it. By default, text starts at 1st line in text file, and continues down.
echo This command should default to your user folder, and it will then save the text file to your desktop.
echo By default, the text file should be called Save2Txt Info. To add more info, run this command again and enter the info
echo For more information, please check our Readme.md file.
set /p t2a1=Line 1: 
set /p t2a2=Line 2: 
set /p t2a3=Line 3: 
set /p t2a4-Line 4: 
set /p t2a5=Line 5
echo %t2a1% >> %USERPROFILE%\Desktop\Save2Txt.txt
echo %t2a2% >> %USERPROFILE%\Desktop\Save2Txt.txt
echo %t2a3% >> %USERPROFILE%\Desktop\Save2Txt.txt
echo %t2a4% >> %USERPROFILE%\Desktop\Save2Txt.txt
echo %t2a5% >> %USERPROFILE%\Desktop\Save2Txt.txt
echo The command has completed. The following text has been added to the text file: %t2a1%, %t2a2%, %t2a3%, %t2a4%, and %t2a5%
Pause
GOTO ORIGIN

:10Line
@echo off
Cls
title Save Text to a Text Document
echo echo This will create a new text file, and then allow you to add text to it. By default, text starts at 1st line in text file, and continues down.
echo This command should default to your user folder, and it will then save the text file to your desktop.
echo By default, the text file should be called Save2Txt Info. To add more info, run this command again and enter the info
echo For more information, please check our Readme.md file.
set /p t2a1=Line 1: 
set /p t2a2=Line 2: 
set /p t2a3=Line 3: 
set /p t2a4=Line 4: 
set /p t2a5=Line 5: 
set /p t2a6=Line 6: 
set /p t2a7=Line 7: 
set /p t2a8=Line 8: 
set /p t2a9=Line 9: 
set /p t2a10=Line 10
echo %t2a1% >> %USERPROFILE%\Desktop\Save2Txt.txt
echo %t2a2% >> %USERPROFILE%\Desktop\Save2Txt.txt
echo %t2a3% >> %USERPROFILE%\Desktop\Save2Txt.txt
echo %t2a4% >> %USERPROFILE%\Desktop\Save2Txt.txt
echo %t2a5% >> %USERPROFILE%\Desktop\Save2Txt.txt
echo %t2a6% >> %USERPROFILE%\Desktop\Save2Txt.txt
echo %t2a7% >> %USERPROFILE%\Desktop\Save2Txt.txt
echo %t2a8% >> %USERPROFILE%\Desktop\Save2Txt.txt
echo %t2a9% >> %USERPROFILE%\Desktop\Save2Txt.txt
echo %t2a10% >> %USERPROFILE%\Desktop\Save2Txt.txt
echo The command has completed. The following text has been added to the text file: %t2a1%, %t2a2%, %t2a3%, %t2a4%, %t2a5%, %t2a6%, %t2a7%, %t2a8%, %t2a9%, and %t2a10%
Pause
GOTO ORIGIN

:Exit
@echo off
Cls
ECHO Exit the Program
Pause
Exit