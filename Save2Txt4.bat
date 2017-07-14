:ORIGIN
@echo off
Cls
title Save 1 Line of Text to a Text Document
echo This will create a new text file, and then allow you to add text to it. By default, text starts at 1st line in text file, and continues down.
echo PLEASE NOTE: Must put the FULL file save path, but exclude the file name, until the third step.
echo Do not put .txt after the file name, that command defaults.
echo For more information, please check our Readme.md file.
echo Let's Begin
echo Please Specify the Text you want to Add to the text file
set /p t2a1=Text to Add: 
echo Please type where you would like to save the text file, without the file Name
echo (example: C:\Users\Administrator\Desktop)
set /p wts=Save Location: 
echo Please type the name of the Text File
echo (example: Save2Txt)
set /p tfn=Name of Text File: 
echo %t2a1% >> %wts%\%tfn%.txt
echo The following text is being added to the text file: %t2a1%.
echo Completed
Pause
GOTO ORIGIN