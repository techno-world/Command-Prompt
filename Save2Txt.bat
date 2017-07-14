:Beginning
@echo off
Cls
title Save Text to a Text Document
echo This will create a new text file, and then allow you to add text to it. By default, text starts at line 1, and continues down.
echo This command should default to your user folder, and it will then save the text file to your desktop.
echo By default, the text file should be called Save2Txt Info. To add more info, run this command again and enter the info
echo For more information, please check our Readme.md file.
set /p t2a1=Line 1: 
set /p t2a2=Line 2: 
set /p t2a3=Line 3: 
echo %t2a1% >> %USERPROFILE%\Desktop\Save2Txt.txt
echo %t2a2% >> %USERPROFILE%\Desktop\Save2Txt.txt
echo %t2a3% >> %USERPROFILE%\Desktop\Save2Txt.txt
echo The command has completed. The following text has been added to the text file: %t2a1%, %t2a2%, and, %t2a3%
Pause
Goto Beginning