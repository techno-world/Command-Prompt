:BGG
@ECHO OFF
CLS
title Save 2 Text
echo Welcome to Save2Txt Version 5.6.7.0141
echo Please follow the instructions below to add text to your text file.
echo --------
echo Please choose where to save the text file (example: C:\Users\your username here\Desktop\)
echo DO NOT INCLUDE THE FILE NAME! THAT COMES IN STEP 2
set /p sl=Save Location: 
echo --------
echo Now, please choose the file name.
echo PLEASE REMEMBER TO PUT .TXT AFTER THE FILE NAME OTHERWISE FILL WILL BE CORRUPT
set /p fn=File Name:
echo --------
echo Now for the final step. Please choose the text you would like to add. To add more lines to the text file, please see
echo the readme file for info on which one can add multiple lines of text to a text file.
set /p t2a=Text to Add: 
echo Are you Ready?
Pause
echo %t2a% >> %sl%\%fn%
Goto BGG
