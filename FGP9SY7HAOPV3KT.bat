::Code;
	@ECHO off

	:: NOTe from g3lrod;
		REM  /--------------------------------------------------------------------\
		REM  |                               NOTE:                                |
		REM  |                                                                    |
		REM  | When you run this code, it will create a folder called "info"      |
		REM  |containing important files FOR this program. Inside the folder will |
		REM  |be batch files, VBScripts, and test files. These files will NOT     |
		REM  |hurt your computer.                                                 |
		REM  |                                                                    |
		REM  |                                                                    |
		REM  |IF you edit the code FOR this, be prepared FOR it to possibly break!|
		REM  |                                                                    |
		REM  |                                                                    |
		REM  |This code was created by Prof. Pickle, with help from the internet. |
		REM  |IN no way DO I, g3lrod, take credit FOR this code.                  |
		REM  |More information concerning credit will be created when you run     |
		REM  |the menu.                                                           |
		REM  |                                                                    |
		REM  |Code was originally found at:  bit.ly/WRqund  [instructables]       |
		REM  |                                                                    |
		REM  |                                                                    |
		REM  |Please enjoy! This took him a lot of work!                          |
		REM  |                                                                    |
		REM  |                                                            -g3lrod |
		REM  |                                                                    |
		REM  \--------------------------------------------------------------------/
	;

	::NOTe from the author;
		REM NOTe from the author: The code found at "bit.ly/WRqund" is NOT the code presented to you today. It has
		REM been changed and modIFied many times before it has reached you. DO NOT be decieved.
	;

	::before-hand data;
		@SETLOCAL ENABLEEXTENSIONS ENABLEDELAYEDEXPANSION
		TITLE Mega Menu
		CD info
		SET log=2

		::Check FOR a user account;
			IF EXIST pass.bat GOTO pass
			GOTO NOTset1 & REM GOTO create user account
		;
	;

	::Check FOR user details;
		:pass
		CALL pass.bat
		CALL filep.bat
		CLS
		IF %pass% EQU NOTset GOTO NOTset1
		IF %name% EQU NOTset GOTO NOTset2
		COLOR 0f
		TITLE Password
		REM GOTO Login SEQUence
	;

	::Login sEQUence;

		::Initial selection;
			:nextpass
			ECHO Login options:
			ECHO.
			ECHO 1) Login
			ECHO 2) View hint
			ECHO 3) EXIT
			IF %tries% EQU 1 ECHO 4) Reset password
			CHOICE /c 1234 /n
			IF %ERRORLEVEL% EQU 1 GOTO passgue & REM GOTO guess sEQUence code
			IF %ERRORLEVEL% EQU 2 (
			START hint.txt
			CLS
			GOTO nextpass
			)
			IF %ERRORLEVEL% EQU 3 EXIT
			IF %ERRORLEVEL% EQU 4 GOTO reset & REM GOTO reset password
		;

		::Guess sEQUence code;
			:passgue
			CALL pass.bat

			SET num=0
			SET let1=na
			SET let2=na
			SET let3=na
			SET let4=na
			SET let5=na
			SET let6=na
			SET let7=na
			SET let8=na
			SET let9=na
			SET let10=na
			SET input=0
			SET tries=%tries%

			SET code2=%pass%q234567890

			SET char1=!code2:~0,1!
			SET char2=!code2:~1,1!
			SET char3=!code2:~2,1!
			SET char4=!code2:~3,1!
			SET char5=!code2:~4,1!
			SET char6=!code2:~5,1!
			SET char7=!code2:~6,1!
			SET char8=!code2:~7,1!
			SET char9=!code2:~8,1!
			SET char10=!code2:~9,1!
			SET char11=!code2:~10,1!


			IF %char2% EQU q SET num=1

			IF %char3% EQU q SET num=2

			IF %char4% EQU q SET num=3

			IF %char5% EQU q SET num=4

			IF %char6% EQU q SET num=5

			IF %char7% EQU q SET num=6

			IF %char8% EQU q SET num=7

			IF %char9% EQU q SET num=8

			IF %char10% EQU q SET num=9

			IF %char11% EQU q SET num=10

			SET count=%num%
			SET round=-1
			SET /a num=%num%+1
			GOTO login

			:erase
			SET round=-1
			SET let1=na
			SET let2=na
			SET let3=na
			SET let4=na
			SET let5=na
			SET let6=na
			SET let7=na
			SET let8=na
			SET let9=na
			SET let10=na
			SET input=0
			SET /a num=%count%+1

			:login
			SET /a num=%num%-1
			SET /a round=%round%+1
			IF %round% EQU 1 SET input=*
			IF %round% EQU 2 SET input=**
			IF %round% EQU 3 SET input=***
			IF %round% EQU 4 SET input=****
			IF %round% EQU 5 SET input=*****
			IF %round% EQU 6 SET input=******
			IF %round% EQU 7 SET input=*******
			IF %round% EQU 8 SET input=********
			IF %round% EQU 9 SET input=*********
			IF %round% EQU %count% GOTO compile
			CLS
			ECHO %tries% tries REMaining
			ECHO.
			ECHO Please Enter your password.
			IF %input% NEQ 0 ECHO %input%
			CHOICE /c abcdefghijklmnopqrstuvwxyz1234567890 /n
			CLS
			IF %ERRORLEVEL% EQU 1 SET let%num%=a
			IF %ERRORLEVEL% EQU 2 SET let%num%=b
			IF %ERRORLEVEL% EQU 3 SET let%num%=c
			IF %ERRORLEVEL% EQU 4 SET let%num%=d
			IF %ERRORLEVEL% EQU 5 SET let%num%=e
			IF %ERRORLEVEL% EQU 6 SET let%num%=f
			IF %ERRORLEVEL% EQU 7 SET let%num%=g
			IF %ERRORLEVEL% EQU 8 SET let%num%=h
			IF %ERRORLEVEL% EQU 9 SET let%num%=i
			IF %ERRORLEVEL% EQU 10 SET let%num%=j
			IF %ERRORLEVEL% EQU 11 SET let%num%=k
			IF %ERRORLEVEL% EQU 12 SET let%num%=l
			IF %ERRORLEVEL% EQU 13 SET let%num%=m
			IF %ERRORLEVEL% EQU 14 SET let%num%=n
			IF %ERRORLEVEL% EQU 15 SET let%num%=o
			IF %ERRORLEVEL% EQU 16 SET let%num%=p
			IF %ERRORLEVEL% EQU 17 SET let%num%=q
			IF %ERRORLEVEL% EQU 18 SET let%num%=r
			IF %ERRORLEVEL% EQU 19 SET let%num%=s
			IF %ERRORLEVEL% EQU 20 SET let%num%=t
			IF %ERRORLEVEL% EQU 21 SET let%num%=u
			IF %ERRORLEVEL% EQU 22 SET let%num%=v
			IF %ERRORLEVEL% EQU 23 SET let%num%=w
			IF %ERRORLEVEL% EQU 24 SET let%num%=x
			IF %ERRORLEVEL% EQU 25 SET let%num%=y
			IF %ERRORLEVEL% EQU 26 SET let%num%=z
			IF %ERRORLEVEL% EQU 27 SET let%num%=1
			IF %ERRORLEVEL% EQU 28 SET let%num%=2
			IF %ERRORLEVEL% EQU 29 SET let%num%=3
			IF %ERRORLEVEL% EQU 30 SET let%num%=4
			IF %ERRORLEVEL% EQU 31 SET let%num%=5
			IF %ERRORLEVEL% EQU 32 SET let%num%=6
			IF %ERRORLEVEL% EQU 33 SET let%num%=7
			IF %ERRORLEVEL% EQU 36 SET let%num%=8
			IF %ERRORLEVEL% EQU 35 SET let%num%=9
			IF %ERRORLEVEL% EQU 36 SET let%num%=0
			GOTO login

			:compile
			IF %let1% EQU na GOTO 9p
			IF %let2% EQU na GOTO 1p
			IF %let3% EQU na GOTO 2p
			IF %let4% EQU na GOTO 3p
			IF %let5% EQU na GOTO 4p
			IF %let6% EQU na GOTO 5p
			IF %let7% EQU na GOTO 6p
			IF %let8% EQU na GOTO 7p
			IF %let9% EQU na GOTO 8p
			GOTO 10p

			:10p
			SET password=%let10%%let9%%let8%%let7%%let6%%let5%%let4%%let3%%let2%%let1%
			GOTO check

			:9p
			SET password=%let9%%let8%%let7%%let6%%let5%%let4%%let3%%let2%%let1%
			GOTO checkp

			:8p
			SET password=%let8%%let7%%let6%%let5%%let4%%let3%%let2%%let1%
			GOTO checkp

			:7p
			SET password=%let7%%let6%%let5%%let4%%let3%%let2%%let1%
			GOTO checkp

			:6p
			SET password=%let6%%let5%%let4%%let3%%let2%%let1%
			GOTO checkp

			:5p
			SET password=%let5%%let4%%let3%%let2%%let1%
			GOTO checkp

			:4p
			SET password=%let4%%let3%%let2%%let1%
			GOTO checkp

			:3p
			SET password=%let3%%let2%%let1%
			GOTO checkp

			:2p
			SET password=%let2%%let1%
			GOTO checkp

			:1p
			SET password=%let1%
			GOTO checkp

			:checkp
			IF %password% NEQ %pass% GOTO penalty
			IF %password% EQU %pass% GOTO Welcome
		;

		::Reset data;
			:reset
			CD info
			CLS
			ECHO You have chosen to reset, this will delete the info folder and
			ECHO re-create it with it's default settings, thus resetting the password.
			ECHO.
			ECHO Are you sure you want to continue?(y/n)
			CHOICE /c yn /n
			IF %ERRORLEVEL% EQU 2 GOTO nextpass & REM Return to login sEQUence
			CLS
			ECHO You have selected yes.
			SET direc=%CD%
			SET direc=!direc:~0,-5!
			CD %direc%
			RD /S /Q info
			PAUSE
			GOTO NOTset1 & REM GOTO create user account
		;

		::Penalty sEQUence;
			:Penalty
			CLS
			ECHO WRONG PASSWORD!
			SET /a tries=%tries%-1
			IF %tries% EQU 0 GOTO DIE
			ECHO.
			ECHO.
			GOTO nextpass & REM Continue with login sEQUence (START from top)
		;
	;

	::Main menu code;

		::Welcoming sEQUence
			:Welcome
			CALL pass.bat
			IF %log% EQU 1 START greetings1.vbs
			IF %log% EQU 2 START greetings2.vbs
			SET timenum=0
			TITLE Menu (V 2.5)
			COLOR 02
			CLS
			ECHO Welcome %name%
			ECHO.
			ECHO To go to menu, press any key
			PAUSE > NUL
			REM GOTO main menu display
		;

		::Main menu display;
			:Menu
			CLS
			COLOR 0e
			ECHO -----------------
			ECHO Menu:             %DATE%
			ECHO -----------------
			ECHO.
			ECHO.
			ECHO Would you like to:
			ECHO.
			ECHO 1. SHUTDOWN
			ECHO 2. Website Starter (can also test internet connection) (FIXED!)
			ECHO 3. SET a countdown
			ECHO 4. START Calculator
			ECHO 5. Settings
			ECHO 6. Games
			ECHO 7. Communication
			ECHO 8. Tasks
			ECHO 9. Information (IMPROVED!)
			ECHO 10. Browse your folders
			ECHO 11. Text to speech tool
			ECHO 12. 8-ball (IMPROVED CODE!)
			ECHO 13. Address Book (NEW!)
			ECHO 14. Stop Watch (NEW!)
			ECHO 15. Encryption function (NEW!)
			ECHO 16. Document Creator (NEW!)
			ECHO 16. EXIT
			ECHO.
			ECHO.
			ECHO State the number of your CHOICE
			ECHO.
			SET /p CHOICE=
			IF %CHOICE% EQU 1 GOTO shutdownm & REM GOTO SHUTDOWN menu
			IF %CHOICE% EQU 2 GOTO internetm & REM GOTO internet menu
			IF %CHOICE% EQU 3 GOTO timer & REM GOTO timer menu
			IF %CHOICE% EQU 4 GOTO calcm & REM GOTO calculator menu
			IF %CHOICE% EQU 5 GOTO settingsm & REM GOTO settings changer code
			IF %CHOICE% EQU 6 GOTO games & REM GOTO games menu
			IF %CHOICE% EQU 7 GOTO comm & REM GOTO communication menu
			IF %CHOICE% EQU 8 GOTO tasks & REM GOTO task menu
			IF %CHOICE% EQU 9 GOTO info & REM GOTO infomation menu
			IF %CHOICE% EQU 10 GOTO useracc & REM GOTO directory browser menu
			IF %CHOICE% EQU 11 GOTO sapim & REM GOTO text-to-speech menu
			IF %CHOICE% EQU 12 GOTO 8ball & REM GOTO eight-ball menu
			IF %CHOICE% EQU 13 GOTO address & REM GOTO address book menu
			IF %CHOICE% EQU 14 GOTO watch & REM GOTO stop watch menu
			IF %CHOICE% EQU 15 GOTO encrypt REM GOTO encryption code
			IF %CHOICE% EQU 16 GOTO docwww & REM GOTO document creator code
			IF %CHOICE% EQU 17 GOTO EXIT & REM GOTO EXIT
			GOTO bug & REM Redirect to bug page
		;

		::SHUTDOWN menu;
			:shutdownm
			CLS
			ECHO ---------------------------
			ECHO SHUTDOWN Procedures Menu
			ECHO.
			ECHO Press E to EXIT to menu
			ECHO ----------------------------
			ECHO.
			ECHO.
			ECHO What would you like to DO?
			ECHO.
			ECHO 1. SHUTDOWN
			ECHO 2. Logoff
			ECHO 3. Sleep
			ECHO 4. ReSTART
			ECHO 5. Rest (START screensaver)
			ECHO.
			ECHO State the number of your CHOICE
			ECHO.
			CHOICE /c 12345e /n
			IF %ERRORLEVEL% EQU 1 GOTO SHUTDOWN & REM GOTO SHUTDOWN code
			IF %ERRORLEVEL% EQU 2 GOTO Logoff & REM GOTO logoff code
			IF %ERRORLEVEL% EQU 3 GOTO Sleep & REM GOTO sleep code
			IF %ERRORLEVEL% EQU 4 GOTO ReSTART & REM GOTO reSTART code
			IF %ERRORLEVEL% EQU 5 GOTO Rest & REM GOTO rest code
			IF %ERRORLEVEL% EQU 6 GOTO Menu & REM GOTO main menu display

			::SHUTDOWN code;
				:SHUTDOWN
				CLS
				ECHO You have chosen SHUTDOWN
				ECHO.
				ECHO IF this is NOT your CHOICE press E
				SET /p shutdowne=
				IF %shutdowne% EQU E GOTO shutdownm & REM GOTO SHUTDOWN menu
				IF %shutdowne% EQU e GOTO shutdownm & REM ''''''''''''''''''
				CLS
				ECHO How long before SHUTDOWN?
				ECHO.
				SET /p shuttime=
				CLS
				ECHO Press any key to START countdown Procedure.
				PAUSE > NUL
				TIMEOUT %shuttime%
				SHUTDOWN -s
				EXIT
			;

			::Logoff code;
				:Logoff
				CLS
				ECHO You have chosen Logoff
				ECHO.
				ECHO IF this is NOT your CHOICE press E
				SET /p logoffe=
				IF %logoffe% EQU E GOTO shutdownm & REM GOTO SHUTDOWN menu
				IF %logoffe% EQU e GOTO shutdownm & REM ''''''''''''''''''
				CLS
				ECHO How long before Logoff?
				ECHO.
				SET /p Logtime=
				CLS
				TIMEOUT %logtime%
				SHUTDOWN -l
				EXIT
			;

			::Sleep code;
				:Sleep
				CLS
				ECHO You have chosen Sleep
				ECHO.
				ECHO IF this is NOT your CHOICE press E
				SET /p sleepe=
				IF %sleepe% EQU E GOTO shutdownm & REM GOTO SHUTDOWN menu
				IF %sleepe% EQU e GOTO shutdownm & REM ''''''''''''''''''
				CLS
				ECHO How long before Sleep?
				ECHO.
				SET /p sleeptime=
				CLS
				TIMEOUT %sleeptime%
				SHUTDOWN -h
				EXIT
			;

			::ReSTART code;
				:ReSTART
				ECHO You have chosen ReSTART
				ECHO.
				ECHO IF this is NOT your CHOICE press E
				SET /p reSTARTe=
				IF %reSTARTe% EQU E GOTO shutdownm & REM GOTO SHUTDOWN menu
				IF %reSTARTe% EQU e GOTO shutdownm & REM ''''''''''''''''''
				CLS
				ECHO How long before ReSTART?
				ECHO.
				SET /p resttime=
				TIMEOUT %resttime%
				SHUTDOWN -r
				EXIT
			;

			::Rest code;
				:Rest
				CLS
				START C:\Windows\System32\aurora.scr /MAX
				IF %ERRORLEVEL% NEQ 0 GOTO ERROR & REM Redirect to error page
				GOTO Menu & REM GOTO main menu display
			;
		;

		::Internet code;

			::Internet menu;
				:internetm
				CLS
				ECHO Press E to EXIT to menu
				ECHO.
				ECHO 1) START a website
				ECHO 2) Test internet connection
				ECHO.
				CHOICE /c 12e /n
				IF %ERRORLEVEL% EQU 3 GOTO Menu & REM GOTO main menu display
				IF %ERRORLEVEL% EQU 1 GOTO web & REM GOTO website selector
				IF %ERRORLEVEL% EQU 2 GOTO connect & REM GOTO internet conection tester
			;

			::Website selector menu;
				:web
				ECHO.
				ECHO 1= Google
				ECHO 2= Wikipedia
				ECHO 3= Youtube
				ECHO 4= Reddit
				ECHO 5= Facebook
				ECHO 6= 000webhost
				ECHO 7= Other
				ECHO.
				ECHO E= Menu
				ECHO.
				CHOICE /c 1234567e /n
				IF %ERRORLEVEL%==1 GOTO web1 & REM GOTO website STARTer 1
				IF %ERRORLEVEL%==2 GOTO web2 & REM GOTO website STARTer 2
				IF %ERRORLEVEL%==3 GOTO web3 & REM GOTO website STARTer 3
				IF %ERRORLEVEL%==4 GOTO web4 & REM GOTO website STARTer 4
				IF %ERRORLEVEL%==5 GOTO web5 & REM GOTO website STARTer 5
				IF %ERRORLEVEL%==6 GOTO web6 & REM GOTO website STARTer 6
				IF %ERRORLEVEL%==7 GOTO otherweb & REM GOTO user DEFINED website
				IF %ERRORLEVEL%==e GOTO menu & REM GOTO main menu display

				::Websites;

					::Website STARTer 1;
						:web1
						START www.google.com
						IF %ERRORLEVEL% NEQ 0 GOTO error & REM Redirect to error page
						GOTO Menu & REM GOTO main menu display
					;

					::Website STARTer 2;
						:web2
						START www.wikipedia.com
						IF %ERRORLEVEL% NEQ 0 GOTO error & REM Redirect to error page
						GOTO Menu REM GOTO main menu display
					;

					::Website STARTer 3;
						:web3
						START www.youtube.com
						IF %ERRORLEVEL% NEQ 0 GOTO error & REM Redirect to error page
						GOTO Menu REM GOTO main menu display
					;

					::Website STARTer 4;
						:web4
						START www.reddit.com
						IF %ERRORLEVEL% NEQ 0 GOTO error & REM Redirect to error page
						GOTO Menu REM GOTO main menu display
					;

					::Website STARTer 5;
						:web5
						START www.facebook.com
						IF %ERRORLEVEL% NEQ 0 GOTO error & REM Redirect to error page
						GOTO Menu REM GOTO main menu display
					;

					::Website STARTer 6;
						:web6
						START www.000webhost.com
						IF %ERRORLEVEL% NEQ 0 GOTO error & REM Redirect to error page
						GOTO Menu REM GOTO main menu display
					;

					::User DEFINED website;
						:otherweb
						CLS
						ECHO You have chosen other...
						ECHO.
						ECHO Please specIFy web address
						ECHO.
						SET /p webother=
						START %webother%
						IF %ERRORLEVEL% NEQ 0 GOTO ERROR & REM Redirect to error page
						GOTO Menu & REM GOTO main menu display
					;
				;

				::Internet connection tester;
					:connect
					CLS
					PING -n 10 www.google.com
					ECHO.
					ECHO.
					ECHO Press any key to go back to the website STARTer
					PAUSE > NUL
					GOTO internetm & REM GOTO internet menu
				;
			;
		;

		::Timer menu;
			:timer
			CLS
			ECHO ------------------------------------------------
			ECHO Timer
			ECHO.
			ECHO Press E to EXIT or any other key to continue
			ECHO ------------------------------------------------
			ECHO.
			SET /p timerm=
			IF %timerm% EQU E GOTO Menu & REM GOTO main menu display
			IF %timerm% EQU e GOTO Munu & REM ''''''''''''''''''''''
			REM GOTO countdown

			::Countdown;
				CLS
				ECHO WARNING: The sound emmitted from the timer is extREMely high pitched
				ECHO DO NOT put the sound up higher then 40
				ECHO.
				ECHO Countdown from...
				SET /p timertime=
				TIMEOUT %timertime%
				@
				CLS
				ECHO ReSTART? (y/n)
				CHOICE /c yn /n
				IF %ERRORLEVEL% EQU 1 GOTO timer & REM GOTO timer menu
				IF %ERRORLEVEL% EQU 2 GOTO Menu & REM GOTO main menu display
			;
		;

		::Calculator menu;
			:calcm
			CLS
			ECHO -------------------------
			ECHO Calculator
			ECHO.
			ECHO To EXIT to menu press E
			ECHO -------------------------
			ECHO.
			ECHO.
			ECHO Press any key followed by enter to continue
			SET /p calce=
			IF %calce% EQU E GOTO Menu & REM GOTO main menu display
			IF %calce% EQU e GOTO Menu & REM ''''''''''''''''''''''
			CLS
			REM GOTO Calculator

			::Calculator;
				:calc
				ECHO -----------------------------
				ECHO Type your sum to begin
				ECHO.
				ECHO Or press E to EXIT to menu
				ECHO -----------------------------
				ECHO.
				SET /p calcsum=
				IF %calcsum% EQU E GOTO Menu & REM GOTO main menu display
				IF %calcsum% EQU e GOTO Menu & REM ''''''''''''''''''''''
				IF %ERRORLEVEL% NEQ 0 GOTO ERROR & REM Redirect to error page
				SET /a calcans=%calcsum%
				ECHO.
				ECHO = %calcans%
				ECHO -----------------------------
				PAUSE > NUL
				CLS
				ECHO Previous Answer: %calcans%
				ECHO.
				GOTO calc & REM GOTO calculator
			;
		;


		::Settings changer code;

			::Settings menu display;
				:settingsm
				COLOR 03
				CLS
				ECHO -----------------------
				ECHO Settings Menu
				ECHO.
				ECHO Press E to EXIT
				ECHO.
				ECHO.
				ECHO What would you like to DO?
				ECHO 1. Add admin
				ECHO 2. Delete admin
				ECHO 3. Change a users password
				ECHO 4. Change the menu's password
				ECHO 5. Change the SET name
				ECHO 6. Change the amount of tries you get
				ECHO 7. Change the DATE
				ECHO 8. Change the TIME
				ECHO 9. Change the password hint
				ECHO 10. Change your folder path
				ECHO.
				SET /p settingsm=
				IF %settingsm% EQU E GOTO Menu & REM GOTO main menu display
				IF %settingsm% EQU e GOTO Menu & REM ''''''''''''''''''''''
				IF %settingsm% EQU 1 GOTO addadmin & REM GOTO add admin
				IF %settingsm% EQU 2 GOTO deladmin & REM GOTO delete admin
				IF %settingsm% EQU 3 GOTO passchange & REM GOTO user password changer
				IF %settingsm% EQU 4 GOTO passchange2 & REM GOTO menu password changer
				IF %settingsm% EQU 5 GOTO namechange & REM GOTO name changer
				IF %settingsm% EQU 6 GOTO try & REM GOTO try changer
				IF %settingsm% EQU 7 GOTO datechange & REM GOTO DATE changer
				IF %settingsm% EQU 8 GOTO timechange & REM GOTO TIME changer
				IF %settingsm% EQU 9 GOTO hintchange & REM GOTO hint changer
				IF %settingsm% EQU 10 GOTO filepch & REM GOTO file path changer
				GOTO bug & REM Redirect to bug page
			;

			::Password changer menu;
				:passchange2
				CALL pass.bat
				CLS
				ECHO You have chosen Change the menu's password...
				ECHO.
				ECHO Press E to go back
				ECHO.
				ECHO.
				ECHO Please enter the current password to continue
				ECHO.
				SET /p password=
				IF %password% EQU E GOTO Menu & REM GOTO main menu display
				IF %password% EQU e GOTO Menu & REM ''''''''''''''''''''''
				IF %password% NEQ %pass% GOTO incorrect & REM GOTO incorrect password
				REM GOTO password changer (menu)

				::password changer (menu);
					:passconfig
					CD info
					CALL pass.bat
					CLS
					ECHO Enter the new password (must be under 10 characters and can only contain characters a-z and 0-9. password is non case sensitive)
					ECHO.
					SET /p newpass1=
					IF %newpass1% EQU E GOTO invalid & REM Redirect to invalid password
					IF %newpass1% EQU e GOTO invalid & REM ''''''''''''''''''''''''''''
					IF %newpass1% EQU hint GOTO invalid & REM '''''''''''''''''''''''''
					IF %newpass1% EQU reset GOTO invalid & REM ''''''''''''''''''''''''
					CLS
					ECHO Please confirm your password.
					SET /p newpass2=
					IF %newpass1% NEQ %newpass2% GOTO nomatch2 & REM Redirect to un-matching passwords
					ECHO :: >> "pass.bat"
					ECHO SET pass=%newpass1%>> "pass.bat"
					CLS
					ECHO Your new password is %newpass1%
					ECHO.
					ECHO You might also want to change your hint as well.
					PAUSE
					GOTO Menu & REM GOTO main menu display

					::Un-matching passwords;
						:nomatch2
						CLS
						ECHO The two passwords you entered did NOT match.
						ECHO.
						PAUSE
						GOTO passconfig
					;

					::Invalid password;
						:invalid
						CLS
						ECHO I am sorry but you canNOT change your new password to E, e, hint or reset.
						ECHO.
						ECHO Press any key to return.
						PAUSE > NUL
						GOTO %settingsm% & REM GOTO settings menu display
					;
				;

				::Incorrect password;
					:incorrect
					CLS
					ECHO The pass word you entered was incorrect
					PAUSE
					GOTO settingsm & REM GOTO settings menu display
				;
			;

			::Name changer;
				:namechange
				CD info
				CALL pass.bat
				CLS
				ECHO You have chosen name changer
				ECHO.
				ECHO Press E to EXIT
				ECHO.
				ECHO You must enter your password to continue
				ECHO.
				SET /p password=
				IF %password% NEQ %pass% GOTO incorrect & REM Redirect to Incorrect
				REM GOTO name change

				::Name change;
					:nameconfig
					CALL pass.bat
					CLS
					ECHO Please type your preferred name
					ECHO.
					SET /p newname
					ECHO :: >> "pass.bat"
					ECHO SET name=%newname% >> "pass.bat"
					CLS
					ECHO Your new name is %newname%
					ECHO.
					PAUSE > NUL
					GOTO Menu & REM GOTO main menu display
				;
			;

			::Try changer;
				:try
				CLS
				ECHO You have chosen try changer
				ECHO.
				ECHO Press E to EXIT
				ECHO.
				ECHO Type your current password to continue
				ECHO.
				SET /p password=
				IF %password% NEQ %pass% GOTO incorrect & REM Redirect to incorrect password
				CLS
				CALL pass.bat
				CLS
				ECHO Type the ammount of tries you wish the user to have
				ECHO.
				SET /p try=
				ECHO :: >> "pass.bat"
				ECHO SET tries=%try% >> "pass.bat"
				CLS
				CALL pass.bat
				ECHO The new amount of tries is %tries%
				ECHO.
				ECHO Press any key to go back to the menu
				PAUSE > NUL
				GOTO Menu & REM GOTO main menu display
			;

			::DATE changer;
				:datechange
				CALL pass.bat
				CLS
				ECHO You have chosen to change the DATE.
				ECHO.
				ECHO Press E to EXIT
				ECHO.
				ECHO Type IN your password to continue
				ECHO.
				SET /p datepass=
				IF %datepass% EQU E GOTO Menu & REM GOTO main menu display
				IF %datepass% EQU e GOTO Menu & REM ''''''''''''''''''''''
				IF %datepass% NEQ %pass% GOTO incorrect & REM Redirect to incorrect password
				CLS
				DATE
				CLS
				ECHO The new DATE is %DATE%
				ECHO.
				ECHO Press any key to go back to the menu
				PAUSE > NUL
				GOTO Menu & REM GOTO main menu display
			;

			::TIME changer;
				:timechange
				CALL pass.bat
				CLS
				ECHO You have chosen to change the TIME
				ECHO.
				ECHO Press E to EXIT
				ECHO.
				ECHO Type IN your current password to continue
				SET /p timepass=
				IF %timepass% EQU E GOTO Menu & REM GOTO main menu display
				IF %timepass% EQU e GOTO Menu & REM ''''''''''''''''''''''
				IF %timepass% NEQ %pass% GOTO incorrect & REM Redirect to incorrect
				CLS
				TIME
				ECHO.
				CLS
				ECHO Your new TIME is %TIME%
				ECHO.
				ECHO Press any key to go back to the menu
				PAUSE > NUL
				GOTO Menu & REM GOTO main menu display
			;

			::Hint changer
				:hintchange
				CLS
				ECHO You have chosen to change your password hint.
				ECHO.
				ECHO Press E to EXIT or insert your password to continue.
				ECHO.
				CALL pass.bat
				ECHO.
				SET /p password=
				IF %password% EQU E GOTO Menu & REM GOTO main menu display
				IF %password% EQU e GOTO Menu & REM ''''''''''''''''''''''
				IF %password% NEQ %pass% GOTO incorrect & REM Redirect to incorrect password
				CLS
				ECHO What DO you want the new hint to be?
				ECHO Warning: Your hint must NOT contain any spaces, use "_" (underscore) instead!
				SET /p newhint=
				IF EXIST hint.txt DEL hint.txt
				ECHO :: > "hint.txt"
				ECHO ECHO Hint: %newhint% >> "hint.txt"
				ECHO.
				ECHO Your hint has been changed
				PAUSE
				GOTO Menu & REM GOTO main menu display
		    ;

			::Add admin code;

				::Add admin menu;
					:addadmin
					CLS
					ECHO You have chosen ADD admin
					ECHO.
					ECHO Press E to go back
					ECHO.
					ECHO.
					ECHO Would you like a list of users? (y/n)
					CHOICE /c yne
					IF %ERRORLEVEL% EQU 3 GOTO settingsm & REM GOTO settings menu display
					IF %ERRORLEVEL% EQU 1 NET LOCALGROUP USERS (
					GOTO addadmin2 & REM GOTO add admin
					)
					IF %ERRORLEVEL% EQU 2 GOTO addadmin2 & REM ''''''''''''''
				;

				::Add administrator account;
					:addadmin2
				    IF %ulist% EQU Y ECHO.
					IF %ulist% EQU Y ECHO.
					IF %ulist% EQU y ECHO.
					IF %ulist% EQU y ECHO.
					IF %ulist% EQU N CLS
					IF %ulist% EQU n CLS
					ECHO Who would you like to make an admin? (username)
					ECHO.
					SET /p adduser=
					CLS
					NET LOCALGROUP ADMINISTRATORS %adduser% /add
					IF %ERRORLEVEL% NEQ 0 GOTO ERROR & REM Redirect to error page
					ECHO %adduser% is now an admin
					PAUSE > NUL
					GOTO Menu & REM GOTO main menu display
				;
			;

			::Delete admin code;

				::Delete admin menu display;
					:deladmin
					SET listyn=0
					CLS
					ECHO You have chosen DELETE admin
					ECHO.
					ECHO Press E to go back
					ECHO.
					ECHO.
					ECHO Would you like a list of admin? (y/n)
					ECHO.
					CHOICE /c yne /n
					IF %ERRORLEVEL% EQU 3 SET listyn=1
					IF %ERRORLEVEL% EQU 3 GOTO settingsm & REM GOTO settings menu display
					IF %ERRORLEVEL% EQU 1 NET LOCALGROUP ADMINISTRATORS (
					GOTO deladmin2 & REM GOTO delete administrator account
					)
					IF %alist% EQU 2 SET listyn=1 & GOTO deladmin2 & REM ''''''''''''''''''''''''''''''
				;

				::Delete administrator account;
					:deladmin2
					ECHO.
					ECHO.
					ECHO.
					ECHO.
					IF %listyn% EQU 1 CLS
					ECHO Who would you like to delete?
					ECHO.
					SET /p deleteadmin
					NET LOCALGROUP ADMINISTRATORS %deleteadmin% /delete
					IF %ERRORLEVEL% NEQ 0 GOTO ERROR & REM Redirect to error page
					CLS
					ECHO %deleteadmin%'s account has been changed to rugular
					PAUSE > NUL
					GOTO Menu & REM GOTO main menu display
				;
			;

			::Password changer (computer);
				:passchange
				CLS
				ECHO You have selected Password Changer
				ECHO.
				ECHO Press enter to START or E to go back
				ECHO.
				SET /p passchangere=
				IF %passchangere% EQU E GOTO settingsm & REM GOTO settings menu display
				IF %passchangere% EQU e GOTO settingsm & REM ''''''''''''''''''''''''''
				CLS
				CONTROL USERPASSWORDS2
				ECHO Press any key to go to the menu
				PAUSE > NUL
				GOTO Menu & REM GOTO main menu display
			;
		;

		::Games code;

			::Games menu;
				:games
				CLS
				ECHO ------------------------------
				ECHO Games
				ECHO.
				ECHO Press E to EXIT
				ECHO ------------------------------
				ECHO.
				ECHO Would you like to play:
				ECHO 1. Guess the number
				ECHO 2. Tic-Tac-Toe (Single player only)
				ECHO 3. Monopoly
				ECHO 4. Simon Says (NEW!)
				ECHO 5. Race Cars (NEW!)
				ECHO 6. Slot Machine (NEW!)
				ECHO.
				CHOICE /c 123456e /n
				IF %ERRORLEVEL% EQU 7 GOTO Menu & REM GOTO main menu display
				IF %ERRORLEVEL% EQU 1 GOTO game1 & REM GOTO game 1 code
				IF %ERRORLEVEL% EQU 2 GOTO game2 & REM GOTO game 2 code
				IF %ERRORLEVEL% EQU 3 GOTO game3 & REM GOTO game 3 code
				IF %ERRORLEVEL% EQU 4 GOTO game4 & REM GOTO game 4 code
				IF %ERRORLEVEL% EQU 5 GOTO game5 & REM GOTO game 5 code
				IF %ERRORLEVEL% EQU 6 GOTO game6 & REM GOTO game 6 code
			;

			::Game 1 code;
				:game1
				CLS
				ECHO What dIFficulty would you like?
				ECHO.
				ECHO 1. Easy (numbers 0-10)
				ECHO 2. Medium (numbers 0-100)
				ECHO 3. Hard (numbers 0-1000)
				SET /p dIFf1=

				:game1set
				IF %dIFf1% EQU 1 GOTO easydIF1
				IF %dIFf1% EQU 2 GOTO easydIF2
				IF %dIFf1% EQU 3 GOTO easydIF3
				GOTO bug

				:easydIF1
				SET /a numb3r=%random% %% 10 + 1
				CLS
				GOTO game1play

				:easydIF2
				SET /a numb3r=%random% %% 100 + 1
				CLS
				GOTO game1play

				:easydIF3
				SET /a numb3r=%random% %% 1000 + 1
				CLS
				GOTO game1play

				:game1play
				SET /a guessnum2=%guessnum2%+1
				ECHO Your guess?
				SET /p guessnum=
				IF %guessnum% GTR %numb3r% ECHO LOWER
				IF %guessnum% LSS %numb3r% ECHO HIGHER
				IF %guessnum% EQU %numb3r% GOTO win1
				GOTO game1play

				:win1
				CLS
				ECHO Correct!
				ECHO.
				ECHO It took you %guessnum2% guesses
				ECHO.
				ECHO Would you like to play again? (y/n)
				SET /p playagain=
				IF %playagain% EQU y GOTO game1play
				IF %playagain% EQU Y GOTO game1play
				CLS
				IF %playagain% EQU n GOTO Menu
				IF %playagain% EQU N GOTO Menu
				GOTO bug
			;

			::Game 2 code;
				:game2
				COLOR 02
				SET g2sl=
				CLS
				ECHO                       Tic Tac Toe                            (Q to quit)
				ECHO.
				ECHO.
				ECHO        Pick your skill level (type a number)
				ECHO.
				ECHO               (1) Easy
				ECHO               (2) Medium
				ECHO               (3) Hard
				SET /p g2sl=
				SET g2=%g2sl%
				IF %g2% EQU Q GOTO menu
				IF %g2% EQU q SET menu
				IF %g2% EQU 1 SET g2sl=1
				IF %g2% EQU 2 SET g2sl=2
				IF %g2% EQU 3 SET g2sl=3
				GOTO LAYOUT

				:LAYOUT
				 SET pt=
				 SET gw=
				SET nm=
				SET t1=
				 SET t2=
				SET t3=
				 SET t4=
				 SET t5=
				 SET t6=
				 SET t7=
				 SET t8=
				 SET t9=

				:UPDATE
				  CLS
				  ECHO   (S to SET skill level)       Tic Tac Toe by Mac                   (Q to quit)
				  ECHO.
				  ECHO                               You are the X player.
				  ECHO                    Press the number where you want to put an X.
				  ECHO.
				  ECHO   Skill level %sl%                       7 8 9
				  ECHO                                       4 5 6
				  ECHO                                       1 2 3
				  ECHO.
				  ECHO                                       :   :
				  ECHO                                     %t1% : %t2% : %t3%
				  ECHO                                   ....:...:....
				  ECHO                                     %t4% : %t5% : %t6%
				  ECHO                                   ....:...:....
				  ECHO                                     %t7% : %t8% : %t9%
				  ECHO                                       :   :
				  IF "%gw%"=="x" GOTO winx2
				  IF "%gw%"=="o" GOTO wino2
				  IF "%nm%"=="0" GOTO nomoves

				:PLAYER
				  SET pt=x
				  CHOICE /c:789456123sq /n > NUL
				  IF ERRORLEVEL 11 GOTO end
				  IF ERRORLEVEL 10 GOTO begin
				  IF ERRORLEVEL 9 GOTO g9
				  IF ERRORLEVEL 8 GOTO g8
				  IF ERRORLEVEL 7 GOTO g7
				  IF ERRORLEVEL 6 GOTO g6
				  IF ERRORLEVEL 5 GOTO g5
				  IF ERRORLEVEL 4 GOTO g4
				  IF ERRORLEVEL 3 GOTO g3
				  IF ERRORLEVEL 2 GOTO g2
				  GOTO g1

				:g1
				  IF "%t1%"=="x" GOTO player
				  IF "%t1%"=="o" GOTO player
				  SET t1=x
				  GOTO check
				:g2
				  IF "%t2%"=="x" GOTO player
				  IF "%t2%"=="o" GOTO player
				  SET t2=x
				  GOTO check
				:g3
				  IF "%t3%"=="x" GOTO player
				  IF "%t3%"=="o" GOTO player
				  SET t3=x
				  GOTO check
				:g4
				  IF "%t4%"=="x" GOTO player
				  IF "%t4%"=="o" GOTO player
				  SET t4=x
				  GOTO check
				:g5
				  IF "%t5%"=="x" GOTO player
				  IF "%t5%"=="o" GOTO player
				  SET t5=x
				GOTO check
				:g6
				  IF "%t6%"=="x" GOTO player
				 IF "%t6%"=="o" GOTO player
				 SET t6=x
				 GOTO check
				:g7
				  IF "%t7%"=="x" GOTO player
				  IF "%t7%"=="o" GOTO player
				 SET t7=x
				  GOTO check
				:g8
				  IF "%t8%"=="x" GOTO player
				  IF "%t8%"=="o" GOTO player
				 SET t8=x
				  GOTO check
				:g9
				  IF "%t9%"=="x" GOTO player
				  IF "%t9%"=="o" GOTO player
				  SET t9=x
				  GOTO check

				:COMPUTER
				  SET pt=o
				  IF "%sl%"=="1" GOTO skill1
				  IF "%t1%"=="o" IF "%t3%"=="o" IF NOT "%t2%"=="x" IF NOT "%t2%"=="o" GOTO c2
				  IF "%t1%"=="o" IF "%t9%"=="o" IF NOT "%t5%"=="x" IF NOT "%t5%"=="o" GOTO c5
				  IF "%t1%"=="o" IF "%t7%"=="o" IF NOT "%t4%"=="x" IF NOT "%t4%"=="o" GOTO c4
				  IF "%t3%"=="o" IF "%t7%"=="o" IF NOT "%t5%"=="x" IF NOT "%t5%"=="o" GOTO c5
				  IF "%t3%"=="o" IF "%t9%"=="o" IF NOT "%t6%"=="x" IF NOT "%t6%"=="o" GOTO c6
				  IF "%t9%"=="o" IF "%t7%"=="o" IF NOT "%t8%"=="x" IF NOT "%t8%"=="o" GOTO c8
				  IF "%t2%"=="o" IF "%t8%"=="o" IF NOT "%t5%"=="x" IF NOT "%t5%"=="o" GOTO c5
				  IF "%t4%"=="o" IF "%t6%"=="o" IF NOT "%t5%"=="x" IF NOT "%t5%"=="o" GOTO c5
				  IF "%t1%"=="o" IF "%t2%"=="o" IF NOT "%t3%"=="x" IF NOT "%t3%"=="o" GOTO c3
				  IF "%t1%"=="o" IF "%t5%"=="o" IF NOT "%t9%"=="x" IF NOT "%t9%"=="o" GOTO c9
				  IF "%t1%"=="o" IF "%t4%"=="o" IF NOT "%t7%"=="x" IF NOT "%t7%"=="o" GOTO c7
				  IF "%t2%"=="o" IF "%t5%"=="o" IF NOT "%t8%"=="x" IF NOT "%t8%"=="o" GOTO c8
				  IF "%t3%"=="o" IF "%t2%"=="o" IF NOT "%t1%"=="x" IF NOT "%t1%"=="o" GOTO c1
				  IF "%t3%"=="o" IF "%t5%"=="o" IF NOT "%t7%"=="x" IF NOT "%t7%"=="o" GOTO c7
				  IF "%t3%"=="o" IF "%t6%"=="o" IF NOT "%t9%"=="x" IF NOT "%t9%"=="o" GOTO c9
				  IF "%t4%"=="o" IF "%t5%"=="o" IF NOT "%t6%"=="x" IF NOT "%t6%"=="o" GOTO c6
				  IF "%t6%"=="o" IF "%t5%"=="o" IF NOT "%t4%"=="x" IF NOT "%t4%"=="o" GOTO c4
				  IF "%t7%"=="o" IF "%t4%"=="o" IF NOT "%t1%"=="x" IF NOT "%t1%"=="o" GOTO c1
				  IF "%t7%"=="o" IF "%t5%"=="o" IF NOT "%t3%"=="x" IF NOT "%t3%"=="o" GOTO c3
				  IF "%t7%"=="o" IF "%t8%"=="o" IF NOT "%t9%"=="x" IF NOT "%t9%"=="o" GOTO c9
				  IF "%t8%"=="o" IF "%t5%"=="o" IF NOT "%t2%"=="x" IF NOT "%t2%"=="o" GOTO c2
				  IF "%t9%"=="o" IF "%t8%"=="o" IF NOT "%t7%"=="x" IF NOT "%t7%"=="o" GOTO c7
				  IF "%t9%"=="o" IF "%t5%"=="o" IF NOT "%t1%"=="x" IF NOT "%t1%"=="o" GOTO c1
				  IF "%t9%"=="o" IF "%t6%"=="o" IF NOT "%t3%"=="x" IF NOT "%t3%"=="o" GOTO c3
				  IF "%t1%"=="x" IF "%t2%"=="x" IF NOT "%t3%"=="x" IF NOT "%t3%"=="o" GOTO c3
				  IF "%t1%"=="x" IF "%t5%"=="x" IF NOT "%t9%"=="x" IF NOT "%t9%"=="o" GOTO c9
				  IF "%t1%"=="x" IF "%t4%"=="x" IF NOT "%t7%"=="x" IF NOT "%t7%"=="o" GOTO c7
				  IF "%t2%"=="x" IF "%t5%"=="x" IF NOT "%t8%"=="x" IF NOT "%t8%"=="o" GOTO c8
				  IF "%t3%"=="x" IF "%t2%"=="x" IF NOT "%t1%"=="x" IF NOT "%t1%"=="o" GOTO c1
				  IF "%t3%"=="x" IF "%t5%"=="x" IF NOT "%t7%"=="x" IF NOT "%t7%"=="o" GOTO c7
				  IF "%t3%"=="x" IF "%t6%"=="x" IF NOT "%t9%"=="x" IF NOT "%t9%"=="o" GOTO c9
				  IF "%t4%"=="x" IF "%t5%"=="x" IF NOT "%t6%"=="x" IF NOT "%t6%"=="o" GOTO c6
				  IF "%t6%"=="x" IF "%t5%"=="x" IF NOT "%t4%"=="x" IF NOT "%t4%"=="o" GOTO c4
				  IF "%t7%"=="x" IF "%t4%"=="x" IF NOT "%t1%"=="x" IF NOT "%t1%"=="o" GOTO c1
				  IF "%t7%"=="x" IF "%t5%"=="x" IF NOT "%t3%"=="x" IF NOT "%t3%"=="o" GOTO c3
				  IF "%t7%"=="x" IF "%t8%"=="x" IF NOT "%t9%"=="x" IF NOT "%t9%"=="o" GOTO c9
				  IF "%t8%"=="x" IF "%t5%"=="x" IF NOT "%t2%"=="x" IF NOT "%t2%"=="o" GOTO c2
				  IF "%t9%"=="x" IF "%t8%"=="x" IF NOT "%t7%"=="x" IF NOT "%t7%"=="o" GOTO c7
				  IF "%t9%"=="x" IF "%t5%"=="x" IF NOT "%t1%"=="x" IF NOT "%t1%"=="o" GOTO c1
				  IF "%t9%"=="x" IF "%t6%"=="x" IF NOT "%t3%"=="x" IF NOT "%t3%"=="o" GOTO c3
				  IF "%t1%"=="x" IF "%t3%"=="x" IF NOT "%t2%"=="x" IF NOT "%t2%"=="o" GOTO c2
				  IF "%t1%"=="x" IF "%t9%"=="x" IF NOT "%t5%"=="x" IF NOT "%t5%"=="o" GOTO c5
				  IF "%t1%"=="x" IF "%t7%"=="x" IF NOT "%t4%"=="x" IF NOT "%t4%"=="o" GOTO c4
				  IF "%t3%"=="x" IF "%t7%"=="x" IF NOT "%t5%"=="x" IF NOT "%t5%"=="o" GOTO c5
				  IF "%t3%"=="x" IF "%t9%"=="x" IF NOT "%t6%"=="x" IF NOT "%t6%"=="o" GOTO c6
				  IF "%t9%"=="x" IF "%t7%"=="x" IF NOT "%t8%"=="x" IF NOT "%t8%"=="o" GOTO c8
				  IF "%sl%"=="2" GOTO skill2
				  IF "%t2%"=="x" IF "%t4%"=="x" IF NOT "%t1%"=="x" IF NOT "%t1%"=="o" GOTO c1
				  IF "%t2%"=="x" IF "%t6%"=="x" IF NOT "%t3%"=="x" IF NOT "%t3%"=="o" GOTO c3
				  IF "%t8%"=="x" IF "%t4%"=="x" IF NOT "%t7%"=="x" IF NOT "%t7%"=="o" GOTO c7
				  IF "%t8%"=="x" IF "%t6%"=="x" IF NOT "%t9%"=="x" IF NOT "%t9%"=="o" GOTO c9
				  IF "%t1%"=="x" IF "%t6%"=="x" IF NOT "%t8%"=="x" IF NOT "%t8%"=="o" GOTO c8
				  IF "%t1%"=="x" IF "%t8%"=="x" IF NOT "%t6%"=="x" IF NOT "%t6%"=="o" GOTO c6
				  IF "%t3%"=="x" IF "%t8%"=="x" IF NOT "%t4%"=="x" IF NOT "%t4%"=="o" GOTO c4
				  IF "%t3%"=="x" IF "%t4%"=="x" IF NOT "%t8%"=="x" IF NOT "%t8%"=="o" GOTO c8
				  IF "%t9%"=="x" IF "%t4%"=="x" IF NOT "%t2%"=="x" IF NOT "%t2%"=="o" GOTO c2
				  IF "%t9%"=="x" IF "%t2%"=="x" IF NOT "%t4%"=="x" IF NOT "%t4%"=="o" GOTO c4
				  IF "%t7%"=="x" IF "%t2%"=="x" IF NOT "%t6%"=="x" IF NOT "%t6%"=="o" GOTO c6
				  IF "%t7%"=="x" IF "%t6%"=="x" IF NOT "%t2%"=="x" IF NOT "%t2%"=="o" GOTO c2

				:SKILL2
				  IF "%t2%"=="x" IF "%t8%"=="x" IF NOT "%t5%"=="x" IF NOT "%t5%"=="o" GOTO c5
				  IF "%t4%"=="x" IF "%t6%"=="x" IF NOT "%t5%"=="x" IF NOT "%t5%"=="o" GOTO c5
				  IF "%t1%"=="x" IF "%t9%"=="x" IF NOT "%t2%"=="x" IF NOT "%t2%"=="o" GOTO c2
				  IF "%t3%"=="x" IF "%t7%"=="x" IF NOT "%t2%"=="x" IF NOT "%t2%"=="o" GOTO c2
				  IF "%t1%"=="x" IF "%t9%"=="x" IF NOT "%t4%"=="x" IF NOT "%t4%"=="o" GOTO c4
				  IF "%t3%"=="x" IF "%t7%"=="x" IF NOT "%t4%"=="x" IF NOT "%t4%"=="o" GOTO c4
				  IF "%t1%"=="x" IF "%t9%"=="x" IF NOT "%t6%"=="x" IF NOT "%t6%"=="o" GOTO c6
				  IF "%t3%"=="x" IF "%t7%"=="x" IF NOT "%t6%"=="x" IF NOT "%t6%"=="o" GOTO c6
				  IF "%t1%"=="x" IF "%t9%"=="x" IF NOT "%t8%"=="x" IF NOT "%t8%"=="o" GOTO c8
				  IF "%t3%"=="x" IF "%t7%"=="x" IF NOT "%t8%"=="x" IF NOT "%t8%"=="o" GOTO c8
				:SKILL1
				  IF NOT "%t5%"=="x" IF NOT "%t5%"=="o" GOTO c5
				  IF NOT "%t1%"=="x" IF NOT "%t1%"=="o" GOTO c1
				  IF NOT "%t7%"=="x" IF NOT "%t7%"=="o" GOTO c7
				 IF NOT "%t9%"=="x" IF NOT "%t9%"=="o" GOTO c9
				 IF NOT "%t2%"=="x" IF NOT "%t2%"=="o" GOTO c2
				 IF NOT "%t4%"=="x" IF NOT "%t4%"=="o" GOTO c4
				  IF NOT "%t6%"=="x" IF NOT "%t6%"=="o" GOTO c6
				 IF NOT "%t8%"=="x" IF NOT "%t8%"=="o" GOTO c8
				SET nm=0
				GOTO update

				:C1
				  SET t1=o
				  GOTO check
				:C2
				  SET t2=o
				 GOTO check
				:C3
				  SET t3=o
				  GOTO check
				:C4
				  SET t4=o
				  GOTO check
				:C5
				  SET t5=o
				  GOTO check
				:C6
				  SET t6=o
				  GOTO check
				:C7
				  SET t7=o
				  GOTO check
				:C8
				  SET t8=o
				  GOTO check
				:C9
				  SET t9=o
				  GOTO check

				:CHECK
				  IF "%t1%"=="x" IF "%t2%"=="x" IF "%t3%"=="x" GOTO winx
				  IF "%t4%"=="x" IF "%t5%"=="x" IF "%t6%"=="x" GOTO winx
				  IF "%t7%"=="x" IF "%t8%"=="x" IF "%t9%"=="x" GOTO winx
				  IF "%t1%"=="x" IF "%t4%"=="x" IF "%t7%"=="x" GOTO winx
				  IF "%t2%"=="x" IF "%t5%"=="x" IF "%t8%"=="x" GOTO winx
				  IF "%t3%"=="x" IF "%t6%"=="x" IF "%t9%"=="x" GOTO winx
				  IF "%t1%"=="x" IF "%t5%"=="x" IF "%t9%"=="x" GOTO winx
				  IF "%t3%"=="x" IF "%t5%"=="x" IF "%t7%"=="x" GOTO winx
				  IF "%t1%"=="o" IF "%t2%"=="o" IF "%t3%"=="o" GOTO wino
				  IF "%t4%"=="o" IF "%t5%"=="o" IF "%t6%"=="o" GOTO wino
				  IF "%t7%"=="o" IF "%t8%"=="o" IF "%t9%"=="o" GOTO wino
				  IF "%t1%"=="o" IF "%t4%"=="o" IF "%t7%"=="o" GOTO wino
				  IF "%t2%"=="o" IF "%t5%"=="o" IF "%t8%"=="o" GOTO wino
				  IF "%t3%"=="o" IF "%t6%"=="o" IF "%t9%"=="o" GOTO wino
				  IF "%t1%"=="o" IF "%t5%"=="o" IF "%t9%"=="o" GOTO wino
				  IF "%t3%"=="o" IF "%t5%"=="o" IF "%t7%"=="o" GOTO wino
				  IF "%pt%"=="x" GOTO computer
				  IF "%pt%"=="o" GOTO update

				:WINX
				  SET gw=x
				  GOTO update
				:WINX2
				  ECHO   You win!
				  ECHO   Play again (Y,N)?
				  CHOICE /c:ynsq /n > NUL
				  IF ERRORLEVEL 4 GOTO end
				  IF ERRORLEVEL 3 GOTO begin
				  IF ERRORLEVEL 2 GOTO end
				  GOTO layout

				:WINO
				 SET gw=o
				 GOTO update
				:WINO2
				  ECHO   Sorry, You lose.
				 ECHO   Play again (Y,N)?
				 CHOICE /c:ynsq /n > NUL
				  IF ERRORLEVEL 4 GOTO end
				  IF ERRORLEVEL 3 GOTO begin
				  IF ERRORLEVEL 2 GOTO end
				  GOTO layout

				:NOMOVES
				  ECHO   There are no more moves left!
				  ECHO   Play again (Y,N)?
				  CHOICE /c:ynsq /n > NUL
				  IF ERRORLEVEL 4 GOTO end
				  IF ERRORLEVEL 3 GOTO begin
				  IF ERRORLEVEL 2 GOTO end
				  GOTO layout

				:END
				  CLS
				  ECHO Tic Tac Toe by Mac
				  ECHO.
				  SET gw=
				  SET nm=
				  SET sl=
				  SET pt=
				  SET t1=
				  SET t2=
				  SET t3=
				  SET t4=
				  SET t5=
				  SET t6=
				  SET t7=
				  SET t8=
				  SET t9=
				  GOTO Menu
			;

REM This code will NOT be formatted becuase of the fact that it is NOT mine and it is too complicated
:game3
CLS
ECHO Monopoly was found on http://www.batchlog.pytalhost.com/
ECHO.
ECHO.
ECHO Warning! Monopoly is too complicated to add a back button!
ECHO You will have to close the Menu to EXIT.
ECHO.
ECHO DO you wish to continue?
ECHO.
ECHO (y,n)
SET /p choicemonopolybla=
IF %choicemonopolybla%==n GOTO menu
IF %choicemonopolybla%==y GOTO themonopolygame
GOTO bug
EXIT

:themonopolygame
CLS
@ECHO off
TITLE Monopoly
REM (C) Copyright 2010 GrellesLicht28
REM This is a creation of Makroware.
COLOR 0f
SETLOCAL ENABLEDELAYEDEXPANSION

CALL :SetFields

GOTO :STARTMain



:: START of setting fields
 :SetFields
:SetFields
:: Player 1
IF NOT DEFINED Field1_1 SET Field1_1=
IF NOT DEFINED Field2_1 SET Field2_1=A
IF NOT DEFINED Field3_1 SET Field3_1=
IF NOT DEFINED Field4_1 SET Field4_1=
IF NOT DEFINED Field5_1 SET Field5_1=
IF NOT DEFINED Field6_1 SET Field6_1=
IF NOT DEFINED Field7_1 SET Field7_1=A
IF NOT DEFINED Field8_1 SET Field8_1=
IF NOT DEFINED Field9_1 SET Field9_1=A
IF NOT DEFINED Field10_1 SET Field10_1=A
IF NOT DEFINED Field11_1 SET Field11_1=i
IF NOT DEFINED Field11_J_1 SET Field11_J_1=
IF NOT DEFINED Field12_1 SET Field12_1=
IF NOT DEFINED Field13_1 SET Field13_1=
IF NOT DEFINED Field14_1 SET Field14_1=
IF NOT DEFINED Field15_1 SET Field15_1=
IF NOT DEFINED Field16_1 SET Field16_1=
IF NOT DEFINED Field17_1 SET Field17_1=
IF NOT DEFINED Field18_1 SET Field18_1=
IF NOT DEFINED Field19_1 SET Field19_1=
IF NOT DEFINED Field20_1 SET Field20_1=
IF NOT DEFINED Field21_1 SET Field21_1=
IF NOT DEFINED Field22_1 SET Field22_1=A
IF NOT DEFINED Field23_1 SET Field23_1=
IF NOT DEFINED Field24_1 SET Field24_1=A
IF NOT DEFINED Field25_1 SET Field25_1=A
IF NOT DEFINED Field26_1 SET Field26_1=
IF NOT DEFINED Field27_1 SET Field27_1=A
IF NOT DEFINED Field28_1 SET Field28_1=A
IF NOT DEFINED Field29_1 SET Field29_1=
IF NOT DEFINED Field30_1 SET Field30_1=
IF NOT DEFINED Field31_1 SET Field31_1=
IF NOT DEFINED Field32_1 SET Field32_1=
IF NOT DEFINED Field33_1 SET Field33_1=l
IF NOT DEFINED Field34_1 SET Field34_1=
IF NOT DEFINED Field35_1 SET Field35_1=
IF NOT DEFINED Field36_1 SET Field36_1=
IF NOT DEFINED Field37_1 SET Field37_1=
IF NOT DEFINED Field38_1 SET Field38_1=
IF NOT DEFINED Field39_1 SET Field39_1=
IF NOT DEFINED Field40_1 SET Field40_1=

:: Player 2
IF NOT DEFINED Field1_2 SET Field1_2=
IF NOT DEFINED Field2_2 SET Field2_2=e
IF NOT DEFINED Field3_2 SET Field3_2=
IF NOT DEFINED Field4_2 SET Field4_2=
IF NOT DEFINED Field5_2 SET Field5_2=
IF NOT DEFINED Field6_2 SET Field6_2=
IF NOT DEFINED Field7_2 SET Field7_2=e
IF NOT DEFINED Field8_2 SET Field8_2=
IF NOT DEFINED Field9_2 SET Field9_2=e
IF NOT DEFINED Field10_2 SET Field10_2=e
IF NOT DEFINED Field11_2 SET Field11_2=
IF NOT DEFINED Field11_J_2 SET Field11_J_2=
IF NOT DEFINED Field12_2 SET Field12_2=
IF NOT DEFINED Field13_2 SET Field13_2=
IF NOT DEFINED Field14_2 SET Field14_2=
IF NOT DEFINED Field15_2 SET Field15_2=
IF NOT DEFINED Field16_2 SET Field16_2=
IF NOT DEFINED Field17_2 SET Field17_2=
IF NOT DEFINED Field18_2 SET Field18_2=
IF NOT DEFINED Field19_2 SET Field19_2=
IF NOT DEFINED Field20_2 SET Field20_2=
IF NOT DEFINED Field21_2 SET Field21_2=
IF NOT DEFINED Field22_2 SET Field22_2=e
IF NOT DEFINED Field23_2 SET Field23_2=
IF NOT DEFINED Field24_2 SET Field24_2=e
IF NOT DEFINED Field25_2 SET Field25_2=e
IF NOT DEFINED Field26_2 SET Field26_2=
IF NOT DEFINED Field27_2 SET Field27_2=e
IF NOT DEFINED Field28_2 SET Field28_2=e
IF NOT DEFINED Field29_2 SET Field29_2=
IF NOT DEFINED Field30_2 SET Field30_2=
IF NOT DEFINED Field31_2 SET Field31_2=
IF NOT DEFINED Field32_2 SET Field32_2=
IF NOT DEFINED Field33_2 SET Field33_2=
IF NOT DEFINED Field34_2 SET Field34_2=
IF NOT DEFINED Field35_2 SET Field35_2=
IF NOT DEFINED Field36_2 SET Field36_2=
IF NOT DEFINED Field37_2 SET Field37_2=?
IF NOT DEFINED Field38_2 SET Field38_2=
IF NOT DEFINED Field39_2 SET Field39_2=
IF NOT DEFINED Field40_2 SET Field40_2=
EXIT /b
:: End of setting fields




:: Instructions START here.
 :Instructions
:Instructions
CLS
ECHO Instructions of Monopoly
ECHO ������������������������
ECHO  1. Each player STARTs with $1500. Their characters are placed on the field
ECHO     "Go" IN the beginning of the game.
ECHO  2. Every round, the current player has to throw two dice which have 6 sides.
ECHO     The amount thrown is between 2 and 12.
ECHO.
ECHO  3. IF a player gets on a street or a railroad, he or she can buy it, IF it
ECHO     is unowned, yet. ELSE the player has to pay the rent to the owner depending
ECHO     on the amount of houses or hotels (or railroads).
ECHO  4. IF a player arrives to any other field, he has to follow the instructions
ECHO     given on the field.
ECHO.
ECHO  5. Money, which is paid to the bank, goes into "Free Parking" (except FOR the
ECHO     $50 to escape from Jail). This money can be recollected by arriving on this
ECHO     field.
ECHO  6. It is NOT allowed to share money with the other player without arriving on
ECHO     one of his or her streets, railroads or companies, selling the
ECHO     Get-Out-Of-Jail-Free-card or having to follow the instructions of a
ECHO     community chest- or event card.
ECHO.
ECHO  7. There are 16 community chest cards and 16 event cards. They are NOT chosen
ECHO     by following an order, but they are chosen randomly. This allows the same
ECHO     card one after the other.
ECHO  8. The Get-Out-Of-Jail-Free-Card can only be owned once. IF got, this card
ECHO     canNOT be chosen by random anymore until it is used or sold.
ECHO  9. You canNOT own two Get-Out-Of-Jail-Free-Cards.
ECHO.
ECHO 10. You can only buy houses by arriving right on the field you want to buy
ECHO     some.
ECHO 11. You can buy 4 houses on each of the 22 streets. The fIFth house will be
ECHO     returned into a hotel. The other houses disappear IN this case.
ECHO 12. There is no limit of total houses or hotels to use IN the entire game
ECHO     unless all of the streets got a hotel.
ECHO.
ECHO 13. IF you throw three doublets IN a row, you are sent to Jail.
ECHO 14. IN Jail, you can try a doublet at last FOR three times. Then you have to
ECHO     pay $50. IF you don't want to try to roll a doublet, you can pay $50 to
ECHO     escape everytime or you can use your Get-Out-Of-Jail-Free-Card IF owned.
ECHO 15. IF you are "just visiting" the Jail, NOThing will happen.
ECHO.
ECHO 16. By passing "Go", you receive $200. By arriving onto the field "Go", you
ECHO     receive $400.
ECHO 17. IF you get a card which changes your current position, you receive $200 by
ECHO     passing "Go".
ECHO 18. You DO NOT receive $200 IF you are sent to Jail, no matter IF passing "Go"
ECHO     or NOT.
ECHO.
ECHO 19. The game ends when one player loses all his or her money. The player is NOT
ECHO     allowed to sell any property like houses, hotels, streets, railroads,
ECHO     companies or cards anymore.
ECHO.
SET /p PAUSE=
EXIT /b
:: Instructions end here.



 :STARTMain
:STARTMain
CLS
ECHO ����������������������������������ͻ
ECHO � Choose your character:           �
ECHO �   1: �                           �
ECHO �   2:  �                          �
ECHO �   3: �                           �
ECHO �   4:  �                          �
ECHO �                                  �
ECHO �Enter "instructions" to read them.�
ECHO ����������������������������������ͼ
SET /p Character1=Player 1: Character no.
SET /p Character2=Player 2: Character no.
IF "%Character1%" == "1" SET Char_1=�
IF "%Character1%" == "2" SET Char_1=�
IF "%Character1%" == "3" SET Char_1=�
IF "%Character1%" == "4" SET Char_1=�
IF /i "%Character1%" == "instructions" CALL :Instructions
IF "%Character2%" == "1" SET Char_2=�
IF "%Character2%" == "2" SET Char_2=�
IF "%Character2%" == "3" SET Char_2=�
IF "%Character2%" == "4" SET Char_2=�
IF /i "%Character2%" == "instructions" CALL :Instructions
IF NOT DEFINED Char_1 GOTO :STARTMain
IF NOT DEFINED Char_2 GOTO :STARTMain
IF "%Char_1%" == "%Char_2%" (
	ECHO You canNOT use the same character twice.
	PAUSE
	GOTO :STARTMain
)


SET DiceAmount=0
SET Escape_1=4
SET Escape_2=4
SET Field1_1=%Char_1%
SET Field1_2=%Char_2%
SET Money_1=1500
SET Money_2=1500
SET Money_Parking=0
SET Player=1
SET Player1Position=1
SET Player2Position=1


MODE con cols=91 lines=600
 :FIELD
:FIELD
CLS
SET OutOfJail=0
IF NOT "%1" == "StepDone" SET Go=0
IF NOT "%1" == "Chance_Walked" SET RentalTwice=0
SET Player=!Player!
ECHO ����������������������������������������������������������������������������������������Ŀ
ECHO � Free       �Kentu-�Chance�India-�Illi- �B.^& O.�Atlan-�Veni- �Water �Marvin�  GO  TO    �
ECHO �   �����    �  cky �  ??  �  na  � nois � RAIL-� tic  � nor  �Works � Gar- � �����      �
ECHO �!Field21_1!  �����   !Field21_2!�!Field22_1!venu!Field22_2!�!Field23_1!?  ?!Field23_2!�!Field24_1!venu!Field24_2!�!Field25_1!venu!Field25_2!�!Field26_1!ROAD!Field26_2!�!Field27_1!venu!Field27_2!�!Field28_1!venu!Field28_2!�!Field29_1!    !Field29_2!�!Field30_1!dens!Field30_2!�!Field31_1! ���      !Field31_2!�
ECHO �  �������   �      �   ?  �      �      �      �      �      �      �      �   �        �
ECHO �   �   �    �Price �  ?   �Price �Price �Price �Price �Price �Price �Price �            �
ECHO �  Parking   � $220 �  ?   � $220 � $240 � $200 � $260 � $260 � $150 � $280 �   �   JAIL �
ECHO ����������������������������������������������������������������������������������������Ĵ
ECHO �  New York  �          ________                                            �  PacIFic   �
ECHO �!Field20_1!  Avenue  !Field20_2!�         /       /                                            �!Field32_1!  Avenue  !Field32_2!�
ECHO �Price: $200 �        /       /                  �   �                      �Price: $300 �
ECHO ������������Ĵ       /       /            �       � �                       ������������Ĵ
ECHO � Tennessee  �      /       /              �       �                        �North Caro- �
ECHO �!Field19_1!  Avenue  !Field19_2!�     /_______/                �       �                       �!Field33_1!ina Avenue!Field33_2!�
ECHO �Price: $180 �  Community Chest              �   �   �                      �Price: $300 �
ECHO ������������Ĵ                                � �     �                     ������������Ĵ
ECHO � Community  �                             �   �                            � Community  �
ECHO �!Field18_1!  Chest   !Field18_2!�                            � �                               �!Field34_1!  Chest   !Field34_2!�
ECHO �            �                           �   �                              �            �
ECHO ������������Ĵ                            � �                               ������������Ĵ
ECHO � St. James  �                         �   �                                �Pennsylvania�
ECHO �!Field17_1!  Place   !Field17_2!�                        � �                                   �!Field35_1!  Avenue  !Field35_2!�
ECHO �Price: $180 �                       �   �                                  �Price: $320 �
ECHO ������������Ĵ                        � �                                   ������������Ĵ
ECHO �PENNSYLVANIA�                     �   �                                    � SHORT LINE �
ECHO �!Field16_1! RAILROAD !Field16_2!�                    � �   �                                   �!Field36_1!          !Field36_2!�
ECHO �Price: $200 �                   �   �   �                                  �Price: $200 �
ECHO ������������Ĵ                    � �                                       ������������Ĵ
ECHO �  Virginia  �                 �   �                                        �  ??  Chance�
ECHO �!Field15_1!  Avenue  !Field15_2!�                � �                                           �!Field37_1!?  ??  ?  !Field37_2!�
ECHO �Price: $160 �               �   �                                          �  ?   ??    �
ECHO ������������Ĵ                �                                             ������������Ĵ
ECHO �   States   �             �   �                                            � Park Place �
ECHO �!Field14_1!  Avenue  !Field14_2!�            � �                                               �!Field38_1!          !Field38_2!�
ECHO �Price: $140 �           �   �                                              �Price: $350 �
ECHO ������������Ĵ        �   � �                                               ������������Ĵ
ECHO �  Electric  �       � �   �                                 C  ________    � LUXURY TAX �
ECHO �!Field13_1!  Company !Field13_2!�      �   �                                   h  /       /    �!Field39_1!          !Field39_2!�
ECHO �Price: $150 �     � �   �                                 a  /       /     �  Pay $75   �
ECHO ������������Ĵ    �   �                                   n  /       /      ������������Ĵ
ECHO �St. Charles �     �   �                                 c  /       /       � Boardwalk  �
ECHO �!Field12_1!  Place   !Field12_2!�      �                                   e  /_______/        �!Field40_1!          !Field40_2!�
ECHO �Price: $140 �       �                                                      �Price: $400 �
ECHO ����������������������������������������������������������������������������������������Ĵ
ECHO �Just� IN    �Connec�Ver-  �Chance�Orien-�READIN�INCOME�Baltic�      �Medite�Collect $200�
ECHO �v   ������ͻ�ticut �  mont�  ??  �tal   �RAIL- � TAX  �Avenue�Commu-�r...  �as you pass �
ECHO �!Field11_1!  !Field11_2!��!Field11_J_1!� �!Field11_J_2!��!Field10_1!venu!Field10_2!�!Field9_1!venu!Field9_2!�!Field8_1!?  ?!Field8_2!�!Field7_1!venu!Field7_2!�!Field6_1!ROAD!Field6_2!�!Field5_1!    !Field5_2!�!Field4_1!    !Field4_2!�!Field3_1!nity!Field3_2!�!Field2_1!venu!Field2_2!�!Field1_1!          !Field1_2!�
ECHO �s   �� � � ��      �      �   ?  �      �      �Pay   �      �      �      � ���� ����  �
ECHO �i   ������ͼ�Price �Price �  ?   �Price �Price �10%% or�Price �Chest �Price � � �� �  �  �
ECHO �ting�  JAIL � $120 � $100 �  ?   � $100 � $200 �$200  �  $60 �      �  $60 � ���� ����  �
ECHO ������������������������������������������������������������������������������������������


IF "%1" == "StepDone" EXIT /b
IF "%1" == "Chance_Walked" GOTO :STARTComparingPositions
IF "!Field11_J_%Player%!" == "!Char_%Player%!" CALL :InJail
IF "%OutOfJail%" == "1" GOTO :FIELD


 :RecallDisplay
:RecallDisplay
ECHO.
ECHO Player %Player% (!Char_%Player%!)'s turn:


:: Checks every street IF owned by the current player.
ECHO Streets owned:
SET Display_%Player%=
SET Display_Amount_%Player%=0
FOR %%A IN (MediterraneanAvenue BalticAvenue ReadingRailroad OrientalAvenue VermontAvenue ConnecticutAvenue St.CharlesPlace ElectricCompany StatesAvenue VirginiaAvenue PennsylvaniaRailroad St.JamesPlace TennesseeAvenue NewYorkAvenue KentuckyAvenue IndianaAvenue IllinoisAvenue B.O.Railroad AtlanticAvenue VeninorAvenue WaterWorks MarvinGardens PacIFicAvenue NorthCarolinaAvenue PennsylvaniaAvenue ShortLine ParkPlace Boardwalk) DO (
	IF "!%%A!" == "%Player%" (
		IF NOT "!Display_Amount_%Player%!" == "4" (SET Display_%Player%=!Display_%Player%!%%A / ) ELSE (SET Display_%Player%=!Display_%Player%!%%A)
		SET /a Display_Amount_%Player%=!Display_Amount_%Player%! + 1
		IF "!Display_Amount_%Player%!" == "4" (
			ECHO !Display_%Player%!
			SET Display_Amount_%Player%=0
			SET Display_%Player%=
		)
	)
	IF "%%A" == "Boardwalk" IF NOT "!Display_Amount_%Player%!" == "0" ECHO !Display_%Player%!
)
ECHO.
IF "!FreeOutOfJail_%Player%!" == "1" (
	SET OtherPlayer=
	SET Sell_JailCard=
	SET Accept_JailCard=
	ECHO You own a card to get out of jail FOR free.
	ECHO Enter "sell FOR XX" to sell it to the other player FOR XX dollars.
	SET /p Sell_JailCard=
	IF /i "!Sell_JailCard:~0,9!" == "sell FOR " (
		ECHO To the other player: DO you want to accept the price [!Sell_JailCard:~9,4!],
		ECHO then enter "Yes, I would like to.".
		SET /p Accept_JailCard=
		IF /i "!Accept_JailCard!" == "Yes, I would like to." (
			SET Puffer=!Money_%Player%!
			SET /a Money_%Player%=!Money_%Player%! + !Sell_JailCard:~9,4!
			ECHO ���^> Money increased from $!Puffer! by $!Sell_JailCard:~9,4! to $!Money_%Player%!.
			IF "!Player!" == "1" (
				SET Puffer=!Money_2!
				SET /a Money_2=!Money_2! - !Sell_JailCard:~9,4!
				ECHO ���^> Money decreased from $!Puffer! by $!Sell_JailCard:~9,4! to $!Money_2!.
				IF "!Money_2:~0,1!" == "-" (
					ECHO You have NOT enough money.
					SET /a Money_1=!Money_1! - !Sell_JailCard:~9,4!
					SET /a Money_2=!Money_2! + !Sell_JailCard:~9,4!
					ECHO      ���^> Money amounts SET back.
				)
				SET FreeOutOfJail_1=0
				SET FreeOutOfJail_2=1
			) ELSE (
				SET Puffer=!Money_1!
				SET /a Money_1=!Money_1! - !Sell_JailCard:~9,4!
				ECHO ���^> Money decreased from $!Puffer! by $!Sell_JailCard:~9,4! to $!Money_1!.
				IF "!Money_1:~0,1!" == "-" (
					ECHO You have NOT enough money.
					SET /a Money_2=!Money_2! - !Sell_JailCard:~9,4!
					SET /a Money_1=!Money_1! + !Sell_JailCard:~9,4!
					ECHO      ���^> Money amounts SET back.
				)
				SET FreeOutOfJail_2=0
				SET FreeOutOfJail_1=1
			)
			IF "!FreeOutOfJail_Chance!" == "!FreeOutOfJail_%Player%!" (
				SET FreeOutOfJail_Chance=0
			) ELSE (
				SET FreeOutOfJail_Community=0
			)
			SET FreeOutOfJail_%Player%=0
		) ELSE (
		ECHO Trade cancelled.
		)
	)
) ELSE (
	ECHO Press any key to roll a dice...
	IF NOT "%1" == "StepDone" PAUSE >NUL
)
IF "%1" == "StepDone" EXIT /b

 :RollADice
:RollADice
:: Randomly roll two dices. The IF's make sure they are between 1 and 6.
SET /a DiceOne=%random% %% 6 + 1
SET /a DiceTwo=%random% %% 6 + 1


:: Resetting the current player's position.
SET Field!Player%Player%Position!_%Player%=

:: Calculating the amount of steps to go. Also informs the user.
SET /a Dice=%DiceOne% + %DiceTwo%
ECHO Dice one (%DiceOne%) + dice two (%DiceTwo%) = %Dice%
SET /a Player%Player%Position=!Player%Player%Position! + %Dice%


:: Check IF the player went over "GO".
IF NOT "!Player%Player%Position:~1,1!" == "" IF "!Player%Player%Position:~0,1!" GEQ "4" IF "!Player%Player%Position:~1,1!" GTR "0" (
	SET /a Player%Player%Position=!Player%Player%Position! - 40
	SET Puffer=!Money_%Player%!
	IF NOT "!Player%Player%Position!" == "1" (
		SET /a Money_%Player%=!Money_%Player%! + 200
		SET Go=1
	)
)


:: SET the new player's position.
SET Field!Player%Player%Position!_%Player%=!Char_%Player%!

:: Reset the fields after having changed the position.
CALL :SetFields

PAUSE >NUL


 :RollDone
:RollDone

:: Showing the user the new position before dwelling on it.
CALL :FIELD StepDone

CALL :RecallDisplay StepDone
ECHO Dice one (%DiceOne%) + dice two (%DiceTwo%) = %Dice%
IF "!Go!" == "1" ECHO ���^> Money increased from $!Puffer! by $200 to $!Money_%Player%!.


 :STARTComparingPositions
:STARTComparingPositions
PAUSE >NUL
:: Dwelling on the player's position.
IF "!Field1_%Player%!" == "!Char_%Player%!" CALL :GO
IF "!Field2_%Player%!" == "!Char_%Player%!" CALL :MediterraneanAvenue
IF "!Field3_%Player%!" == "!Char_%Player%!" GOTO :CommunityChest
IF "!Field4_%Player%!" == "!Char_%Player%!" CALL :BalticAvenue
IF "!Field5_%Player%!" == "!Char_%Player%!" CALL :IncomeTax
IF "!Field6_%Player%!" == "!Char_%Player%!" CALL :ReadingRailroad
IF "!Field7_%Player%!" == "!Char_%Player%!" CALL :OrientalAvenue
IF "!Field8_%Player%!" == "!Char_%Player%!" GOTO :Chance
IF "!Field9_%Player%!" == "!Char_%Player%!" CALL :VermontAvenue
IF "!Field10_%Player%!" == "!Char_%Player%!" CALL :ConnecticutAvenue
IF "!Field11_%Player%!" == "!Char_%Player%!" CALL :AtJail
IF "!Field12_%Player%!" == "!Char_%Player%!" CALL :St.CharlesPlace
IF "!Field13_%Player%!" == "!Char_%Player%!" CALL :ElectricCompany
IF "!Field14_%Player%!" == "!Char_%Player%!" CALL :StatesAvenue
IF "!Field15_%Player%!" == "!Char_%Player%!" CALL :VirginiaAvenue
IF "!Field16_%Player%!" == "!Char_%Player%!" CALL :PennsylvaniaRailroad
IF "!Field17_%Player%!" == "!Char_%Player%!" CALL :St.JamesPlace
IF "!Field18_%Player%!" == "!Char_%Player%!" GOTO :CommunityChest
IF "!Field19_%Player%!" == "!Char_%Player%!" CALL :TennesseeAvenue
IF "!Field20_%Player%!" == "!Char_%Player%!" CALL :NewYorkAvenue
IF "!Field21_%Player%!" == "!Char_%Player%!" CALL :FreeParking
IF "!Field22_%Player%!" == "!Char_%Player%!" CALL :KentuckyAvenue
IF "!Field23_%Player%!" == "!Char_%Player%!" GOTO :Chance
IF "!Field24_%Player%!" == "!Char_%Player%!" CALL :IndianaAvenue
IF "!Field25_%Player%!" == "!Char_%Player%!" CALL :IllinoisAvenue
IF "!Field26_%Player%!" == "!Char_%Player%!" CALL :B.O.Railroad
IF "!Field27_%Player%!" == "!Char_%Player%!" CALL :AtlanticAvenue
IF "!Field28_%Player%!" == "!Char_%Player%!" CALL :VeninorAvenue
IF "!Field29_%Player%!" == "!Char_%Player%!" CALL :WaterWorks
IF "!Field30_%Player%!" == "!Char_%Player%!" CALL :MarvinGardens
IF "!Field31_%Player%!" == "!Char_%Player%!" CALL :SendToJail
IF "!Field32_%Player%!" == "!Char_%Player%!" CALL :PacIFicAvenue
IF "!Field33_%Player%!" == "!Char_%Player%!" CALL :NorthCarolinaAvenue
IF "!Field34_%Player%!" == "!Char_%Player%!" GOTO :CommunityChest
IF "!Field35_%Player%!" == "!Char_%Player%!" CALL :PennsylvaniaAvenue
IF "!Field36_%Player%!" == "!Char_%Player%!" CALL :ShortLineRailroad
IF "!Field37_%Player%!" == "!Char_%Player%!" GOTO :Chance
IF "!Field38_%Player%!" == "!Char_%Player%!" CALL :ParkPlace
IF "!Field39_%Player%!" == "!Char_%Player%!" CALL :LuxuryTax
IF "!Field40_%Player%!" == "!Char_%Player%!" CALL :Boardwalk

IF "%1" == "Chance_Walked" EXIT /b

 :After_STARTComparingPositions
:After_STARTComparingPositions


:: Changes the player
IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)



:: Counting the doublets
SET goto_immediately=0
IF DEFINED DiceOne IF DEFINED DiceTwo IF "%DiceOne%" == "%DiceTwo%" (
	SET /a DiceAmount=!DiceAmount! + 1
	ECHO.
	ECHO You got a doublet [%DiceOne% - %DiceTwo%], you can DO aNOTher round.
	IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
	SET goto_immediately=1
	PAUSE
)

::Checks IF 3 doublets IN a row. IF so, sends the user to jail.
IF "!DiceAmount!" == "3" IF "%DiceOne%" == "%DiceTwo%" (
	ECHO You got 3 doublets IN a row, you are now sent to jail.
	SET goto_immediately=0
	PAUSE
	CALL :SendToJail Doublets
)
IF NOT "!goto_immediately!" == "1" SET DiceAmount=0

GOTO :FIELD





:: START of fields.


 :GO
:GO                   1
CLS
ECHO ������������������������������������������������ͻ
ECHO �                                                �
ECHO �        �����������                             �
ECHO �       ���                                      �
ECHO �      ���                                       �
ECHO �     ���                                        �
ECHO �     ���    ������          ��������            �
ECHO �     ���        ���        ��      ��           �
ECHO �      ���        ���       ��      ��           �
ECHO �       ���      ���        ��      ��           �
ECHO �        ����������          ��������            �
ECHO �                                                �
ECHO �                                                �
ECHO �                                                �
ECHO �                                                �
ECHO � Collect $200 as you pass or                    �
ECHO � collect $400 as you meet.                      �
ECHO �                                                �
ECHO �                                                �
ECHO �                                                �
ECHO �                                                �
ECHO ������������������������������������������������ͼ
ECHO.
ECHO Current player: %Player% (!Char_%Player%!)
SET Puffer=!Money_%Player%!
SET /a Money_%Player%=!Money_%Player%! + 400
ECHO ���^> Money increased from $%Puffer% by $400 to $!Money_%Player%!.
ECHO.
PAUSE
EXIT /b




 :MediterraneanAvenue
:MediterraneanAvenue  2
SET Purchase=
SET Buy_House=
SET PayRent=
SET Sell_Street=
IF NOT DEFINED MediterraneanAvenue_Houses SET MediterraneanAvenue_Houses=0
CLS
ECHO ������������������������ͻ
ECHO �                        �
ECHO �  Mediterranean Avenue  �
ECHO �                        �
ECHO �   PRICE $60  RENT $2   �
ECHO � ���������������������� �
ECHO � With 1 House       $10 �
ECHO �                        �
ECHO � With 2 Houses      $30 �
ECHO �                        �
ECHO � With 3 Houses      $90 �
ECHO �                        �
ECHO � With 4 Houses     $160 �
ECHO �                        �
ECHO � With HOTEL        $250 �
ECHO � ���������������������� �
ECHO �  One house costs $50   �
ECHO �                        �
ECHO �   Mortgage value $30   �
ECHO � ���������������������� �
ECHO �                        �
ECHO ������������������������ͼ
ECHO.
ECHO Current player: %Player% (!Char_%Player%!)
ECHO Total money: !Money_%Player%!
ECHO.
IF "!MediterraneanAvenue!" == "%Player%" GOTO :MediterraneanAvenue_Houses
IF DEFINED MediterraneanAvenue GOTO :MediterraneanAvenue_PayRent
ECHO Press [1] to buy this street FOR $60 or
ECHO press [2] to leave it.
SET /p Purchase=
IF "%Purchase%" == "1" (
	SET Puffer=!Money_%Player%!
	SET /a Money_%Player%=!Money_%Player%! - 60
	IF "!Money_%Player%:~0,1!" == "-" (
		ECHO You have NOT enough money.
		SET /a Money_%Player%=!Money_%Player%! + 60
	) ELSE (
		ECHO ���^> Money decreased from $!Puffer! by $60 to $!Money_%Player%!.
		SET MediterraneanAvenue=%Player%
	)
	PAUSE
	EXIT /b
)
IF "%Purchase%" == "2" EXIT /b
GOTO :MediterraneanAvenue
 :MediterraneanAvenue_Houses
:MediterraneanAvenue_Houses
IF "!MediterraneanAvenue_Houses!" == "5" (
	ECHO This street has got a hotel.
	PAUSE
	EXIT /b
) ELSE (
	ECHO This street has got !MediterraneanAvenue_Houses! houses, yet.
	ECHO.
)
ECHO Press [1] to buy a new house or
ECHO press [2] to leave it or
ECHO press [3] to sell it FOR $30.
SET /p Buy_House=
ECHO.
IF "%Buy_House%" == "1" (
	SET Puffer=!Money_%Player%!
	SET /a Money_%Player%=!Money_%Player%! - 50
	IF "!Money_%Player%:~0,1!" == "-" (
		ECHO You have NOT enough money.
		SET /a Money_%Player%=!Money_%Player%! + 50
	) ELSE (
		ECHO ���^> Money decreased from $!Puffer! by $50 to $!Money_%Player%!.
		SET /a MediterraneanAvenue_Houses=!MediterraneanAvenue_Houses! + 1
		IF NOT "!MediterraneanAvenue_Houses!" == "5" (ECHO This street has got !MediterraneanAvenue_Houses! houses now.) ELSE (ECHO This street has got a hotel now.)
	)
	PAUSE
	EXIT /b
)
IF "%Buy_House%" == "2" EXIT /b
IF "%Buy_House%" == "3" (
	ECHO Are you sure you want to sell the street? [Y/N]
	SET /p Sell_Street=
	IF /i "!Sell_Street!" == "n" EXIT /b
	IF /i "!Sell_Street!" == "y" (
		SET Puffer=!Money_%Player%!
		SET /a Money_%Player%=!Money_%Player%! + 30
		ECHO ���^> Money increased from $!Puffer! by $30 to $!Money_%Player%!.
		SET MediterraneanAvenue=
		SET MediterraneanAvenue_Houses=0
	)
)
GOTO :MediterraneanAvenue_Houses
 :MediterraneanAvenue_PayRent
:MediterraneanAvenue_PayRent
IF "!MediterraneanAvenue_Houses!" == "0" SET PayRent=2
IF "!MediterraneanAvenue_Houses!" == "1" SET PayRent=10
IF "!MediterraneanAvenue_Houses!" == "2" SET PayRent=30
IF "!MediterraneanAvenue_Houses!" == "3" SET PayRent=90
IF "!MediterraneanAvenue_Houses!" == "4" SET PayRent=160
IF "!MediterraneanAvenue_Houses!" == "5" SET PayRent=250
ECHO This street is owned by the other player. You have to pay
ECHO $%PayRent% to pass.
SET Puffer=!Money_%Player%!
SET /a Money_%Player%=!Money_%Player%! - %PayRent%
ECHO ���^> Money decreased from $%Puffer% by $%PayRent% to $!Money_%Player%!.
IF "!Money_%Player%:~0,1!" == "-" (
	ECHO.
	PAUSE
	CLS
	ECHO Player %Player% [!Char_%Player%!] is bankrupt.
	ECHO.
	IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
	ECHO Player !Player! wins the game.
	ECHO.
	PAUSE
	EXIT
)
IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
SET Player=!Player!
SET Puffer=!Money_%Player%!
SET /a Money_%Player%=!Money_%Player%! + %PayRent%
ECHO ���^> The other player's money increased from $%Puffer% by $%PayRent% to $!Money_%Player%!.
IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
SET Player=!Player!
ECHO.
PAUSE
EXIT /b





 :CommunityChest
:CommunityChest       3/18/34
CLS
ECHO ������������������������ͻ
ECHO �    Community Chest     �
ECHO �                        �
ECHO �      ################# �
ECHO �     #///////////////## �
ECHO �    #################I# �
ECHO �    #,,,,,,,,,,,,,,,#I# �
ECHO �    #,,,,,,,,,,,,,,,##  �
ECHO �    #,,,,,,,,,,,,,,,#   �
ECHO �    #################   �
ECHO �   #,,,,,,,,,,,,,,,##   �
ECHO �  #,,,,,,,,,,,,,,,#I#   �
ECHO � #################II#   �
ECHO � #jjjjjjjjjjjjjjj#II#   �
ECHO � #jjjjjjjjjjjjjjj#I#    �
ECHO � #jjjjjjjjjjjjjjj##     �
ECHO � #################      �
ECHO �                        �
ECHO � You found a community  �
ECHO �  chest, draw a card.   �
ECHO �                        �
ECHO ������������������������ͼ
ECHO.
ECHO Current player: %Player% (!Char_%Player%!)
ECHO Total money: !Money_%Player%!
ECHO.
 :ChooseCommunityCard
:ChooseCommunityCard
SET /a ChooseCommunityCard=%random:~0,2% - 15
IF "%ChooseCommunityCard:~0,1%" == "-" GOTO :ChooseCommunityCard
IF "%ChooseCommunityCard%" == "0" GOTO :ChooseCommunityCard
IF NOT "%ChooseCommunityCard:~1,1%" == "" IF "%ChooseCommunityCard:~0,1%" GTR "1" (GOTO :ChooseCommunityCard) ELSE (IF "%ChooseCommunityCard:~1,1%" GTR "6" GOTO :ChooseCommunityCard)
IF "!FreeOutOfJail_Community!" == "1" IF "%ChooseCommunityCard%" == "7" GOTO :ChooseCommunityCard
IF "%ChooseCommunityCard%" == "1" SET Var=%%A
IF "%ChooseCommunityCard%" == "2" SET Var=%%B
IF "%ChooseCommunityCard%" == "3" SET Var=%%C
IF "%ChooseCommunityCard%" == "4" SET Var=%%D
IF "%ChooseCommunityCard%" == "5" SET Var=%%E
IF "%ChooseCommunityCard%" == "6" SET Var=%%F
IF "%ChooseCommunityCard%" == "7" SET Var=%%G
IF "%ChooseCommunityCard%" == "8" SET Var=%%H
IF "%ChooseCommunityCard%" == "9" SET Var=%%I
IF "%ChooseCommunityCard%" == "10" SET Var=%%J
IF "%ChooseCommunityCard%" == "11" SET Var=%%K
IF "%ChooseCommunityCard%" == "12" SET Var=%%L
IF "%ChooseCommunityCard%" == "13" SET Var=%%M
IF "%ChooseCommunityCard%" == "14" SET Var=%%N
IF "%ChooseCommunityCard%" == "15" SET Var=%%O
IF "%ChooseCommunityCard%" == "16" SET Var=%%P
ECHO ����������������Ŀ
ECHO � Community Card �
ECHO �                �
FOR /F "tokens=1-16 delims=/" %%A IN ("�  Grand Opera   �/� Advance to Go. �/�  You have won  �/�  Doctor's fee. �/� Christmas fund �/�  You inherit   �/�Get ouf of Jail �/�You are assessed�/�  From sale of  �/� Pay school tax �/�   Income tax   �/�  Receive FOR   �/�  Pay hospital  �/� Go directly to �/� LIFe insurance �/� Bank error IN  �/") DO ECHO %Var%
FOR /F "tokens=1-16 delims=/" %%A IN ("�Opening: Collect�/� Collect $400.  �/�second prize IN �/�    Pay $50.    �/�    matures.    �/�     $100.      �/�      free.     �/�   FOR street   �/�   stock you    �/�    of $150.    �/�     refund.    �/�  serviced $25. �/�     $100.      �/�  Jail, DO NOT  �/�    matures.    �/�  your favor.   �/") DO ECHO %Var%
FOR /F "tokens=1-16 delims=/" %%A IN ("� $50 from every �/�                �/�    a beauty    �/�                �/�  Collect $100. �/�                �/� This card may  �/�    repairs.    �/�  receive $45.  �/�                �/�  Collect $20.  �/�                �/�                �/�pass Go, DO NOT �/�  Collect $100. �/� Collect $200.  �/") DO ECHO %Var%
FOR /F "tokens=1-16 delims=/" %%A IN ("�   player FOR   �/�                �/�    contest     �/�                �/�                �/�                �/� be kept until  �/�  Pay $40 per   �/�                �/�                �/�                �/�                �/�                �/�  collect $200. �/�                �/�                �/") DO ECHO %Var%
FOR /F "tokens=1-16 delims=/" %%A IN ("� opening night  �/�                �/�  Collect $10   �/�                �/�                �/�                �/�needed, or sold.�/� house and $115 �/�                �/�                �/�                �/�                �/�                �/�                �/�                �/�                �/") DO ECHO %Var%
FOR /F "tokens=1-16 delims=/" %%A IN ("�     seats.     �/�                �/�                �/�                �/�                �/�                �/�                �/�   per hotel.   �/�                �/�                �/�                �/�                �/�                �/�                �/�                �/�                �/") DO ECHO %Var%
ECHO �                �
ECHO �                �
ECHO ������������������
IF "%ChooseCommunityCard%" == "1" (
	SET Puffer=!Money_%Player%!
	SET /a Money_%Player%=!Money_%Player%! + 50
	ECHO ���^> Money increased from $!Puffer! by $50 to $!Money_%Player%!.
)
IF "%Player%" == "1" (SET Player=2) ELSE (SET Player=1)
SET Player=!Player!
IF "%ChooseCommunityCard%" == "1" (
	SET Puffer=!Money_%Player%!
	SET /a Money_%Player%=!Money_%Player%! - 50
	ECHO ���^> The other player's money decreased from $!Puffer! by $50 to $!Money_%Player%!.
	IF "!Money_%Player%:~0,1!" == "-" (
		ECHO.
		PAUSE
		CLS
		ECHO Player %Player% [!Char_%Player%!] is bankrupt.
		ECHO.
		IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
		ECHO Player !Player! wins the game.
		ECHO.
		PAUSE
		EXIT
	)
)
IF "%Player%" == "1" (SET Player=2) ELSE (SET Player=1)
SET Player=!Player!
IF "%ChooseCommunityCard%" == "2" (
	SET Field!Player%Player%Position!_%Player%=
	SET Player%Player%Position=1
	SET Field1_%Player%=!Char_%Player%!
	PAUSE
	CALL :SetFields
	CALL :FIELD Chance_Walked
)
IF "%ChooseCommunityCard%" == "3" (
	SET Puffer=!Money_%Player%!
	SET /a Money_%Player%=!Money_%Player%! + 10
	ECHO ���^> Money increased from $!Puffer! by $10 to $!Money_%Player%!.
)
IF "%ChooseCommunityCard%" == "4" (
	SET Puffer=!Money_%Player%!
	SET /a Money_%Player%=!Money_%Player%! - 50
	SET /a Money_Parking=!Money_Parking! + 50
	ECHO ���^> Money decreased from $!Puffer! by $50 to $!Money_%Player%!.
	ECHO       ^& $50 went into Free Parking.
	IF "!Money_%Player%:~0,1!" == "-" (
		ECHO.
		PAUSE
		CLS
		ECHO Player %Player% [!Char_%Player%!] is bankrupt.
		ECHO.
		IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
		ECHO Player !Player! wins the game.
		ECHO.
		PAUSE
		EXIT
	)
)
IF "%ChooseCommunityCard%" == "5" (
	SET Puffer=!Money_%Player%!
	SET /a Money_%Player%=!Money_%Player%! + 100
	ECHO ���^> Money increased from $!Puffer! by $100 to $!Money_%Player%!.
)
IF "%ChooseCommunityCard%" == "6" (
	SET Puffer=!Money_%Player%!
	SET /a Money_%Player%=!Money_%Player%! + 100
	ECHO ���^> Money increased from $!Puffer! by $100 to $!Money_%Player%!.
)
IF "%ChooseCommunityCard%" == "7" (
	SET FreeOutOfJail_%Player%=1
	SET FreeOutOfJail_Community=1
)
IF "%ChooseCommunityCard%" == "8" (
	SET Houses_%Player%=0
	SET Hotels_%Player%=0
	SET PayForHouses=0
	SET PayForHotels=0
	SET PayForHousesAndHotels=0
	FOR %%A IN (MediterraneanAvenue BalticAvenue ReadingRailroad OrientalAvenue VermontAvenue ConnecticutAvenue St.CharlesPlace ElectricCompany StatesAvenue VirginiaAvenue PennsylvaniaRailroad St.JamesPlace TennesseeAvenue NewYorkAvenue KentuckyAvenue IndianaAvenue IllinoisAvenue B.O.Railroad AtlanticAvenue VeninorAvenue WaterWorks MarvinGardens PacIFicAvenue NorthCarolinaAvenue PennsylvaniaAvenue ShortLine ParkPlace Boardwalk) DO (
		IF "!%%A!" == "%Player%" (
			IF NOT "!%%A_Houses!" == "5" (SET /a Houses_%Player%=!Houses_%Player%! + !%%A_Houses!) ELSE (SET /a Hotels_%Player%=!Hotels_%Player%! + 1)
		)
	)
	SET /a PayForHouses=!Houses_%Player%! * 40
	SET /a PayForHotels=!Hotels_%Player%! * 115
	ECHO You have to pay $!PayForHouses! FOR !Houses_%Player%! houses and
	ECHO you have to pay $!PayForHotels! FOR !Hotels_%Player%! hotels.
	ECHO.
	SET /a PayForHousesAndHotels=!PayForHouses! + !PayForHotels!
	SET Puffer=!Money_%Player%!
	SET /a Money_%Player%=!Money_%Player%! - !PayForHousesAndHotels!
	SET /a Money_Parking=!Money_Parking! + !PayForHousesAndHotels!
	ECHO ���^> Money decreased from $!Puffer! by $!PayForHousesAndHotels! to $!Money_%Player%!.
	ECHO       ^& $!PayForHousesAndHotels! went into Free Parking.
	IF "!Money_%Player%:~0,1!" == "-" (
		ECHO.
		PAUSE
		CLS
		ECHO Player %Player% [!Char_%Player%!] is bankrupt.
		ECHO.
		IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
		ECHO Player !Player! wins the game.
		ECHO.
		PAUSE
		EXIT
	)
)
IF "%ChooseCommunityCard%" == "9" (
	SET Puffer=!Money_%Player%!
	SET /a Money_%Player%=!Money_%Player%! + 45
	ECHO ���^> Money increased from $!Puffer! by $45 to $!Money_%Player%!.
)
IF "%ChooseCommunityCard%" == "10" (
	SET Puffer=!Money_%Player%!
	SET /a Money_%Player%=!Money_%Player%! - 150
	SET /a Money_Parking=!Money_Parking! + 150
	ECHO ���^> Money decreased from $!Puffer! by $150 to $!Money_%Player%!.
	ECHO       ^& $150 went into Free Parking.
	IF "!Money_%Player%:~0,1!" == "-" (
		ECHO.
		PAUSE
		CLS
		ECHO Player %Player% [!Char_%Player%!] is bankrupt.
		ECHO.
		IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
		ECHO Player !Player! wins the game.
		ECHO.
		PAUSE
		EXIT
	)
)
IF "%ChooseCommunityCard%" == "11" (
	SET Puffer=!Money_%Player%!
	SET /a Money_%Player%=!Money_%Player%! + 20
	ECHO ���^> Money increased from $!Puffer! by $20 to $!Money_%Player%!.
)
IF "%ChooseCommunityCard%" == "12" (
	SET Puffer=!Money_%Player%!
	SET /a Money_%Player%=!Money_%Player%! + 25
	ECHO ���^> Money increased from $!Puffer! by $25 to $!Money_%Player%!.
)
IF "%ChooseCommunityCard%" == "13" (
	SET Puffer=!Money_%Player%!
	SET /a Money_%Player%=!Money_%Player%! - 100
	SET /a Money_Parking=!Money_Parking! + 100
	ECHO ���^> Money decreased from $!Puffer! by $100 to $!Money_%Player%!.
	ECHO       ^& $100 went into Free Parking.
	IF "!Money_%Player%:~0,1!" == "-" (
		ECHO.
		PAUSE
		CLS
		ECHO Player %Player% [!Char_%Player%!] is bankrupt.
		ECHO.
		IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
		ECHO Player !Player! wins the game.
		ECHO.
		PAUSE
		EXIT
	)
)
IF "%ChooseCommunityCard%" == "14" (
	PAUSE
	CALL :SendToJail
)
IF "%ChooseCommunityCard%" == "15" (
	SET Puffer=!Money_%Player%!
	SET /a Money_%Player%=!Money_%Player%! + 100
	ECHO ���^> Money increased from $!Puffer! by $100 to $!Money_%Player%!.
)
IF "%ChooseCommunityCard%" == "16" (
	SET Puffer=!Money_%Player%!
	SET /a Money_%Player%=!Money_%Player%! + 200
	ECHO ���^> Money increased from $!Puffer! by $200 to $!Money_%Player%!.
)
PAUSE
GOTO :After_STARTComparingPositions




 :BalticAvenue
:BalticAvenue         4
SET Purchase=
SET Buy_House=
SET PayRent=
SET Sell_Street=
IF NOT DEFINED BalticAvenue_Houses SET BalticAvenue_Houses=0
CLS
ECHO ������������������������ͻ
ECHO �                        �
ECHO �     Baltic Avenue      �
ECHO �                        �
ECHO �   PRICE $60  RENT $4   �
ECHO � ���������������������� �
ECHO � With 1 House       $20 �
ECHO �                        �
ECHO � With 2 Houses      $60 �
ECHO �                        �
ECHO � With 3 Houses     $180 �
ECHO �                        �
ECHO � With 4 Houses     $320 �
ECHO �                        �
ECHO � With HOTEL        $450 �
ECHO � ���������������������� �
ECHO �  One house costs $50   �
ECHO �                        �
ECHO �   Mortgage value $30   �
ECHO � ���������������������� �
ECHO �                        �
ECHO ������������������������ͼ
ECHO.
ECHO Current player: %Player% (!Char_%Player%!)
ECHO Total money: !Money_%Player%!
ECHO.
IF "!BalticAvenue!" == "%Player%" GOTO :BalticAvenue_Houses
IF DEFINED BalticAvenue GOTO :BalticAvenue_PayRent
ECHO Press [1] to buy this street FOR $60 or
ECHO press [2] to leave it.
SET /p Purchase=
IF "%Purchase%" == "1" (
	SET Puffer=!Money_%Player%!
	SET /a Money_%Player%=!Money_%Player%! - 60
	IF "!Money_%Player%:~0,1!" == "-" (
		ECHO You have NOT enough money.
		SET /a Money_%Player%=!Money_%Player%! + 60
	) ELSE (
		ECHO ���^> Money decreased from $!Puffer! by $60 to $!Money_%Player%!.
		SET BalticAvenue=%Player%
	)
	PAUSE
	EXIT /b
)
IF "%Purchase%" == "2" EXIT /b
GOTO :BalticAvenue
 :BalticAvenue_Houses
:BalticAvenue_Houses
IF "!BalticAvenue_Houses!" == "5" (
	ECHO This street has got a hotel.
	PAUSE
	EXIT /b
) ELSE (
	ECHO This street has got !BalticAvenue_Houses! houses, yet.
	ECHO.
)
ECHO Press [1] to buy a new house or
ECHO press [2] to leave it or
ECHO press [3] to sell it FOR $30.
SET /p Buy_House=
ECHO.
IF "%Buy_House%" == "1" (
	SET Puffer=!Money_%Player%!
	SET /a Money_%Player%=!Money_%Player%! - 50
	IF "!Money_%Player%:~0,1!" == "-" (
		ECHO You have NOT enough money.
		SET /a Money_%Player%=!Money_%Player%! + 50
	) ELSE (
		ECHO ���^> Money decreased from $!Puffer! by $50 to $!Money_%Player%!.
		SET /a BalticAvenue_Houses=!BalticAvenue_Houses! + 1
		IF NOT "!BalticAvenue_Houses!" == "5" (ECHO This street has got !BalticAvenue_Houses! houses now.) ELSE (ECHO This street has got a hotel now.)
	)
	PAUSE
	EXIT /b
)
IF "%Buy_House%" == "2" EXIT /b
IF "%Buy_House%" == "3" (
	ECHO Are you sure you want to sell the street? [Y/N]
	SET /p Sell_Street=
	IF /i "!Sell_Street!" == "n" EXIT /b
	IF /i "!Sell_Street!" == "y" (
		SET Puffer=!Money_%Player%!
		SET /a Money_%Player%=!Money_%Player%! + 30
		ECHO ���^> Money increased from $!Puffer! by $30 to $!Money_%Player%!.
		SET BalticAvenue=
		SET BalticAvenue_Houses=0
	)
)
GOTO :BalticAvenue_Houses
 :BalticAvenue_PayRent
:BalticAvenue_PayRent
IF "!BalticAvenue_Houses!" == "0" SET PayRent=4
IF "!BalticAvenue_Houses!" == "1" SET PayRent=20
IF "!BalticAvenue_Houses!" == "2" SET PayRent=60
IF "!BalticAvenue_Houses!" == "3" SET PayRent=180
IF "!BalticAvenue_Houses!" == "4" SET PayRent=320
IF "!BalticAvenue_Houses!" == "5" SET PayRent=450
ECHO This street is owned by the other player. You have to pay
ECHO $%PayRent% to pass.
SET Puffer=!Money_%Player%!
SET /a Money_%Player%=!Money_%Player%! - %PayRent%
ECHO ���^> Money decreased from $%Puffer% by $%PayRent% to $!Money_%Player%!.
IF "!Money_%Player%:~0,1!" == "-" (
	ECHO.
	PAUSE
	CLS
	ECHO Player %Player% [!Char_%Player%!] is bankrupt.
	ECHO.
	IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
	ECHO Player !Player! wins the game.
	ECHO.
	PAUSE
	EXIT
)
IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
SET Player=!Player!
SET Puffer=!Money_%Player%!
SET /a Money_%Player%=!Money_%Player%! + %PayRent%
ECHO ���^> The other player's money increased from $%Puffer% by $%PayRent% to $!Money_%Player%!.
IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
SET Player=!Player!
ECHO.
PAUSE
EXIT /b




 :IncomeTax
:IncomeTax            5
SET IncomeTax=
CLS
ECHO ������������������������ͻ
ECHO �        INCOME          �
ECHO �                        �
ECHO �         TAX            �
ECHO �                        �
ECHO �                        �
ECHO �   You can pay 10%% of   �
ECHO �                        �
ECHO �    your total money    �
ECHO �                        �
ECHO �  amount or you can pay �
ECHO �                        �
ECHO �$200 to pass this field.�
ECHO �                        �
ECHO �                        �
ECHO �                        �
ECHO �                        �
ECHO �                        �
ECHO �                        �
ECHO �                        �
ECHO �                        �
ECHO ������������������������ͼ
ECHO.
ECHO Current player: %Player% (!Char_%Player%!)
ECHO Total money: !Money_%Player%!
ECHO.
ECHO Press [1] to pay 10%% of your total money or
ECHO press [2] to pay $200.
SET /p IncomeTax=
IF "%IncomeTax%" == "1" (
	SET /a Decrease=!Money_%Player%! / 10
	SET Puffer=!Money_%Player%!
	SET /a Money_%Player%=!Money_%Player%! - !Decrease!
	SET /a Money_Parking=!Money_Parking! + !Decrease!
	ECHO ���^> Money decreased from $!Puffer! by $!Decrease! to $!Money_%Player%!.
	ECHO       ^& $!Decrease! went into Free Parking.
	SET IncomeTax=Done
)
IF "%IncomeTax%" == "2" (
	SET Puffer=!Money_%Player%!
	SET /a Money_%Player%=!Money_%Player%! - 200
	IF "!Money_%Player%:~0,1!" == "-" (
		ECHO You have NOT enough money.
		SET /a Money_%Player%=!Money_%Player%! + 200
	) ELSE (
		SET /a Money_Parking=!Money_Parking! + 200
		ECHO ���^> Money decreased from $!Puffer! by $200 to $!Money_%Player%!.
		ECHO       ^& $200 went into Free Parking.
		SET IncomeTax=Done
	)
)
IF NOT "!IncomeTax!" == "Done" GOTO :IncomeTax
ECHO.
PAUSE
EXIT /b




 :ReadingRailroad
:ReadingRailroad      6
SET Purchase=
SET PayRent=
SET Buy_House=
SET Sell_Street=
SET RailroadAmount=0
CLS
ECHO ������������������������ͻ
ECHO �                        �
ECHO �    Reading Railroad    �
ECHO �                        �
ECHO �       PRICE $200       �
ECHO � ���������������������� �
ECHO �                        �
ECHO �                        �
ECHO � IF 1 owned         $25 �
ECHO �                        �
ECHO � IF 2 owned         $50 �
ECHO �                        �
ECHO � IF 3 owned        $100 �
ECHO �                        �
ECHO � IF 4 owned        $200 �
ECHO �                        �
ECHO �                        �
ECHO � ���������������������� �
ECHO �   Mortgage value $100  �
ECHO � ���������������������� �
ECHO �                        �
ECHO ������������������������ͼ
ECHO.
ECHO Current player: %Player% (!Char_%Player%!)
ECHO Total money: !Money_%Player%!
ECHO.
IF "!ReadingRailroad!" == "%Player%" GOTO :ReadingRailroad_Houses
IF DEFINED ReadingRailroad GOTO :ReadingRailroad_PayRent
ECHO Press [1] to buy this railroad FOR $200 or
ECHO press [2] to leave it.
SET /p Purchase=
IF "%Purchase%" == "1" (
	SET Puffer=!Money_%Player%!
	SET /a Money_%Player%=!Money_%Player%! - 200
	IF "!Money_%Player%:~0,1!" == "-" (
		ECHO You have NOT enough money.
		SET /a Money_%Player%=!Money_%Player%! + 200
	) ELSE (
		ECHO ���^> Money decreased from $!Puffer! by $200 to $!Money_%Player%!.
		SET ReadingRailroad=%Player%
	)
	PAUSE
	EXIT /b
)
IF "%Purchase%" == "2" EXIT /b
GOTO :ReadingRailroad
 :ReadingRailroad_Houses
:ReadingRailroad_Houses
ECHO This railroad is yours.
ECHO.
ECHO Press [2] to leave it or
ECHO press [3] to sell it FOR $100.
SET /p Buy_House=
ECHO.
IF "%Buy_House%" == "2" EXIT /b
IF "%Buy_House%" == "3" (
	ECHO Are you sure you want to sell this railroad? [Y/N]
	SET /p Sell_Street=
	IF /i "!Sell_Street!" == "n" EXIT /b
	IF /i "!Sell_Street!" == "y" (
		SET Puffer=!Money_%Player%!
		SET /a Money_%Player%=!Money_%Player%! + 100
		ECHO ���^> Money increased from $!Puffer! by $100 to $!Money_%Player%!.
		SET ReadingRailroad=
	)
)
GOTO :ReadingRailroad_Houses
 :ReadingRailroad_PayRent
:ReadingRailroad_PayRent
IF "%Player%" == "1" (SET Player=2) ELSE (SET Player=1)
SET Player=!Player!
FOR %%A IN (ReadingRailroad PennsylvaniaRailroad B.O.Railroad ShortLineRailroad) DO IF "!%%A!" == "%Player%" SET /a RailroadAmount=!RailroadAmount! + 1
IF "%Player%" == "1" (SET Player=2) ELSE (SET Player=1)
SET Player=!Player!
ECHO The other player owns !RailroadAmount! of 4 railroads.
IF "!RailroadAmount!" == "1" SET PayRent=25
IF "!RailroadAmount!" == "2" SET PayRent=50
IF "!RailroadAmount!" == "3" SET PayRent=100
IF "!RailroadAmount!" == "4" SET PayRent=200
IF "!RentalTwice!" == "1" SET /a PayRent=%PayRent% * 2
SET Puffer=!Money_%Player%!
SET /a Money_%Player%=!Money_%Player%! - %PayRent%
ECHO ���^> Money decreased from $%Puffer% by $%PayRent% to $!Money_%Player%!.
IF "!Money_%Player%:~0,1!" == "-" (
	ECHO.
	PAUSE
	CLS
	ECHO Player %Player% [!Char_%Player%!] is bankrupt.
	ECHO.
	IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
	ECHO Player !Player! wins the game.
	ECHO.
	PAUSE
	EXIT
)
IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
SET Player=!Player!
SET Puffer=!Money_%Player%!
SET /a Money_%Player%=!Money_%Player%! + %PayRent%
ECHO ���^> The other player's money increased from $%Puffer% by $%PayRent% to $!Money_%Player%!.
IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
SET Player=!Player!
ECHO.
PAUSE
EXIT /b




 :OrientalAvenue
:OrientalAvenue       7
SET Purchase=
SET Buy_House=
SET PayRent=
SET Sell_Street=
IF NOT DEFINED OrientalAvenue_Houses SET OrientalAvenue_Houses=0
CLS
ECHO ������������������������ͻ
ECHO �                        �
ECHO �    Oriental Avenue     �
ECHO �                        �
ECHO �   PRICE $100  RENT $6  �
ECHO � ���������������������� �
ECHO � With 1 House       $30 �
ECHO �                        �
ECHO � With 2 Houses      $90 �
ECHO �                        �
ECHO � With 3 Houses     $270 �
ECHO �                        �
ECHO � With 4 Houses     $400 �
ECHO �                        �
ECHO � With HOTEL        $550 �
ECHO � ���������������������� �
ECHO �  One house costs $50   �
ECHO �                        �
ECHO �   Mortgage value $50   �
ECHO � ���������������������� �
ECHO �                        �
ECHO ������������������������ͼ
ECHO.
ECHO Current player: %Player% (!Char_%Player%!)
ECHO Total money: !Money_%Player%!
ECHO.
IF "!OrientalAvenue!" == "%Player%" GOTO :OrientalAvenue_Houses
IF DEFINED OrientalAvenue GOTO :OrientalAvenue_PayRent
ECHO Press [1] to buy this street FOR $100 or
ECHO press [2] to leave it.
SET /p Purchase=
IF "%Purchase%" == "1" (
	SET Puffer=!Money_%Player%!
	SET /a Money_%Player%=!Money_%Player%! - 100
	IF "!Money_%Player%:~0,1!" == "-" (
		ECHO You have NOT enough money.
		SET /a Money_%Player%=!Money_%Player%! + 100
	) ELSE (
		ECHO ���^> Money decreased from $!Puffer! by $100 to $!Money_%Player%!.
		SET OrientalAvenue=%Player%
	)
	PAUSE
	EXIT /b
)
IF "%Purchase%" == "2" EXIT /b
GOTO :OrientalAvenue
 :OrientalAvenue_Houses
:OrientalAvenue_Houses
IF "!OrientalAvenue_Houses!" == "5" (
	ECHO This street has got a hotel.
	PAUSE
	EXIT /b
) ELSE (
	ECHO This street has got !OrientalAvenue_Houses! houses, yet.
	ECHO.
)
ECHO Press [1] to buy a new house or
ECHO press [2] to leave it or
ECHO press [3] to sell it FOR $50.
SET /p Buy_House=
ECHO.
IF "%Buy_House%" == "1" (
	SET Puffer=!Money_%Player%!
	SET /a Money_%Player%=!Money_%Player%! - 50
	IF "!Money_%Player%:~0,1!" == "-" (
		ECHO You have NOT enough money.
		SET /a Money_%Player%=!Money_%Player%! + 50
	) ELSE (
		ECHO ���^> Money decreased from $!Puffer! by $50 to $!Money_%Player%!.
		SET /a OrientalAvenue_Houses=!OrientalAvenue_Houses! + 1
		IF NOT "!OrientalAvenue_Houses!" == "5" (ECHO This street has got !OrientalAvenue_Houses! houses now.) ELSE (ECHO This street has got a hotel now.)
	)
	PAUSE
	EXIT /b
)
IF "%Buy_House%" == "2" EXIT /b
IF "%Buy_House%" == "3" (
	ECHO Are you sure you want to sell the street? [Y/N]
	SET /p Sell_Street=
	IF /i "!Sell_Street!" == "n" EXIT /b
	IF /i "!Sell_Street!" == "y" (
		SET Puffer=!Money_%Player%!
		SET /a Money_%Player%=!Money_%Player%! + 50
		ECHO ���^> Money increased from $!Puffer! by $50 to $!Money_%Player%!.
		SET OrientalAvenue=
		SET OrientalAvenue_Houses=0
	)
)
GOTO :OrientalAvenue_Houses
 :OrientalAvenue_PayRent
:OrientalAvenue_PayRent
IF "!OrientalAvenue_Houses!" == "0" SET PayRent=6
IF "!OrientalAvenue_Houses!" == "1" SET PayRent=30
IF "!OrientalAvenue_Houses!" == "2" SET PayRent=90
IF "!OrientalAvenue_Houses!" == "3" SET PayRent=270
IF "!OrientalAvenue_Houses!" == "4" SET PayRent=400
IF "!OrientalAvenue_Houses!" == "5" SET PayRent=550
ECHO This street is owned by the other player. You have to pay
ECHO $%PayRent% to pass.
SET Puffer=!Money_%Player%!
SET /a Money_%Player%=!Money_%Player%! - %PayRent%
ECHO ���^> Money decreased from $%Puffer% by $%PayRent% to $!Money_%Player%!.
IF "!Money_%Player%:~0,1!" == "-" (
	ECHO.
	PAUSE
	CLS
	ECHO Player %Player% [!Char_%Player%!] is bankrupt.
	ECHO.
	IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
	ECHO Player !Player! wins the game.
	ECHO.
	PAUSE
	EXIT
)
IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
SET Player=!Player!
SET Puffer=!Money_%Player%!
SET /a Money_%Player%=!Money_%Player%! + %PayRent%
ECHO ���^> The other player's money increased from $%Puffer% by $%PayRent% to $!Money_%Player%!.
IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
SET Player=!Player!
ECHO.
PAUSE
EXIT /b




 :Chance
:Chance               8/23/37
CLS
ECHO ������������������������ͻ
ECHO �         Chance         �
ECHO �                        �
ECHO �        KKKKKKK         �
ECHO �       KKKj  KKK        �
ECHO �      KKK     KKK       �
ECHO �      KKK     KKK       �
ECHO �       KK     KKK       �
ECHO �            KKK         �
ECHO �           KKK          �
ECHO �          KKK           �
ECHO �         KKK            �
ECHO �        KKK             �
ECHO �        KKK             �
ECHO �         KKK            �
ECHO �                        �
ECHO �         KKK            �
ECHO �         KKK            �
ECHO �                        �
ECHO � Draw a card.           �
ECHO �                        �
ECHO ������������������������ͼ
ECHO.
ECHO Current player: %Player% (!Char_%Player%!)
ECHO Total money: !Money_%Player%!
ECHO.
 :ChooseChanceCard
:ChooseChanceCard
SET /a ChooseChanceCard=%random:~0,2% - 14
IF "%ChooseChanceCard%" == "0" GOTO :ChooseChanceCard
IF "%ChooseChanceCard:~1,1%" == "-" GOTO :ChooseChanceCard
IF NOT "%ChooseChanceCard:~1,1%" == "" IF "%ChooseChanceCard:~0,1%" GTR "1" (GOTO :ChooseChanceCard) ELSE (IF "%ChooseChanceCard:~1,1%" GTR "5" GOTO :ChooseChanceCard)
IF "!FreeOutOfJail_Chance!" == "1" IF "%ChooseChanceCard%" == "12" GOTO :ChooseChanceCard
IF "%ChooseChanceCard%" == "1" SET Var=%%A
IF "%ChooseChanceCard%" == "2" SET Var=%%B
IF "%ChooseChanceCard%" == "3" SET Var=%%C
IF "%ChooseChanceCard%" == "4" SET Var=%%D
IF "%ChooseChanceCard%" == "5" SET Var=%%E
IF "%ChooseChanceCard%" == "6" SET Var=%%F
IF "%ChooseChanceCard%" == "7" SET Var=%%G
IF "%ChooseChanceCard%" == "8" SET Var=%%H
IF "%ChooseChanceCard%" == "9" SET Var=%%I
IF "%ChooseChanceCard%" == "10" SET Var=%%J
IF "%ChooseChanceCard%" == "11" SET Var=%%K
IF "%ChooseChanceCard%" == "12" SET Var=%%L
IF "%ChooseChanceCard%" == "13" SET Var=%%M
IF "%ChooseChanceCard%" == "14" SET Var=%%N
IF "%ChooseChanceCard%" == "15" SET Var=%%O
ECHO ����������������Ŀ
ECHO �  Chance Card   �
ECHO �                �
FOR /F "tokens=1-15 delims=/" %%A IN ("� Your building  �/� Bank pays you  �/�    Go back     �/�  Make general  �/� Take a walk on �/�Advance token to�/� Advance to the �/�   Advance to   �/�  Pay poor tax  �/� Advance to Go. �/� Advance to St. �/�Get out of Jail �/� Take a ride on �/� Go directly to �/� You have been  �/") DO ECHO %Var%
FOR /F "tokens=1-15 delims=/" %%A IN ("�    and loan    �/�  dividend of   �/�   3 spaces.    �/� repairs on all �/� the Boardwalk. �/�nearest utility.�/�    nearest     �/�Illinois Avenue.�/�     of $15.    �/�                �/� Charles Place. �/�     free.      �/�  the Reading   �/�  Jail, DO NOT  �/�elected Chairman�/") DO ECHO %Var%
FOR /F "tokens=1-15 delims=/" %%A IN ("�    matures.    �/�     $50.       �/�                �/� your property. �/� Advance token  �/�IF unowned, you �/�Railroad and pay�/�                �/�                �/�                �/�IF you pass Go, �/�This card may be�/�    Railroad.   �/�pass Go, DO NOT �/�  of the board. �/") DO ECHO %Var%
FOR /F "tokens=1-15 delims=/" %%A IN ("�  Collect $150. �/�                �/�                �/�Pay $25 FOR each�/�  to Boardwalk. �/�may buy it from �/�the owner twice �/�IF you pass Go, �/�                �/�                �/� collect $200.  �/�   kept until   �/�IF you pass Go, �/�  collect $200. �/�Pay each player �/") DO ECHO %Var%
FOR /F "tokens=1-15 delims=/" %%A IN ("�                �/�                �/�                �/� house and $100 �/�                �/�  the Bank. IF  �/� the rental. IF �/� collect $200.  �/�                �/�                �/�                �/�needed, or sold.�/� collect $200.  �/�                �/�      $50.      �/") DO ECHO %Var%
FOR /F "tokens=1-15 delims=/" %%A IN ("�                �/�                �/�                �/� FOR each hotel.�/�                �/�  owned, throw  �/�unowned, you may�/�                �/�                �/�                �/�                �/�                �/�                �/�                �/�                �/") DO ECHO %Var%
IF "%ChooseChanceCard%" == "6" (ECHO �dice and pay the�) ELSE (IF "%ChooseChanceCard%" == "7" (ECHO �buy it from bank�) ELSE (ECHO �                �))
IF "%ChooseChanceCard%" == "6" (ECHO � owner a total  �) ELSE (ECHO �                �)
IF "%ChooseChanceCard%" == "6" ECHO � ten times the  �
IF "%ChooseChanceCard%" == "6" ECHO � amount thrown. �
ECHO ������������������
IF "%ChooseChanceCard%" == "1" (
	SET Puffer=!Money_%Player%!
	SET /a Money_%Player%=!Money_%Player%! + 150
	ECHO ���^> Money increased from $!Puffer! by $150 to $!Money_%Player%!.
)
IF "%ChooseChanceCard%" == "2" (
	SET Puffer=!Money_%Player%!
	SET /a Money_%Player%=!Money_%Player%! + 50
	ECHO ���^> Money increased from $!Puffer! by $50 to $!Money_%Player%!.
)
IF "%ChooseChanceCard%" == "3" (
	SET Field!Player%Player%Position!_%Player%=
	SET /a Player%Player%Position=!Player%Player%Position! - 3
	SET Field!Player%Player%Position!_%Player%=!Char_%Player%!
	PAUSE
	CALL :SetFields
	CALL :FIELD Chance_Walked
)
IF "%ChooseChanceCard%" == "4" (
	SET Houses_%Player%=0
	SET Hotels_%Player%=0
	SET PayForHouses=0
	SET PayForHotels=0
	SET PayForHousesAndHotels=0
	FOR %%A IN (MediterraneanAvenue BalticAvenue ReadingRailroad OrientalAvenue VermontAvenue ConnecticutAvenue St.CharlesPlace ElectricCompany StatesAvenue VirginiaAvenue PennsylvaniaRailroad St.JamesPlace TennesseeAvenue NewYorkAvenue KentuckyAvenue IndianaAvenue IllinoisAvenue B.O.Railroad AtlanticAvenue VeninorAvenue WaterWorks MarvinGardens PacIFicAvenue NorthCarolinaAvenue PennsylvaniaAvenue ShortLine ParkPlace Boardwalk) DO (
		IF "!%%A!" == "%Player%" (
			IF NOT "!%%A_Houses!" == "5" (SET /a Houses_%Player%=!Houses_%Player%! + !%%A_Houses!) ELSE (SET /a Hotels_%Player%=!Hotels_%Player%! + 1)
		)
	)
	SET /a PayForHouses=!Houses_%Player%! * 25
	SET /a PayForHotels=!Hotels_%Player%! * 100
	ECHO You have to pay $!PayForHouses! FOR !Houses_%Player%! houses and
	ECHO you have to pay $!PayForHotels! FOR !Hotels_%Player%! hotels.
	ECHO.
	SET /a PayForHousesAndHotels=!PayForHouses! + !PayForHotels!
	SET Puffer=!Money_%Player%!
	SET /a Money_%Player%=!Money_%Player%! - !PayForHousesAndHotels!
	SET /a Money_Parking=!Money_Parking! + !PayForHousesAndHotels!
	ECHO ���^> Money decreased from $!Puffer! by $!PayForHousesAndHotels! to $!Money_%Player%!.
	ECHO       ^& $!PayForHousesAndHotels! went into Free Parking.
	IF "!Money_%Player%:~0,1!" == "-" (
		ECHO.
		PAUSE
		CLS
		ECHO Player %Player% [!Char_%Player%!] is bankrupt.
		ECHO.
		IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
		ECHO Player !Player! wins the game.
		ECHO.
		PAUSE
		EXIT
	)
)
IF "%ChooseChanceCard%" == "5" (
	SET Field!Player%Player%Position!_%Player%=
	SET Player%Player%Position=40
	SET Field40_%Player%=!Char_%Player%!
	PAUSE
	CALL :SetFields
	CALL :FIELD Chance_Walked
)
IF "%ChooseChanceCard%" == "6" (
	SET /a DiceOne=%random% %% 6 + 1
	SET /a DiceTwo=%random% %% 6 + 1
	SET /a Dice=!DiceOne! + !DiceTwo!
	PAUSE
	IF "!Player%Player%Position!" == "8" (
		SET Field8_%Player%=
		SET Field12_%Player%=!Char_%Player%!
		SET Player%Player%Position=12
		CALL :ElectricCompany CameByChance
	) ELSE (
		SET Field!Player%Player%Position!_%Player%=
		SET Field29_%Player%=!Char_%Player%!
		SET Player%Player%Position=29
		CALL :SetFields
		CALL :WaterWorks CameByChance
	)
)
IF "%ChooseChanceCard%" == "7" (
	IF "!Player%Player%Position:~1,1!" == "" (
		SET Field!Player%Player%Position!_%Player%=
		SET Field6_%Player%=!Char_%Player%!
		SET Player%Player%Position=6
	) ELSE (
		SET Field!Player%Player%Position!_%Player%=
		SET Field!Player%Player%Position:~0,1!6_%Player%=!Char_%Player%!
		SET Player%Player%Position=!Player%Player%Position:~0,1!6
	)
	SET RentalTwice=1
	PAUSE
	CALL :SetFields
	CALL :FIELD Chance_Walked
)
IF "%ChooseChanceCard%" == "8" (
	IF "!Player%Player%Position!" == "37" (
		SET Puffer=!Money_%Player%!
		SET /a Money_%Player%=!Money_%Player%! + 200
		ECHO ���^> Money increased from $!Puffer! by $200 to $!Money_%Player%! by passing Go.
	)
	SET Field!Player%Player%Position!_%Player%=
	SET Player%Player%Position=25
	SET Field25_%Player%=!Char_%Player%!
	PAUSE
	CALL :SetFields
	CALL :FIELD Chance_Walked
)
IF "%ChooseChanceCard%" == "9" (
	SET Puffer=!Money_%Player%!
	SET /a Money_%Player%=!Money_%Player%! - 15
	SET /a Money_Parking=!Money_Parking! + 15
	ECHO ���^> Money decreased from $!Puffer! by $15 to $!Money_%Player%!.
	ECHO       ^& $15 went into Free Parking.
	IF "!Money_%Player%:~0,1!" == "-" (
		ECHO.
		PAUSE
		CLS
		ECHO Player %Player% [!Char_%Player%!] is bankrupt.
		ECHO.
		IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
		ECHO Player !Player! wins the game.
		ECHO.
		PAUSE
		EXIT
	)
)
IF "%ChooseChanceCard%" == "10" (
	SET Field!Player%Player%Position!_%Player%=
	SET Player%Player%Position=1
	SET Field1_%Player%=!Char_%Player%!
	PAUSE
	CALL :SetFields
	CALL :FIELD Chance_Walked
)
IF "%ChooseChanceCard%" == "11" (
	IF NOT "!Player%Player%Position!" == "8" (
		SET Puffer=!Money_%Player%!
		SET /a Money_%Player%=!Money_%Player%! + 200
		ECHO ���^> Money increased from $!Puffer! by $200 to $!Money_%Player%! by passing Go.
	)
	SET Field!Player%Player%Position!_%Player%=
	SET Player%Player%Position=12
	SET Field12_%Player%=!Char_%Player%!
	PAUSE
	CALL :SetFields
	CALL :FIELD Chance_Walked
)
IF "%ChooseChanceCard%" == "12" (
	SET FreeOutOfJail_%Player%=1
	SET FreeOutOfJail_Chance=1
)
IF "%ChooseChanceCard%" == "13" (
	SET Puffer=!Money_%Player%!
	SET /a Money_%Player%=!Money_%Player%! + 200
	ECHO ���^> Money increased from $!Puffer! by $200 to $!Money_%Player%! by passing Go.
	SET Field!Player%Player%Position!_%Player%=
	SET Player%Player%Position=6
	SET Field6_%Player%=!Char_%Player%!
	PAUSE
	CALL :SetFields
	CALL :FIELD Chance_Walked
)
IF "%ChooseChanceCard%" == "14" (
	PAUSE
	CALL :SendToJail
)
IF "%ChooseChanceCard%" == "15" (
	SET Puffer=!Money_%Player%!
	SET /a Money_%Player%=!Money_%Player%! - 50
	ECHO ���^> Money decreased from $!Puffer! by $50 to $!Money_%Player%!.
	IF "!Money_%Player%:~0,1!" == "-" (
		ECHO.
		PAUSE
		CLS
		ECHO Player %Player% [!Char_%Player%!] is bankrupt.
		ECHO.
		IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
		ECHO Player !Player! wins the game.
		ECHO.
		PAUSE
		EXIT
	)
)
IF "%Player%" == "1" (SET Player=2) ELSE (SET Player=1)
SET Player=!Player!
IF "%ChooseChanceCard%" == "15" (
	SET Puffer=!Money_%Player%!
	SET /a Money_%Player%=!Money_%Player%! + 50
	ECHO ���^> The other player's money increased from $!Puffer! by $50 to $!Money_%Player%!.
)
IF "%Player%" == "1" (SET Player=2) ELSE (SET Player=1)
SET Player=!Player!
PAUSE
GOTO :After_STARTComparingPositions




 :VermontAvenue
:VermontAvenue        9
SET Purchase=
SET Buy_House=
SET PayRent=
SET Sell_Street=
IF NOT DEFINED VermontAvenue_Houses SET VermontAvenue_Houses=0
CLS
ECHO ������������������������ͻ
ECHO �                        �
ECHO �     Vermont Avenue     �
ECHO �                        �
ECHO �   PRICE $100  RENT $6  �
ECHO � ���������������������� �
ECHO � With 1 House       $30 �
ECHO �                        �
ECHO � With 2 Houses      $90 �
ECHO �                        �
ECHO � With 3 Houses     $270 �
ECHO �                        �
ECHO � With 4 Houses     $400 �
ECHO �                        �
ECHO � With HOTEL        $550 �
ECHO � ���������������������� �
ECHO �  One house costs $50   �
ECHO �                        �
ECHO �   Mortgage value $50   �
ECHO � ���������������������� �
ECHO �                        �
ECHO ������������������������ͼ
ECHO.
ECHO Current player: %Player% (!Char_%Player%!)
ECHO Total money: !Money_%Player%!
ECHO.
IF "!VermontAvenue!" == "%Player%" GOTO :VermontAvenue_Houses
IF DEFINED VermontAvenue GOTO :VermontAvenue_PayRent
ECHO Press [1] to buy this street FOR $100 or
ECHO press [2] to leave it.
SET /p Purchase=
IF "%Purchase%" == "1" (
	SET Puffer=!Money_%Player%!
	SET /a Money_%Player%=!Money_%Player%! - 100
	IF "!Money_%Player%:~0,1!" == "-" (
		ECHO You have NOT enough money.
		SET /a Money_%Player%=!Money_%Player%! + 100
	) ELSE (
		ECHO ���^> Money decreased from $!Puffer! by $100 to $!Money_%Player%!.
		SET VermontAvenue=%Player%
	)
	PAUSE
	EXIT /b
)
IF "%Purchase%" == "2" EXIT /b
GOTO :VermontAvenue
 :VermontAvenue_Houses
:VermontAvenue_Houses
IF "!VermontAvenue_Houses!" == "5" (
	ECHO This street has got a hotel.
	PAUSE
	EXIT /b
) ELSE (
	ECHO This street has got !VermontAvenue_Houses! houses, yet.
	ECHO.
)
ECHO Press [1] to buy a new house or
ECHO press [2] to leave it or
ECHO press [3] to sell it FOR $50.
SET /p Buy_House=
ECHO.
IF "%Buy_House%" == "1" (
	SET Puffer=!Money_%Player%!
	SET /a Money_%Player%=!Money_%Player%! - 50
	IF "!Money_%Player%:~0,1!" == "-" (
		ECHO You have NOT enough money.
		SET /a Money_%Player%=!Money_%Player%! + 50
	) ELSE (
		ECHO ���^> Money decreased from $!Puffer! by $50 to $!Money_%Player%!.
		SET /a VermontAvenue_Houses=!VermontAvenue_Houses! + 1
		IF NOT "!VermontAvenue_Houses!" == "5" (ECHO This street has got !VermontAvenue_Houses! houses now.) ELSE (ECHO This street has got a hotel now.)
	)
	PAUSE
	EXIT /b
)
IF "%Buy_House%" == "2" EXIT /b
IF "%Buy_House%" == "3" (
	ECHO Are you sure you want to sell the street? [Y/N]
	SET /p Sell_Street=
	IF /i "!Sell_Street!" == "n" EXIT /b
	IF /i "!Sell_Street!" == "y" (
		SET Puffer=!Money_%Player%!
		SET /a Money_%Player%=!Money_%Player%! + 50
		ECHO ���^> Money increased from $!Puffer! by $50 to $!Money_%Player%!.
		SET VermontAvenue=
		SET VermontAvenue_Houses=0
	)
)
GOTO :VermontAvenue_Houses
 :VermontAvenue_PayRent
:VermontAvenue_PayRent
IF "!VermontAvenue_Houses!" == "0" SET PayRent=6
IF "!VermontAvenue_Houses!" == "1" SET PayRent=30
IF "!VermontAvenue_Houses!" == "2" SET PayRent=90
IF "!VermontAvenue_Houses!" == "3" SET PayRent=270
IF "!VermontAvenue_Houses!" == "4" SET PayRent=400
IF "!VermontAvenue_Houses!" == "5" SET PayRent=550
ECHO This street is owned by the other player. You have to pay
ECHO $%PayRent% to pass.
SET Puffer=!Money_%Player%!
SET /a Money_%Player%=!Money_%Player%! - %PayRent%
ECHO ���^> Money decreased from $%Puffer% by $%PayRent% to $!Money_%Player%!.
IF "!Money_%Player%:~0,1!" == "-" (
	ECHO.
	PAUSE
	CLS
	ECHO Player %Player% [!Char_%Player%!] is bankrupt.
	ECHO.
	IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
	ECHO Player !Player! wins the game.
	ECHO.
	PAUSE
	EXIT
)
IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
SET Player=!Player!
SET Puffer=!Money_%Player%!
SET /a Money_%Player%=!Money_%Player%! + %PayRent%
ECHO ���^> The other player's money increased from $%Puffer% by $%PayRent% to $!Money_%Player%!.
IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
SET Player=!Player!
ECHO.
PAUSE
EXIT /b




 :ConnecticutAvenue
:ConnecticutAvenue    10
SET Purchase=
SET Buy_House=
SET PayRent=
SET Sell_Street=
IF NOT DEFINED ConnecticutAvenue_Houses SET ConnecticutAvenue_Houses=0
CLS
ECHO ������������������������ͻ
ECHO �                        �
ECHO �   Connecticut Avenue   �
ECHO �                        �
ECHO �   PRICE $120  RENT $8  �
ECHO � ���������������������� �
ECHO � With 1 House       $40 �
ECHO �                        �
ECHO � With 2 Houses     $100 �
ECHO �                        �
ECHO � With 3 Houses     $300 �
ECHO �                        �
ECHO � With 4 Houses     $450 �
ECHO �                        �
ECHO � With HOTEL        $600 �
ECHO � ���������������������� �
ECHO �  One house costs $50   �
ECHO �                        �
ECHO �   Mortgage value $60   �
ECHO � ���������������������� �
ECHO �                        �
ECHO ������������������������ͼ
ECHO.
ECHO Current player: %Player% (!Char_%Player%!)
ECHO Total money: !Money_%Player%!
ECHO.
IF "!ConnecticutAvenue!" == "%Player%" GOTO :ConnecticutAvenue_Houses
IF DEFINED ConnecticutAvenue GOTO :ConnecticutAvenue_PayRent
ECHO Press [1] to buy this street FOR $120 or
ECHO press [2] to leave it.
SET /p Purchase=
IF "%Purchase%" == "1" (
	SET Puffer=!Money_%Player%!
	SET /a Money_%Player%=!Money_%Player%! - 120
	IF "!Money_%Player%:~0,1!" == "-" (
		ECHO You have NOT enough money.
		SET /a Money_%Player%=!Money_%Player%! + 120
	) ELSE (
		ECHO ���^> Money decreased from $!Puffer! by $120 to $!Money_%Player%!.
		SET ConnecticutAvenue=%Player%
	)
	PAUSE
	EXIT /b
)
IF "%Purchase%" == "2" EXIT /b
GOTO :ConnecticutAvenue
 :ConnecticutAvenue_Houses
:ConnecticutAvenue_Houses
IF "!ConnecticutAvenue_Houses!" == "5" (
	ECHO This street has got a hotel.
	PAUSE
	EXIT /b
) ELSE (
	ECHO This street has got !ConnecticutAvenue_Houses! houses, yet.
	ECHO.
)
ECHO Press [1] to buy a new house or
ECHO press [2] to leave it or
ECHO press [3] to sell it FOR $60.
SET /p Buy_House=
ECHO.
IF "%Buy_House%" == "1" (
	SET Puffer=!Money_%Player%!
	SET /a Money_%Player%=!Money_%Player%! - 50
	IF "!Money_%Player%:~0,1!" == "-" (
		ECHO You have NOT enough money.
		SET /a Money_%Player%=!Money_%Player%! + 50
	) ELSE (
		ECHO ���^> Money decreased from $!Puffer! by $50 to $!Money_%Player%!.
		SET /a ConnecticutAvenue_Houses=!ConnecticutAvenue_Houses! + 1
		IF NOT "!ConnecticutAvenue_Houses!" == "5" (ECHO This street has got !ConnecticutAvenue_Houses! houses now.) ELSE (ECHO This street has got a hotel now.)
	)
	PAUSE
	EXIT /b
)
IF "%Buy_House%" == "2" EXIT /b
IF "%Buy_House%" == "3" (
	ECHO Are you sure you want to sell the street? [Y/N]
	SET /p Sell_Street=
	IF /i "!Sell_Street!" == "n" EXIT /b
	IF /i "!Sell_Street!" == "y" (
		SET Puffer=!Money_%Player%!
		SET /a Money_%Player%=!Money_%Player%! + 60
		ECHO ���^> Money increased from $!Puffer! by $60 to $!Money_%Player%!.
		SET ConnecticutAvenue=
		SET ConnecticutAvenue_Houses=0
	)
)
GOTO :ConnecticutAvenue_Houses
 :ConnecticutAvenue_PayRent
:ConnecticutAvenue_PayRent
IF "!ConnecticutAvenue_Houses!" == "0" SET PayRent=8
IF "!ConnecticutAvenue_Houses!" == "1" SET PayRent=40
IF "!ConnecticutAvenue_Houses!" == "2" SET PayRent=100
IF "!ConnecticutAvenue_Houses!" == "3" SET PayRent=300
IF "!ConnecticutAvenue_Houses!" == "4" SET PayRent=450
IF "!ConnecticutAvenue_Houses!" == "5" SET PayRent=600
ECHO This street is owned by the other player. You have to pay
ECHO $%PayRent% to pass.
SET Puffer=!Money_%Player%!
SET /a Money_%Player%=!Money_%Player%! - %PayRent%
ECHO ���^> Money decreased from $%Puffer% by $%PayRent% to $!Money_%Player%!.
IF "!Money_%Player%:~0,1!" == "-" (
	ECHO.
	PAUSE
	CLS
	ECHO Player %Player% [!Char_%Player%!] is bankrupt.
	ECHO.
	IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
	ECHO Player !Player! wins the game.
	ECHO.
	PAUSE
	EXIT
)
IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
SET Player=!Player!
SET Puffer=!Money_%Player%!
SET /a Money_%Player%=!Money_%Player%! + %PayRent%
ECHO ���^> The other player's money increased from $%Puffer% by $%PayRent% to $!Money_%Player%!.
IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
SET Player=!Player!
ECHO.
PAUSE
EXIT /b




 :AtJail
:AtJail               11
CLS
ECHO ������������������������������������������������ͻ
ECHO �       �                                        �
ECHO �       �                    ���������������ͻ   �
ECHO �       �                    �   �   �   �   �   �
ECHO �    �  �                    �   �   �   �   �   �
ECHO �    ����                    �   �   �   �   �   �
ECHO �                            ���������������ͼ   �
ECHO �     ��                                         �
ECHO �    �  �                                        �
ECHO �    ����                                        �
ECHO �    �  �                                        �
IF "%Player%" == "1" IF "!Field11_J_2!" == "%Char_2%" (ECHO �           There is player 2 IN jail now.       �) ELSE (ECHO �                                                �)
IF "%Player%" == "2" IF "!Field11_J_1!" == "%Char_1%" (ECHO �           There is player 1 IN jail now.       �) ELSE (ECHO �                                                �)
ECHO �     ��                                         �
ECHO �     ��                                         �
ECHO �     ��                                         �
ECHO �     ��                                         �
IF NOT "!Field11_J_1!" == "%Char_1%" (IF NOT "!Field11_J_2!" == "%Char_2%" (ECHO �           There is noone IN jail at the moment.�) ELSE (ECHO �                                                �)) ELSE (ECHO �                                                �)
ECHO �    �                                           �
ECHO �    �                                           �
ECHO �    �                                           �
ECHO �    ����                                        �
ECHO ������������������������������������������������ͼ
ECHO.
ECHO Current player: %Player% (!Char_%Player%!)
ECHO Total money: !Money_%Player%!
PAUSE >NUL
EXIT /b





 :InJail
:InJail               11J
CLS
SET InJail=
SET Player%Player%Position=11
IF "!Escape_%Player%!" == "no" SET Escape_%Player%=4
ECHO ������������������������������������������������ͻ
ECHO �                                                �
ECHO �  �����������������������������������������ͻ   �
ECHO �  �      �      �      �      �      �      �   �
ECHO �  �      �      �      �      �      �      �   �
ECHO �  �      �      �      �      �      �      �   �
ECHO �  �      �      �      �      �      �      �   �
ECHO �  �      �      �      �      �      �      �   �
ECHO �  �      �      �      �      �      �      �   �
ECHO �  �      �      �      �      �      �      �   �
ECHO �  �      �      �      �      �      �      �   �
ECHO �  �      �      �      �      �      �      �   �
ECHO �  �      �      �      �      �      �      �   �
ECHO �  �      �      �      �      �      �      �   �
ECHO �  �      �      �      �      �      �      �   �
ECHO �  �      �      �      �      �      �      �   �
ECHO �  �      �      �      �      �      �      �   �
ECHO �  �      �      �      �      �      �      �   �
ECHO �  �����������������������������������������ͼ   �
ECHO �                                                �
ECHO ������������������������������������������������ͼ
ECHO.
ECHO Current player: %Player% (!Char_%Player%!)
ECHO Total money: !Money_%Player%!
ECHO.
SET /a Escape_%Player%=!Escape_%Player%! - 1
IF "!Escape_%Player%!" == "0" SET Escape_%Player%=no
ECHO You are IN jail. You can pay $50 to get out of here immediately or
ECHO you can escape IN rolling a doublet (!Escape_%Player%! tries left).
ECHO.
IF "!Escape_%Player%!" == "no" (
	SET Field11_J_%Player%=
	SET Field11_%Player%=!Char_%Player%!
	ECHO You now have to pay $50.
	PAUSE
	SET Puffer=!Money_%Player%!
	SET /a Money_%Player%=!Money_%Player%! - 50
	ECHO.
	ECHO ���^> Money decreased from $!Puffer! by $50 to $!Money_%Player%!.
	ECHO.
	IF "!Money_%Player%:~0,1!" == "-" (
		ECHO.
		PAUSE
		CLS
		ECHO Player %Player% [!Char_%Player%!] is bankrupt.
		ECHO.
		IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
		ECHO Player !Player! wins the game.
		ECHO.
		PAUSE
		EXIT
	)
	IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
	SET OutOfJail=1
	PAUSE
	EXIT /b
)
ECHO Press [1] to pay $50 or press anything ELSE to try to escape.
IF "!FreeOutOfJail_%Player%!" == "1" ECHO Press [2] to use your card to get out of jail FOR free.
SET /p InJail=-^>
IF "%InJail%" == "1" (
	SET Escape_%Player%=4
	SET Field11_J_%Player%=
	SET Field11_%Player%=!Char_%Player%!
	SET Puffer=!Money_%Player%!
	SET /a Money_%Player%=!Money_%Player%! - 50
	ECHO.
	IF "!Money_%Player%:~0,1!" == "-" (
		ECHO You have NOT enough money.
		SET /a Money_%Player%=!Money_%Player%! + 50
		ECHO.
		PAUSE
	) ELSE (
	ECHO ���^> Money decreased from $!Puffer! by $50 to $!Money_%Player%!.
	ECHO.
	IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
	SET OutOfJail=1
	PAUSE
	EXIT /b
	)
)
IF "!FreeOutOfJail_%Player%!" == "1" (
	IF "%InJail%" == "2" (
		ECHO Card used.
		SET Escape_%Player%=4
		SET Field11_J_%Player%=
		SET Field11_%Player%=!Char_%Player%!
		SET FreeOutOfJail_%Player%=0
		IF "!FreeOutOfJail_Chance!" == "!FreeOutOfJail_%Player%!" (
			SET FreeOutOfJail_Chance=0
		) ELSE (
			SET FreeOutOfJail_Community=0
		)
		SET FreeOutOfJail_%Player%=0
		PAUSE
		EXIT /b
	)
)
ECHO.
ECHO Trying to roll a doublet...

SET /a DiceOne=%random% %% 6 + 1
SET /a DiceTwo=%random% %% 6 + 1

SET /a Dice=%DiceOne% + %DiceTwo%
ECHO Dice one (%DiceOne%) + dice two (%DiceTwo%) = %Dice%

IF "%DiceOne%" == "%DiceTwo%" (
	SET Field11_J_%Player%=
	SET /a Player%Player%Position=!Player%Player%Position! + %Dice%
	SET Field!Player%Player%Position!_%Player%=!Char_%Player%!
	SET Escape_%Player%=4
	ECHO You successfully rolled a doublet.
	PING localhost -n 3 >NUL
	SET DiceAmount=1
) ELSE (
	ECHO You missed.
	PING localhost -n 3 >NUL
)
GOTO :RollDone





 :St.CharlesPlace
:St.CharlesPlace      12
SET Purchase=
SET Buy_House=
SET PayRent=
SET Sell_Street=
IF NOT DEFINED St.CharlesPlace_Houses SET St.CharlesPlace_Houses=0
CLS
ECHO ������������������������ͻ
ECHO �                        �
ECHO �   St. Charles Place    �
ECHO �                        �
ECHO �  PRICE $140  RENT $10  �
ECHO � ���������������������� �
ECHO � With 1 House       $50 �
ECHO �                        �
ECHO � With 2 Houses     $150 �
ECHO �                        �
ECHO � With 3 Houses     $450 �
ECHO �                        �
ECHO � With 4 Houses     $625 �
ECHO �                        �
ECHO � With HOTEL        $750 �
ECHO � ���������������������� �
ECHO �  One house costs $100  �
ECHO �                        �
ECHO �   Mortgage value $70   �
ECHO � ���������������������� �
ECHO �                        �
ECHO ������������������������ͼ
ECHO.
ECHO Current player: %Player% (!Char_%Player%!)
ECHO Total money: !Money_%Player%!
ECHO.
IF "!St.CharlesPlace!" == "%Player%" GOTO :St.CharlesPlace_Houses
IF DEFINED St.CharlesPlace GOTO :St.CharlesPlace_PayRent
ECHO Press [1] to buy this street FOR $140 or
ECHO press [2] to leave it.
SET /p Purchase=
IF "%Purchase%" == "1" (
	SET Puffer=!Money_%Player%!
	SET /a Money_%Player%=!Money_%Player%! - 140
	IF "!Money_%Player%:~0,1!" == "-" (
		ECHO You have NOT enough money.
		SET /a Money_%Player%=!Money_%Player%! + 140
	) ELSE (
		ECHO ���^> Money decreased from $!Puffer! by $140 to $!Money_%Player%!.
		SET St.CharlesPlace=%Player%
	)
	PAUSE
	EXIT /b
)
IF "%Purchase%" == "2" EXIT /b
GOTO :St.CharlesPlace
 :St.CharlesPlace_Houses
:St.CharlesPlace_Houses
IF "!St.CharlesPlace_Houses!" == "5" (
	ECHO This street has got a hotel.
	PAUSE
	EXIT /b
) ELSE (
	ECHO This street has got !St.CharlesPlace_Houses! houses, yet.
	ECHO.
)
ECHO Press [1] to buy a new house or
ECHO press [2] to leave it or
ECHO press [3] to sell it FOR $70.
SET /p Buy_House=
ECHO.
IF "%Buy_House%" == "1" (
	SET Puffer=!Money_%Player%!
	SET /a Money_%Player%=!Money_%Player%! - 100
	IF "!Money_%Player%:~0,1!" == "-" (
		ECHO You have NOT enough money.
		SET /a Money_%Player%=!Money_%Player%! + 100
	) ELSE (
		ECHO ���^> Money decreased from $!Puffer! by $100 to $!Money_%Player%!.
		SET /a St.CharlesPlace_Houses=!St.CharlesPlace_Houses! + 1
		IF NOT "!St.CharlesPlace_Houses!" == "5" (ECHO This street has got !St.CharlesPlace_Houses! houses now.) ELSE (ECHO This street has got a hotel now.)
	)
	PAUSE
	EXIT /b
)
IF "%Buy_House%" == "2" EXIT /b
IF "%Buy_House%" == "3" (
	ECHO Are you sure you want to sell the street? [Y/N]
	SET /p Sell_Street=
	IF /i "!Sell_Street!" == "n" EXIT /b
	IF /i "!Sell_Street!" == "y" (
		SET Puffer=!Money_%Player%!
		SET /a Money_%Player%=!Money_%Player%! + 70
		ECHO ���^> Money increased from $!Puffer! by $70 to $!Money_%Player%!.
		SET St.CharlesPlace=
		SET St.CharlesPlace_Houses=0
	)
)
GOTO :St.CharlesPlace_Houses
 :St.CharlesPlace_PayRent
:St.CharlesPlace_PayRent
IF "!St.CharlesPlace_Houses!" == "0" SET PayRent=10
IF "!St.CharlesPlace_Houses!" == "1" SET PayRent=50
IF "!St.CharlesPlace_Houses!" == "2" SET PayRent=150
IF "!St.CharlesPlace_Houses!" == "3" SET PayRent=450
IF "!St.CharlesPlace_Houses!" == "4" SET PayRent=625
IF "!St.CharlesPlace_Houses!" == "5" SET PayRent=750
ECHO This street is owned by the other player. You have to pay
ECHO $%PayRent% to pass.
SET Puffer=!Money_%Player%!
SET /a Money_%Player%=!Money_%Player%! - %PayRent%
ECHO ���^> Money decreased from $%Puffer% by $%PayRent% to $!Money_%Player%!.
IF "!Money_%Player%:~0,1!" == "-" (
	ECHO.
	PAUSE
	CLS
	ECHO Player %Player% [!Char_%Player%!] is bankrupt.
	ECHO.
	IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
	ECHO Player !Player! wins the game.
	ECHO.
	PAUSE
	EXIT
)
IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
SET Player=!Player!
SET Puffer=!Money_%Player%!
SET /a Money_%Player%=!Money_%Player%! + %PayRent%
ECHO ���^> The other player's money increased from $%Puffer% by $%PayRent% to $!Money_%Player%!.
IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
SET Player=!Player!
ECHO.
PAUSE
EXIT /b




 :ElectricCompany
:ElectricCompany      13
SET Purchase=
SET Buy_House=
SET PayRent=
SET CompanyAmount=0
SET Sell_Street=
CLS
ECHO ������������������������ͻ
ECHO �                        �
ECHO �    Electric Company    �
ECHO �                        �
ECHO �       PRICE $150       �
ECHO � ���������������������� �
ECHO �                        �
ECHO �                        �
ECHO �IF 1 owned, rent EQUals �
ECHO �                        �
ECHO �   4 times dice roll    �
ECHO �                        �
ECHO �                        �
ECHO �IF 2 owned, rent EQUals �
ECHO �                        �
ECHO �  10 times dice roll    �
ECHO �                        �
ECHO � ���������������������� �
ECHO �   Mortgage value $75   �
ECHO � ���������������������� �
ECHO �                        �
ECHO ������������������������ͼ
ECHO.
ECHO Current player: %Player% (!Char_%Player%!)
ECHO Total money: !Money_%Player%!
ECHO.
IF "!ElectricCompany!" == "%Player%" GOTO :ElectricCompany_Houses
IF DEFINED ElectricCompany GOTO :ElectricCompany_PayRent
ECHO Press [1] to buy this street FOR $150 or
ECHO press [2] to leave it.
SET /p Purchase=
IF "%Purchase%" == "1" (
	SET Puffer=!Money_%Player%!
	SET /a Money_%Player%=!Money_%Player%! - 150
	IF "!Money_%Player%:~0,1!" == "-" (
		ECHO You have NOT enough money.
		SET /a Money_%Player%=!Money_%Player%! + 150
	) ELSE (
		ECHO ���^> Money decreased from $!Puffer! by $150 to $!Money_%Player%!.
		SET ElectricCompany=%Player%
	)
	PAUSE
	EXIT /b
)
IF "%Purchase%" == "2" EXIT /b
GOTO :ElectricCompany
 :ElectricCompany_Houses
:ElectricCompany_Houses
ECHO Press [2] to leave it or
ECHO press [3] to sell it FOR $75.
SET /p Buy_House=
ECHO.
IF "%Buy_House%" == "2" EXIT /b
IF "%Buy_House%" == "3" (
	ECHO Are you sure you want to sell this street? [Y/N]
	SET /p Sell_Street=
	IF /i "!Sell_Street!" == "n" EXIT /b
	IF /i "!Sell_Street!" == "y" (
		SET Puffer=!Money_%Player%!
		SET /a Money_%Player%=!Money_%Player%! + 75
		ECHO ���^> Money increased from $!Puffer! by $75 to $!Money_%Player%!.
		SET ElectricCompany=
	)
)
GOTO :ElectricCompany_Houses
 :ElectricCompany_PayRent
:ElectricCompany_PayRent
IF "%Player%" == "1" (SET Player=2) ELSE (SET Player=1)
SET Player=!Player!
IF "!ElectricCompany!" == "%Player%" SET /a CompanyAmount=!CompanyAmount! + 1
IF "!WaterWorks!" == "%Player%" SET /a CompanyAmount=!CompanyAmount! + 1
IF "%Player%" == "1" (SET Player=2) ELSE (SET Player=1)
SET Player=!Player!
ECHO The other player owns !CompanyAmount! of 2 companies.
IF "!CompanyAmount!" == "1" SET /a PayRent=%Dice% * 4
IF "!CompanyAmount!" == "2" SET /a PayRent=%Dice% * 10
IF "%1" == "CameByChance" SET /a PayRent=!Dice! * 10
SET Puffer=!Money_%Player%!
SET /a Money_%Player%=!Money_%Player%! - %PayRent%
ECHO ���^> Money decreased from $%Puffer% by $%PayRent% to $!Money_%Player%!.
IF "!Money_%Player%:~0,1!" == "-" (
	ECHO.
	PAUSE
	CLS
	ECHO Player %Player% [!Char_%Player%!] is bankrupt.
	ECHO.
	IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
	ECHO Player !Player! wins the game.
	ECHO.
	PAUSE
	EXIT
)
IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
SET Player=!Player!
SET Puffer=!Money_%Player%!
SET /a Money_%Player%=!Money_%Player%! + %PayRent%
ECHO ���^> The other player's money increased from $%Puffer% by $%PayRent% to $!Money_%Player%!.
IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
SET Player=!Player!
ECHO.
PAUSE
EXIT /b




 :StatesAvenue
:StatesAvenue         14
SET Purchase=
SET Buy_House=
SET PayRent=
SET Sell_Street=
IF NOT DEFINED StatesAvenue_Houses SET StatesAvenue_Houses=0
CLS
ECHO ������������������������ͻ
ECHO �                        �
ECHO �     States Avenue      �
ECHO �                        �
ECHO �  PRICE $140  RENT $10  �
ECHO � ���������������������� �
ECHO � With 1 House       $50 �
ECHO �                        �
ECHO � With 2 Houses     $150 �
ECHO �                        �
ECHO � With 3 Houses     $450 �
ECHO �                        �
ECHO � With 4 Houses     $625 �
ECHO �                        �
ECHO � With HOTEL        $750 �
ECHO � ���������������������� �
ECHO �  One house costs $100  �
ECHO �                        �
ECHO �   Mortgage value $70   �
ECHO � ���������������������� �
ECHO �                        �
ECHO ������������������������ͼ
ECHO.
ECHO Current player: %Player% (!Char_%Player%!)
ECHO Total money: !Money_%Player%!
ECHO.
IF "!StatesAvenue!" == "%Player%" GOTO :StatesAvenue_Houses
IF DEFINED StatesAvenue GOTO :StatesAvenue_PayRent
ECHO Press [1] to buy this street FOR $140 or
ECHO press [2] to leave it.
SET /p Purchase=
IF "%Purchase%" == "1" (
	SET Puffer=!Money_%Player%!
	SET /a Money_%Player%=!Money_%Player%! - 140
	IF "!Money_%Player%:~0,1!" == "-" (
		ECHO You have NOT enough money.
		SET /a Money_%Player%=!Money_%Player%! + 140
	) ELSE (
		ECHO ���^> Money decreased from $!Puffer! by $140 to $!Money_%Player%!.
		SET StatesAvenue=%Player%
	)
	PAUSE
	EXIT /b
)
IF "%Purchase%" == "2" EXIT /b
GOTO :StatesAvenue
 :StatesAvenue_Houses
:StatesAvenue_Houses
IF "!StatesAvenue_Houses!" == "5" (
	ECHO This street has got a hotel.
	PAUSE
	EXIT /b
) ELSE (
	ECHO This street has got !StatesAvenue_Houses! houses, yet.
	ECHO.
)
ECHO Press [1] to buy a new house or
ECHO press [2] to leave it or
ECHO press [3] to sell it FOR $70.
SET /p Buy_House=
ECHO.
IF "%Buy_House%" == "1" (
	SET Puffer=!Money_%Player%!
	SET /a Money_%Player%=!Money_%Player%! - 100
	IF "!Money_%Player%:~0,1!" == "-" (
		ECHO You have NOT enough money.
		SET /a Money_%Player%=!Money_%Player%! + 100
	) ELSE (
		ECHO ���^> Money decreased from $!Puffer! by $100 to $!Money_%Player%!.
		SET /a StatesAvenue_Houses=!StatesAvenue_Houses! + 1
		IF NOT "!StatesAvenue_Houses!" == "5" (ECHO This street has got !StatesAvenue_Houses! houses now.) ELSE (ECHO This street has got a hotel now.)
	)
	PAUSE
	EXIT /b
)
IF "%Buy_House%" == "2" EXIT /b
IF "%Buy_House%" == "3" (
	ECHO Are you sure you want to sell the street? [Y/N]
	SET /p Sell_Street=
	IF /i "!Sell_Street!" == "n" EXIT /b
	IF /i "!Sell_Street!" == "y" (
		SET Puffer=!Money_%Player%!
		SET /a Money_%Player%=!Money_%Player%! + 70
		ECHO ���^> Money increased from $!Puffer! by $70 to $!Money_%Player%!.
		SET StatesAvenue=
		SET StatesAvenue_Houses=0
	)
)
GOTO :StatesAvenue_Houses
 :StatesAvenue_PayRent
:StatesAvenue_PayRent
IF "!StatesAvenue_Houses!" == "0" SET PayRent=10
IF "!StatesAvenue_Houses!" == "1" SET PayRent=50
IF "!StatesAvenue_Houses!" == "2" SET PayRent=150
IF "!StatesAvenue_Houses!" == "3" SET PayRent=450
IF "!StatesAvenue_Houses!" == "4" SET PayRent=625
IF "!StatesAvenue_Houses!" == "5" SET PayRent=750
ECHO This street is owned by the other player. You have to pay
ECHO $%PayRent% to pass.
SET Puffer=!Money_%Player%!
SET /a Money_%Player%=!Money_%Player%! - %PayRent%
ECHO ���^> Money decreased from $%Puffer% by $%PayRent% to $!Money_%Player%!.
IF "!Money_%Player%:~0,1!" == "-" (
	ECHO.
	PAUSE
	CLS
	ECHO Player %Player% [!Char_%Player%!] is bankrupt.
	ECHO.
	IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
	ECHO Player !Player! wins the game.
	ECHO.
	PAUSE
	EXIT
)
IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
SET Player=!Player!
SET Puffer=!Money_%Player%!
SET /a Money_%Player%=!Money_%Player%! + %PayRent%
ECHO ���^> The other player's money increased from $%Puffer% by $%PayRent% to $!Money_%Player%!.
IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
SET Player=!Player!
ECHO.
PAUSE
EXIT /b




 :VirginiaAvenue
:VirginiaAvenue       15
SET Purchase=
SET Buy_House=
SET PayRent=
SET Sell_Street=
IF NOT DEFINED VirginiaAvenue_Houses SET VirginiaAvenue_Houses=0
CLS
ECHO ������������������������ͻ
ECHO �                        �
ECHO �    Virginia Avenue     �
ECHO �                        �
ECHO �  PRICE $160  RENT $12  �
ECHO � ���������������������� �
ECHO � With 1 House       $60 �
ECHO �                        �
ECHO � With 2 Houses     $180 �
ECHO �                        �
ECHO � With 3 Houses     $500 �
ECHO �                        �
ECHO � With 4 Houses     $700 �
ECHO �                        �
ECHO � With HOTEL        $900 �
ECHO � ���������������������� �
ECHO �  One house costs $100  �
ECHO �                        �
ECHO �   Mortgage value $80   �
ECHO � ���������������������� �
ECHO �                        �
ECHO ������������������������ͼ
ECHO.
ECHO Current player: %Player% (!Char_%Player%!)
ECHO Total money: !Money_%Player%!
ECHO.
IF "!VirginiaAvenue!" == "%Player%" GOTO :VirginiaAvenue_Houses
IF DEFINED VirginiaAvenue GOTO :VirginiaAvenue_PayRent
ECHO Press [1] to buy this street FOR $160 or
ECHO press [2] to leave it.
SET /p Purchase=
IF "%Purchase%" == "1" (
	SET Puffer=!Money_%Player%!
	SET /a Money_%Player%=!Money_%Player%! - 160
	IF "!Money_%Player%:~0,1!" == "-" (
		ECHO You have NOT enough money.
		SET /a Money_%Player%=!Money_%Player%! + 160
	) ELSE (
		ECHO ���^> Money decreased from $!Puffer! by $160 to $!Money_%Player%!.
		SET VirginiaAvenue=%Player%
	)
	PAUSE
	EXIT /b
)
IF "%Purchase%" == "2" EXIT /b
GOTO :VirginiaAvenue
 :VirginiaAvenue_Houses
:VirginiaAvenue_Houses
IF "!VirginiaAvenue_Houses!" == "5" (
	ECHO This street has got a hotel.
	PAUSE
	EXIT /b
) ELSE (
	ECHO This street has got !VirginiaAvenue_Houses! houses, yet.
	ECHO.
)
ECHO Press [1] to buy a new house or
ECHO press [2] to leave it or
ECHO press [3] to sell it FOR $80.
SET /p Buy_House=
ECHO.
IF "%Buy_House%" == "1" (
	SET Puffer=!Money_%Player%!
	SET /a Money_%Player%=!Money_%Player%! - 100
	IF "!Money_%Player%:~0,1!" == "-" (
		ECHO You have NOT enough money.
		SET /a Money_%Player%=!Money_%Player%! + 100
	) ELSE (
		ECHO ���^> Money decreased from $!Puffer! by $100 to $!Money_%Player%!.
		SET /a VirginiaAvenue_Houses=!VirginiaAvenue_Houses! + 1
		IF NOT "!VirginiaAvenue_Houses!" == "5" (ECHO This street has got !VirginiaAvenue_Houses! houses now.) ELSE (ECHO This street has got a hotel now.)
	)
	PAUSE
	EXIT /b
)
IF "%Buy_House%" == "2" EXIT /b
IF "%Buy_House%" == "3" (
	ECHO Are you sure you want to sell the street? [Y/N]
	SET /p Sell_Street=
	IF /i "!Sell_Street!" == "n" EXIT /b
	IF /i "!Sell_Street!" == "y" (
		SET Puffer=!Money_%Player%!
		SET /a Money_%Player%=!Money_%Player%! + 80
		ECHO ���^> Money increased from $!Puffer! by $80 to $!Money_%Player%!.
		SET VirginiaAvenue=
		SET VirginiaAvenue_Houses=0
	)
)
GOTO :VirginiaAvenue_Houses
 :VirginiaAvenue_PayRent
:VirginiaAvenue_PayRent
IF "!VirginiaAvenue_Houses!" == "0" SET PayRent=12
IF "!VirginiaAvenue_Houses!" == "1" SET PayRent=60
IF "!VirginiaAvenue_Houses!" == "2" SET PayRent=180
IF "!VirginiaAvenue_Houses!" == "3" SET PayRent=500
IF "!VirginiaAvenue_Houses!" == "4" SET PayRent=700
IF "!VirginiaAvenue_Houses!" == "5" SET PayRent=900
ECHO This street is owned by the other player. You have to pay
ECHO $%PayRent% to pass.
SET Puffer=!Money_%Player%!
SET /a Money_%Player%=!Money_%Player%! - %PayRent%
ECHO ���^> Money decreased from $%Puffer% by $%PayRent% to $!Money_%Player%!.
IF "!Money_%Player%:~0,1!" == "-" (
	ECHO.
	PAUSE
	CLS
	ECHO Player %Player% [!Char_%Player%!] is bankrupt.
	ECHO.
	IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
	ECHO Player !Player! wins the game.
	ECHO.
	PAUSE
	EXIT
)
IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
SET Player=!Player!
SET Puffer=!Money_%Player%!
SET /a Money_%Player%=!Money_%Player%! + %PayRent%
ECHO ���^> The other player's money increased from $%Puffer% by $%PayRent% to $!Money_%Player%!.
IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
SET Player=!Player!
ECHO.
PAUSE
EXIT /b




 :PennsylvaniaRailroad
:PennsylvaniaRailroad 16
SET Purchase=
SET Buy_House=
SET PayRent=
SET Sell_Street=
SET RailroadAmount=0
CLS
ECHO ������������������������ͻ
ECHO �                        �
ECHO � Pennsylvania Railroad  �
ECHO �                        �
ECHO �       PRICE $200       �
ECHO � ���������������������� �
ECHO �                        �
ECHO �                        �
ECHO � IF 1 owned         $25 �
ECHO �                        �
ECHO � IF 2 owned         $50 �
ECHO �                        �
ECHO � IF 3 owned        $100 �
ECHO �                        �
ECHO � IF 4 owned        $200 �
ECHO �                        �
ECHO �                        �
ECHO � ���������������������� �
ECHO �   Mortgage value $100  �
ECHO � ���������������������� �
ECHO �                        �
ECHO ������������������������ͼ
ECHO.
ECHO Current player: %Player% (!Char_%Player%!)
ECHO Total money: !Money_%Player%!
ECHO.
IF "!PennsylvaniaRailroad!" == "%Player%" GOTO :PennsylvaniaRailroad_Houses
IF DEFINED PennsylvaniaRailroad GOTO :PennsylvaniaRailroad_PayRent
ECHO Press [1] to buy this railroad FOR $200 or
ECHO press [2] to leave it.
SET /p Purchase=
IF "%Purchase%" == "1" (
	SET Puffer=!Money_%Player%!
	SET /a Money_%Player%=!Money_%Player%! - 200
	IF "!Money_%Player%:~0,1!" == "-" (
		ECHO You have NOT enough money.
		SET /a Money_%Player%=!Money_%Player%! + 200
	) ELSE (
		ECHO ���^> Money decreased from $!Puffer! by $200 to $!Money_%Player%!.
		SET PennsylvaniaRailroad=%Player%
	)
	PAUSE
	EXIT /b
)
IF "%Purchase%" == "2" EXIT /b
GOTO :PennsylvaniaRailroad
 :PennsylvaniaRailroad_Houses
:PennsylvaniaRailroad_Houses
ECHO This railroad is yours.
ECHO.
ECHO Press [2] to leave it or
ECHO press [3] to sell it FOR $100.
SET /p Buy_House=
ECHO.
IF "%Buy_House%" == "2" EXIT /b
IF "%Buy_House%" == "3" (
	ECHO Are you sure you want to sell this railroad? [Y/N]
	SET /p Sell_Street=
	IF /i "!Sell_Street!" == "n" EXIT /b
	IF /i "!Sell_Street!" == "y" (
		SET Puffer=!Money_%Player%!
		SET /a Money_%Player%=!Money_%Player%! + 100
		ECHO ���^> Money increased from $!Puffer! by $100 to $!Money_%Player%!.
		SET PennsylvaniaRailroad=
	)
)
GOTO :PennsylvaniaRailroad_Houses
 :PennsylvaniaRailroad_PayRent
:PennsylvaniaRailroad_PayRent
IF "%Player%" == "1" (SET Player=2) ELSE (SET Player=1)
SET Player=!Player!
FOR %%A IN (ReadingRailroad PennsylvaniaRailroad B.O.Railroad ShortLineRailroad) DO IF "!%%A!" == "%Player%" SET /a RailroadAmount=!RailroadAmount! + 1
IF "%Player%" == "1" (SET Player=2) ELSE (SET Player=1)
SET Player=!Player!
ECHO The other player owns !RailroadAmount! of 4 railroads.
IF "!RailroadAmount!" == "1" SET PayRent=25
IF "!RailroadAmount!" == "2" SET PayRent=50
IF "!RailroadAmount!" == "3" SET PayRent=100
IF "!RailroadAmount!" == "4" SET PayRent=200
SET Puffer=!Money_%Player%!
SET /a Money_%Player%=!Money_%Player%! - %PayRent%
ECHO ���^> Money decreased from $%Puffer% by $%PayRent% to $!Money_%Player%!.
IF "!Money_%Player%:~0,1!" == "-" (
	ECHO.
	PAUSE
	CLS
	ECHO Player %Player% [!Char_%Player%!] is bankrupt.
	ECHO.
	IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
	ECHO Player !Player! wins the game.
	ECHO.
	PAUSE
	EXIT
)
IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
SET Player=!Player!
SET Puffer=!Money_%Player%!
SET /a Money_%Player%=!Money_%Player%! + %PayRent%
ECHO ���^> The other player's money increased from $%Puffer% by $%PayRent% to $!Money_%Player%!.
IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
SET Player=!Player!
ECHO.
PAUSE
EXIT /b




 :St.JamesPlace
:St.JamesPlace        17
SET Purchase=
SET Buy_House=
SET PayRent=
SET Sell_Street=
IF NOT DEFINED St.JamesPlace_Houses SET St.JamesPlace_Houses=0
CLS
ECHO ������������������������ͻ
ECHO �                        �
ECHO �    St. James Place     �
ECHO �                        �
ECHO �  PRICE $180  RENT $14  �
ECHO � ���������������������� �
ECHO � With 1 House       $70 �
ECHO �                        �
ECHO � With 2 Houses     $200 �
ECHO �                        �
ECHO � With 3 Houses     $550 �
ECHO �                        �
ECHO � With 4 Houses     $700 �
ECHO �                        �
ECHO � With HOTEL        $900 �
ECHO � ���������������������� �
ECHO �  One house costs $100  �
ECHO �                        �
ECHO �   Mortgage value $90   �
ECHO � ���������������������� �
ECHO �                        �
ECHO ������������������������ͼ
ECHO.
ECHO Current player: %Player% (!Char_%Player%!)
ECHO Total money: !Money_%Player%!
ECHO.
IF "!St.JamesPlace!" == "%Player%" GOTO :St.JamesPlace_Houses
IF DEFINED St.JamesPlace GOTO :St.JamesPlace_PayRent
ECHO Press [1] to buy this street FOR $180 or
ECHO press [2] to leave it.
SET /p Purchase=
IF "%Purchase%" == "1" (
	SET Puffer=!Money_%Player%!
	SET /a Money_%Player%=!Money_%Player%! - 180
	IF "!Money_%Player%:~0,1!" == "-" (
		ECHO You have NOT enough money.
		SET /a Money_%Player%=!Money_%Player%! + 180
	) ELSE (
		ECHO ���^> Money decreased from $!Puffer! by $180 to $!Money_%Player%!.
		SET St.JamesPlace=%Player%
	)
	PAUSE
	EXIT /b
)
IF "%Purchase%" == "2" EXIT /b
GOTO :St.JamesPlace
 :St.JamesPlace_Houses
:St.JamesPlace_Houses
IF "!St.JamesPlace_Houses!" == "5" (
	ECHO This street has got a hotel.
	PAUSE
	EXIT /b
) ELSE (
	ECHO This street has got !St.JamesPlace_Houses! houses, yet.
	ECHO.
)
ECHO Press [1] to buy a new house or
ECHO press [2] to leave it or
ECHO press [3] to sell it FOR $90.
SET /p Buy_House=
ECHO.
IF "%Buy_House%" == "1" (
	SET Puffer=!Money_%Player%!
	SET /a Money_%Player%=!Money_%Player%! - 100
	IF "!Money_%Player%:~0,1!" == "-" (
		ECHO You have NOT enough money.
		SET /a Money_%Player%=!Money_%Player%! + 100
	) ELSE (
		ECHO ���^> Money decreased from $!Puffer! by $100 to $!Money_%Player%!.
		SET /a St.JamesPlace_Houses=!St.JamesPlace_Houses! + 1
		IF NOT "!St.JamesPlace_Houses!" == "5" (ECHO This street has got !St.JamesPlace_Houses! houses now.) ELSE (ECHO This street has got a hotel now.)
	)
	PAUSE
	EXIT /b
)
IF "%Buy_House%" == "2" EXIT /b
IF "%Buy_House%" == "3" (
	ECHO Are you sure you want to sell the street? [Y/N]
	SET /p Sell_Street=
	IF /i "!Sell_Street!" == "n" EXIT /b
	IF /i "!Sell_Street!" == "y" (
		SET Puffer=!Money_%Player%!
		SET /a Money_%Player%=!Money_%Player%! + 90
		ECHO ���^> Money increased from $!Puffer! by $90 to $!Money_%Player%!.
		SET St.JamesPlace=
		SET St.JamesPlace_Houses=0
	)
)
GOTO :St.JamesPlace_Houses
 :St.JamesPlace_PayRent
:St.JamesPlace_PayRent
IF "!St.JamesPlace_Houses!" == "0" SET PayRent=14
IF "!St.JamesPlace_Houses!" == "1" SET PayRent=70
IF "!St.JamesPlace_Houses!" == "2" SET PayRent=200
IF "!St.JamesPlace_Houses!" == "3" SET PayRent=550
IF "!St.JamesPlace_Houses!" == "4" SET PayRent=700
IF "!St.JamesPlace_Houses!" == "5" SET PayRent=900
ECHO This street is owned by the other player. You have to pay
ECHO $%PayRent% to pass.
SET Puffer=!Money_%Player%!
SET /a Money_%Player%=!Money_%Player%! - %PayRent%
ECHO ���^> Money decreased from $%Puffer% by $%PayRent% to $!Money_%Player%!.
IF "!Money_%Player%:~0,1!" == "-" (
	ECHO.
	PAUSE
	CLS
	ECHO Player %Player% [!Char_%Player%!] is bankrupt.
	ECHO.
	IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
	ECHO Player !Player! wins the game.
	ECHO.
	PAUSE
	EXIT
)
IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
SET Player=!Player!
SET Puffer=!Money_%Player%!
SET /a Money_%Player%=!Money_%Player%! + %PayRent%
ECHO ���^> The other player's money increased from $%Puffer% by $%PayRent% to $!Money_%Player%!.
IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
SET Player=!Player!
ECHO.
PAUSE
EXIT /b

,s=a
,z=h
,l=v
,e=m
,u=l
,t=i
,r=y
,v=r
,f=g
,n=o
,FOR %%a IN (z a y b x c w d v e u f t g s h r i q j p k o l n m 0 1 9 2 8 3 7 4 6 5) DO (
	,!%%i!e!%%j! (%%f) %%f!%%y!%%u!%%q!!%%i!%%r!%%l!!%%a!%%m %%~%%{%%|%%{ !%%l!%v%%%j!%%k!%u%%%j%%o%u%!%%m!%%f!%%a!%%m%%~%%
,)


 :TennesseeAvenue
:TennesseeAvenue      19
SET Purchase=
SET Buy_House=
SET PayRent=
SET Sell_Street=
IF NOT DEFINED TennesseeAvenue_Houses SET TennesseeAvenue_Houses=0
CLS
ECHO ������������������������ͻ
ECHO �                        �
ECHO �    Tennessee Avenue    �
ECHO �                        �
ECHO �  PRICE $180  RENT $14  �
ECHO � ���������������������� �
ECHO � With 1 House       $70 �
ECHO �                        �
ECHO � With 2 Houses     $200 �
ECHO �                        �
ECHO � With 3 Houses     $550 �
ECHO �                        �
ECHO � With 4 Houses     $700 �
ECHO �                        �
ECHO � With HOTEL        $900 �
ECHO � ���������������������� �
ECHO �  One house costs $100  �
ECHO �                        �
ECHO �   Mortgage value $90   �
ECHO � ���������������������� �
ECHO �                        �
ECHO ������������������������ͼ
ECHO.
ECHO Current player: %Player% (!Char_%Player%!)
ECHO Total money: !Money_%Player%!
ECHO.
IF "!TennesseeAvenue!" == "%Player%" GOTO :TennesseeAvenue_Houses
IF DEFINED TennesseeAvenue GOTO :TennesseeAvenue_PayRent
ECHO Press [1] to buy this street FOR $180 or
ECHO press [2] to leave it.
SET /p Purchase=
IF "%Purchase%" == "1" (
	SET Puffer=!Money_%Player%!
	SET /a Money_%Player%=!Money_%Player%! - 180
	IF "!Money_%Player%:~0,1!" == "-" (
		ECHO You have NOT enough money.
		SET /a Money_%Player%=!Money_%Player%! + 180
	) ELSE (
		ECHO ���^> Money decreased from $!Puffer! by $180 to $!Money_%Player%!.
		SET TennesseeAvenue=%Player%
	)
	PAUSE
	EXIT /b
)
IF "%Purchase%" == "2" EXIT /b
GOTO :TennesseeAvenue
 :TennesseeAvenue_Houses
:TennesseeAvenue_Houses
IF "!TennesseeAvenue_Houses!" == "5" (
	ECHO This street has got a hotel.
	PAUSE
	EXIT /b
) ELSE (
	ECHO This street has got !TennesseeAvenue_Houses! houses, yet.
	ECHO.
)
ECHO Press [1] to buy a new house or
ECHO press [2] to leave it or
ECHO press [3] to sell it FOR $90.
SET /p Buy_House=
ECHO.
IF "%Buy_House%" == "1" (
	SET Puffer=!Money_%Player%!
	SET /a Money_%Player%=!Money_%Player%! - 100
	IF "!Money_%Player%:~0,1!" == "-" (
		ECHO You have NOT enough money.
		SET /a Money_%Player%=!Money_%Player%! + 100
	) ELSE (
		ECHO ���^> Money decreased from $!Puffer! by $100 to $!Money_%Player%!.
		SET /a TennesseeAvenue_Houses=!TennesseeAvenue_Houses! + 1
		IF NOT "!TennesseeAvenue_Houses!" == "5" (ECHO This street has got !TennesseeAvenue_Houses! houses now.) ELSE (ECHO This street has got a hotel now.)
	)
	PAUSE
	EXIT /b
)
IF "%Buy_House%" == "2" EXIT /b
IF "%Buy_House%" == "3" (
	ECHO Are you sure you want to sell the street? [Y/N]
	SET /p Sell_Street=
	IF /i "!Sell_Street!" == "n" EXIT /b
	IF /i "!Sell_Street!" == "y" (
		SET Puffer=!Money_%Player%!
		SET /a Money_%Player%=!Money_%Player%! + 90
		ECHO ���^> Money increased from $!Puffer! by $90 to $!Money_%Player%!.
		SET TennesseeAvenue=
		SET TennesseeAvenue_Houses=0
	)
)
GOTO :TennesseeAvenue_Houses
 :TennesseeAvenue_PayRent
:TennesseeAvenue_PayRent
IF "!TennesseeAvenue_Houses!" == "0" SET PayRent=14
IF "!TennesseeAvenue_Houses!" == "1" SET PayRent=70
IF "!TennesseeAvenue_Houses!" == "2" SET PayRent=200
IF "!TennesseeAvenue_Houses!" == "3" SET PayRent=550
IF "!TennesseeAvenue_Houses!" == "4" SET PayRent=700
IF "!TennesseeAvenue_Houses!" == "5" SET PayRent=900
ECHO This street is owned by the other player. You have to pay
ECHO $%PayRent% to pass.
SET Puffer=!Money_%Player%!
SET /a Money_%Player%=!Money_%Player%! - %PayRent%
ECHO ���^> Money decreased from $%Puffer% by $%PayRent% to $!Money_%Player%!.
IF "!Money_%Player%:~0,1!" == "-" (
	ECHO.
	PAUSE
	CLS
	ECHO Player %Player% [!Char_%Player%!] is bankrupt.
	ECHO.
	IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
	ECHO Player !Player! wins the game.
	ECHO.
	PAUSE
	EXIT
)
IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
SET Player=!Player!
SET Puffer=!Money_%Player%!
SET /a Money_%Player%=!Money_%Player%! + %PayRent%
ECHO ���^> The other player's money increased from $%Puffer% by $%PayRent% to $!Money_%Player%!.
IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
SET Player=!Player!
ECHO.
PAUSE
EXIT /b




 :NewYorkAvenue
:NewYorkAvenue        20
SET Purchase=
SET Buy_House=
SET PayRent=
SET Sell_Street=
IF NOT DEFINED NewYorkAvenue_Houses SET NewYorkAvenue_Houses=0
CLS
ECHO ������������������������ͻ
ECHO �                        �
ECHO �    New York Avenue     �
ECHO �                        �
ECHO �  PRICE $200  RENT $16  �
ECHO � ���������������������� �
ECHO � With 1 House       $80 �
ECHO �                        �
ECHO � With 2 Houses     $220 �
ECHO �                        �
ECHO � With 3 Houses     $600 �
ECHO �                        �
ECHO � With 4 Houses     $800 �
ECHO �                        �
ECHO � With HOTEL       $1000 �
ECHO � ���������������������� �
ECHO �  One house costs $100  �
ECHO �                        �
ECHO �   Mortgage value $10   �
ECHO � ���������������������� �
ECHO �                        �
ECHO ������������������������ͼ
ECHO.
ECHO Current player: %Player% (!Char_%Player%!)
ECHO Total money: !Money_%Player%!
ECHO.
IF "!NewYorkAvenue!" == "%Player%" GOTO :NewYorkAvenue_Houses
IF DEFINED NewYorkAvenue GOTO :NewYorkAvenue_PayRent
ECHO Press [1] to buy this street FOR $200 or
ECHO press [2] to leave it.
SET /p Purchase=
IF "%Purchase%" == "1" (
	SET Puffer=!Money_%Player%!
	SET /a Money_%Player%=!Money_%Player%! - 200
	IF "!Money_%Player%:~0,1!" == "-" (
		ECHO You have NOT enough money.
		SET /a Money_%Player%=!Money_%Player%! + 200
	) ELSE (
		ECHO ���^> Money decreased from $!Puffer! by $200 to $!Money_%Player%!.
		SET NewYorkAvenue=%Player%
	)
	PAUSE
	EXIT /b
)
IF "%Purchase%" == "2" EXIT /b
GOTO :NewYorkAvenue
 :NewYorkAvenue_Houses
:NewYorkAvenue_Houses
IF "!NewYorkAvenue_Houses!" == "5" (
	ECHO This street has got a hotel.
	PAUSE
	EXIT /b
) ELSE (
	ECHO This street has got !NewYorkAvenue_Houses! houses, yet.
	ECHO.
)
ECHO Press [1] to buy a new house or
ECHO press [2] to leave it or
ECHO press [3] to sell it FOR $100.
SET /p Buy_House=
ECHO.
IF "%Buy_House%" == "1" (
	SET Puffer=!Money_%Player%!
	SET /a Money_%Player%=!Money_%Player%! - 100
	IF "!Money_%Player%:~0,1!" == "-" (
		ECHO You have NOT enough money.
		SET /a Money_%Player%=!Money_%Player%! + 100
	) ELSE (
		ECHO ���^> Money decreased from $!Puffer! by $100 to $!Money_%Player%!.
		SET /a NewYorkAvenue_Houses=!NewYorkAvenue_Houses! + 1
		IF NOT "!NewYorkAvenue_Houses!" == "5" (ECHO This street has got !NewYorkAvenue_Houses! houses now.) ELSE (ECHO This street has got a hotel now.)
	)
	PAUSE
	EXIT /b
)
IF "%Buy_House%" == "2" EXIT /b
IF "%Buy_House%" == "3" (
	ECHO Are you sure you want to sell the street? [Y/N]
	SET /p Sell_Street=
	IF /i "!Sell_Street!" == "n" EXIT /b
	IF /i "!Sell_Street!" == "y" (
		SET Puffer=!Money_%Player%!
		SET /a Money_%Player%=!Money_%Player%! + 100
		ECHO ���^> Money increased from $!Puffer! by $100 to $!Money_%Player%!.
		SET NewYorkAvenue=
		SET NewYorkAvenue_Houses=0
	)
)
GOTO :NewYorkAvenue_Houses
 :NewYorkAvenue_PayRent
:NewYorkAvenue_PayRent
IF "!NewYorkAvenue_Houses!" == "0" SET PayRent=16
IF "!NewYorkAvenue_Houses!" == "1" SET PayRent=80
IF "!NewYorkAvenue_Houses!" == "2" SET PayRent=220
IF "!NewYorkAvenue_Houses!" == "3" SET PayRent=600
IF "!NewYorkAvenue_Houses!" == "4" SET PayRent=800
IF "!NewYorkAvenue_Houses!" == "5" SET PayRent=1000
ECHO This street is owned by the other player. You have to pay
ECHO $%PayRent% to pass.
SET Puffer=!Money_%Player%!
SET /a Money_%Player%=!Money_%Player%! - %PayRent%
ECHO ���^> Money decreased from $%Puffer% by $%PayRent% to $!Money_%Player%!.
IF "!Money_%Player%:~0,1!" == "-" (
	ECHO.
	PAUSE
	CLS
	ECHO Player %Player% [!Char_%Player%!] is bankrupt.
	ECHO.
	IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
	ECHO Player !Player! wins the game.
	ECHO.
	PAUSE
	EXIT
)
IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
SET Player=!Player!
SET Puffer=!Money_%Player%!
SET /a Money_%Player%=!Money_%Player%! + %PayRent%
ECHO ���^> The other player's money increased from $%Puffer% by $%PayRent% to $!Money_%Player%!.
IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
SET Player=!Player!
ECHO.
PAUSE
EXIT /b




 :FreeParking
:FreeParking          21
IF "!Money_Parking:~4,1!" == "" SET Money_Parking=!Money_Parking!
IF "!Money_Parking:~3,1!" == " " SET Money_Parking=!Money_Parking!
IF "!Money_Parking:~2,1!" == " " SET Money_Parking=!Money_Parking!
CLS
ECHO ������������������������������������������������ͻ
ECHO �                  Free Parking                  �
ECHO �                      ����                      �
ECHO �                ����������������                �
ECHO �               �۰���������������               �
ECHO �               ۰�����������۰���               �
ECHO �               ۰���        ۰���               �
ECHO �               ۰�����������۰���               �
ECHO �               ۰����������������               �
ECHO �               ۰���������ܰ�����               �
ECHO �           ����۰����� �� ۰���������           �
ECHO �          �۰�������������߰����������          �
ECHO �          �۰�������������������������          �
ECHO �           ��������������������������           �
ECHO �               ���            ���               �
ECHO �               ���            ���               �
ECHO �                                                �
IF NOT "!Money_Parking:~4,1!" == "" (ECHO � Money stored: $!Money_Parking!                           �) ELSE (IF NOT "!Money_Parking:~3,1!" == "" (ECHO � Money stored: $!Money_Parking!                            �) ELSE (IF NOT "!Money_Parking:~2,1!" == "" (ECHO � Money stored: $!Money_Parking!                             �) ELSE (IF NOT "!Money_Parking:~1,1!" == "" (ECHO � Money stored: $!Money_Parking!                              �) ELSE (ECHO � Money stored: $!Money_Parking!                               �))))
ECHO �                                                �
ECHO � IF you come on this field, you receive all the �
ECHO �   stored money from payments by other fields.  �
ECHO ������������������������������������������������ͼ
ECHO.
ECHO Current player: %Player% (!Char_%Player%!)
ECHO Total money: !Money_%Player%!
ECHO.
SET /a Money_Parking=!Money_Parking!
IF NOT "!Money_Parking!" == "0" (
	SET Puffer=!Money_%Player%!
	SET /a Money_%Player%=!Money_%Player%! + !Money_Parking!
	ECHO ���^> Money increased from $!Puffer! by $!Money_Parking! to $!Money_%Player%!.
	ECHO.
)
SET Money_Parking=0
PAUSE
EXIT /b




 :KentuckyAvenue
:KentuckyAvenue       22
SET Purchase=
SET Buy_House=
SET PayRent=
SET Sell_Street=
IF NOT DEFINED KentuckyAvenue_Houses SET KentuckyAvenue_Houses=0
CLS
ECHO ������������������������ͻ
ECHO �                        �
ECHO �     Kentucky Avenue    �
ECHO �                        �
ECHO �  PRICE $220  RENT $18  �
ECHO � ���������������������� �
ECHO � With 1 House       $90 �
ECHO �                        �
ECHO � With 2 Houses     $250 �
ECHO �                        �
ECHO � With 3 Houses     $700 �
ECHO �                        �
ECHO � With 4 Houses     $875 �
ECHO �                        �
ECHO � With HOTEL       $1050 �
ECHO � ���������������������� �
ECHO �  One house costs $150  �
ECHO �                        �
ECHO �   Mortgage value $110  �
ECHO � ���������������������� �
ECHO �                        �
ECHO ������������������������ͼ
ECHO.
ECHO Current player: %Player% (!Char_%Player%!)
ECHO Total money: !Money_%Player%!
ECHO.
IF "!KentuckyAvenue!" == "%Player%" GOTO :KentuckyAvenue_Houses
IF DEFINED KentuckyAvenue GOTO :KentuckyAvenue_PayRent
ECHO Press [1] to buy this street FOR $220 or
ECHO press [2] to leave it.
SET /p Purchase=
IF "%Purchase%" == "1" (
	SET Puffer=!Money_%Player%!
	SET /a Money_%Player%=!Money_%Player%! - 220
	IF "!Money_%Player%:~0,1!" == "-" (
		ECHO You have NOT enough money.
		SET /a Money_%Player%=!Money_%Player%! + 220
	) ELSE (
		ECHO ���^> Money decreased from $!Puffer! by $220 to $!Money_%Player%!.
		SET KentuckyAvenue=%Player%
	)
	PAUSE
	EXIT /b
)
IF "%Purchase%" == "2" EXIT /b
GOTO :KentuckyAvenue
 :KentuckyAvenue_Houses
:KentuckyAvenue_Houses
IF "!KentuckyAvenue_Houses!" == "5" (
	ECHO This street has got a hotel.
	PAUSE
	EXIT /b
) ELSE (
	ECHO This street has got !KentuckyAvenue_Houses! houses, yet.
	ECHO.
)
ECHO Press [1] to buy a new house or
ECHO press [2] to leave it or
ECHO press [3] to sell it FOR $110.
SET /p Buy_House=
ECHO.
IF "%Buy_House%" == "1" (
	SET Puffer=!Money_%Player%!
	SET /a Money_%Player%=!Money_%Player%! - 150
	IF "!Money_%Player%:~0,1!" == "-" (
		ECHO You have NOT enough money.
		SET /a Money_%Player%=!Money_%Player%! + 150
	) ELSE (
		ECHO ���^> Money decreased from $!Puffer! by $150 to $!Money_%Player%!.
		SET /a KentuckyAvenue_Houses=!KentuckyAvenue_Houses! + 1
		IF NOT "!KentuckyAvenue_Houses!" == "5" (ECHO This street has got !KentuckyAvenue_Houses! houses now.) ELSE (ECHO This street has got a hotel now.)
	)
	PAUSE
	EXIT /b
)
IF "%Buy_House%" == "2" EXIT /b
IF "%Buy_House%" == "3" (
	ECHO Are you sure you want to sell the street? [Y/N]
	SET /p Sell_Street=
	IF /i "!Sell_Street!" == "n" EXIT /b
	IF /i "!Sell_Street!" == "y" (
		SET Puffer=!Money_%Player%!
		SET /a Money_%Player%=!Money_%Player%! + 110
		ECHO ���^> Money increased from $!Puffer! by $110 to $!Money_%Player%!.
		SET KentuckyAvenue=
		SET KentuckyAvenue_Houses=0
	)
)
GOTO :KentuckyAvenue_Houses
 :KentuckyAvenue_PayRent
:KentuckyAvenue_PayRent
IF "!KentuckyAvenue_Houses!" == "0" SET PayRent=18
IF "!KentuckyAvenue_Houses!" == "1" SET PayRent=90
IF "!KentuckyAvenue_Houses!" == "2" SET PayRent=250
IF "!KentuckyAvenue_Houses!" == "3" SET PayRent=700
IF "!KentuckyAvenue_Houses!" == "4" SET PayRent=875
IF "!KentuckyAvenue_Houses!" == "5" SET PayRent=1050
ECHO This street is owned by the other player. You have to pay
ECHO $%PayRent% to pass.
SET Puffer=!Money_%Player%!
SET /a Money_%Player%=!Money_%Player%! - %PayRent%
ECHO ���^> Money decreased from $%Puffer% by $%PayRent% to $!Money_%Player%!.
IF "!Money_%Player%:~0,1!" == "-" (
	ECHO.
	PAUSE
	CLS
	ECHO Player %Player% [!Char_%Player%!] is bankrupt.
	ECHO.
	IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
	ECHO Player !Player! wins the game.
	ECHO.
	PAUSE
	EXIT
)
IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
SET Player=!Player!
SET Puffer=!Money_%Player%!
SET /a Money_%Player%=!Money_%Player%! + %PayRent%
ECHO ���^> The other player's money increased from $%Puffer% by $%PayRent% to $!Money_%Player%!.
IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
SET Player=!Player!
ECHO.
PAUSE
EXIT /b




 :IndianaAvenue
:IndianaAvenue        24
SET Purchase=
SET Buy_House=
SET PayRent=
SET Sell_Street=
IF NOT DEFINED IndianaAvenue_Houses SET IndianaAvenue_Houses=0
CLS
ECHO ������������������������ͻ
ECHO �                        �
ECHO �     Indiana Avenue     �
ECHO �                        �
ECHO �  PRICE $220  RENT $18  �
ECHO � ���������������������� �
ECHO � With 1 House       $90 �
ECHO �                        �
ECHO � With 2 Houses     $250 �
ECHO �                        �
ECHO � With 3 Houses     $700 �
ECHO �                        �
ECHO � With 4 Houses     $875 �
ECHO �                        �
ECHO � With HOTEL       $1050 �
ECHO � ���������������������� �
ECHO �  One house costs $150  �
ECHO �                        �
ECHO �   Mortgage value $110  �
ECHO � ���������������������� �
ECHO �                        �
ECHO ������������������������ͼ
ECHO.
ECHO Current player: %Player% (!Char_%Player%!)
ECHO Total money: !Money_%Player%!
ECHO.
IF "!IndianaAvenue!" == "%Player%" GOTO :IndianaAvenue_Houses
IF DEFINED IndianaAvenue GOTO :IndianaAvenue_PayRent
ECHO Press [1] to buy this street FOR $220 or
ECHO press [2] to leave it.
SET /p Purchase=
IF "%Purchase%" == "1" (
	SET Puffer=!Money_%Player%!
	SET /a Money_%Player%=!Money_%Player%! - 220
	IF "!Money_%Player%:~0,1!" == "-" (
		ECHO You have NOT enough money.
		SET /a Money_%Player%=!Money_%Player%! + 220
	) ELSE (
		ECHO ���^> Money decreased from $!Puffer! by $220 to $!Money_%Player%!.
		SET IndianaAvenue=%Player%
	)
	PAUSE
	EXIT /b
)
IF "%Purchase%" == "2" EXIT /b
GOTO :IndianaAvenue
 :IndianaAvenue_Houses
:IndianaAvenue_Houses
IF "!IndianaAvenue_Houses!" == "5" (
	ECHO This street has got a hotel.
	PAUSE
	EXIT /b
) ELSE (
	ECHO This street has got !IndianaAvenue_Houses! houses, yet.
	ECHO.
)
ECHO Press [1] to buy a new house or
ECHO press [2] to leave it or
ECHO press [3] to sell it FOR $110.
SET /p Buy_House=
ECHO.
IF "%Buy_House%" == "1" (
	SET Puffer=!Money_%Player%!
	SET /a Money_%Player%=!Money_%Player%! - 150
	IF "!Money_%Player%:~0,1!" == "-" (
		ECHO You have NOT enough money.
		SET /a Money_%Player%=!Money_%Player%! + 150
	) ELSE (
		ECHO ���^> Money decreased from $!Puffer! by $150 to $!Money_%Player%!.
		SET /a IndianaAvenue_Houses=!IndianaAvenue_Houses! + 1
		IF NOT "!IndianaAvenue_Houses!" == "5" (ECHO This street has got !IndianaAvenue_Houses! houses now.) ELSE (ECHO This street has got a hotel now.)
	)
	PAUSE
	EXIT /b
)
IF "%Buy_House%" == "2" EXIT /b
IF "%Buy_House%" == "3" (
	ECHO Are you sure you want to sell the street? [Y/N]
	SET /p Sell_Street=
	IF /i "!Sell_Street!" == "n" EXIT /b
	IF /i "!Sell_Street!" == "y" (
		SET Puffer=!Money_%Player%!
		SET /a Money_%Player%=!Money_%Player%! + 110
		ECHO ���^> Money increased from $!Puffer! by $110 to $!Money_%Player%!.
		SET IndianaAvenue=
		SET IndianaAvenue_Houses=0
	)
)
GOTO :IndianaAvenue_Houses
 :IndianaAvenue_PayRent
:IndianaAvenue_PayRent
IF "!IndianaAvenue_Houses!" == "0" SET PayRent=18
IF "!IndianaAvenue_Houses!" == "1" SET PayRent=90
IF "!IndianaAvenue_Houses!" == "2" SET PayRent=250
IF "!IndianaAvenue_Houses!" == "3" SET PayRent=700
IF "!IndianaAvenue_Houses!" == "4" SET PayRent=875
IF "!IndianaAvenue_Houses!" == "5" SET PayRent=1050
ECHO This street is owned by the other player. You have to pay
ECHO $%PayRent% to pass.
SET Puffer=!Money_%Player%!
SET /a Money_%Player%=!Money_%Player%! - %PayRent%
ECHO ���^> Money decreased from $%Puffer% by $%PayRent% to $!Money_%Player%!.
IF "!Money_%Player%:~0,1!" == "-" (
	ECHO.
	PAUSE
	CLS
	ECHO Player %Player% [!Char_%Player%!] is bankrupt.
	ECHO.
	IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
	ECHO Player !Player! wins the game.
	ECHO.
	PAUSE
	EXIT
)
IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
SET Player=!Player!
SET Puffer=!Money_%Player%!
SET /a Money_%Player%=!Money_%Player%! + %PayRent%
ECHO ���^> The other player's money increased from $%Puffer% by $%PayRent% to $!Money_%Player%!.
IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
SET Player=!Player!
ECHO.
PAUSE
EXIT /b




 :IllinoisAvenue
:IllinoisAvenue        25
SET Purchase=
SET Buy_House=
SET PayRent=
SET Sell_Street=
IF NOT DEFINED IllinoisAvenue_Houses SET IllinoisAvenue_Houses=0
CLS
ECHO ������������������������ͻ
ECHO �                        �
ECHO �    Illinois Avenue     �
ECHO �                        �
ECHO �  PRICE $240  RENT $20  �
ECHO � ���������������������� �
ECHO � With 1 House      $100 �
ECHO �                        �
ECHO � With 2 Houses     $300 �
ECHO �                        �
ECHO � With 3 Houses     $750 �
ECHO �                        �
ECHO � With 4 Houses     $925 �
ECHO �                        �
ECHO � With HOTEL       $1100 �
ECHO � ���������������������� �
ECHO �  One house costs $150  �
ECHO �                        �
ECHO �   Mortgage value $120  �
ECHO � ���������������������� �
ECHO �                        �
ECHO ������������������������ͼ
ECHO.
ECHO Current player: %Player% (!Char_%Player%!)
ECHO Total money: !Money_%Player%!
ECHO.
IF "!IllinoisAvenue!" == "%Player%" GOTO :IllinoisAvenue_Houses
IF DEFINED IllinoisAvenue GOTO :IllinoisAvenue_PayRent
ECHO Press [1] to buy this street FOR $240 or
ECHO press [2] to leave it.
SET /p Purchase=
IF "%Purchase%" == "1" (
	SET Puffer=!Money_%Player%!
	SET /a Money_%Player%=!Money_%Player%! - 240
	IF "!Money_%Player%:~0,1!" == "-" (
		ECHO You have NOT enough money.
		SET /a Money_%Player%=!Money_%Player%! + 240
	) ELSE (
		ECHO ���^> Money decreased from $!Puffer! by $240 to $!Money_%Player%!.
		SET IllinoisAvenue=%Player%
	)
	PAUSE
	EXIT /b
)
IF "%Purchase%" == "2" EXIT /b
GOTO :IllinoisAvenue
 :IllinoisAvenue_Houses
:IllinoisAvenue_Houses
IF "!IllinoisAvenue_Houses!" == "5" (
	ECHO This street has got a hotel.
	PAUSE
	EXIT /b
) ELSE (
	ECHO This street has got !IllinoisAvenue_Houses! houses, yet.
	ECHO.
)
ECHO Press [1] to buy a new house or
ECHO press [2] to leave it or
ECHO press [3] to sell it FOR $120.
SET /p Buy_House=
ECHO.
IF "%Buy_House%" == "1" (
	SET Puffer=!Money_%Player%!
	SET /a Money_%Player%=!Money_%Player%! - 150
	IF "!Money_%Player%:~0,1!" == "-" (
		ECHO You have NOT enough money.
		SET /a Money_%Player%=!Money_%Player%! + 150
	) ELSE (
		ECHO ���^> Money decreased from $!Puffer! by $150 to $!Money_%Player%!.
		SET /a IllinoisAvenue_Houses=!IllinoisAvenue_Houses! + 1
		IF NOT "!IllinoisAvenue_Houses!" == "5" (ECHO This street has got !IllinoisAvenue_Houses! houses now.) ELSE (ECHO This street has got a hotel now.)
	)
	PAUSE
	EXIT /b
)
IF "%Buy_House%" == "2" EXIT /b
IF "%Buy_House%" == "3" (
	ECHO Are you sure you want to sell the street? [Y/N]
	SET /p Sell_Street=
	IF /i "!Sell_Street!" == "n" EXIT /b
	IF /i "!Sell_Street!" == "y" (
		SET Puffer=!Money_%Player%!
		SET /a Money_%Player%=!Money_%Player%! + 120
		ECHO ���^> Money increased from $!Puffer! by $120 to $!Money_%Player%!.
		SET IllinoisAvenue=
		SET IllinoisAvenue_Houses=0
	)
)
GOTO :IllinoisAvenue_Houses
 :IllinoisAvenue_PayRent
:IllinoisAvenue_PayRent
IF "!IllinoisAvenue_Houses!" == "0" SET PayRent=20
IF "!IllinoisAvenue_Houses!" == "1" SET PayRent=100
IF "!IllinoisAvenue_Houses!" == "2" SET PayRent=300
IF "!IllinoisAvenue_Houses!" == "3" SET PayRent=750
IF "!IllinoisAvenue_Houses!" == "4" SET PayRent=925
IF "!IllinoisAvenue_Houses!" == "5" SET PayRent=1100
ECHO This street is owned by the other player. You have to pay
ECHO $%PayRent% to pass.
SET Puffer=!Money_%Player%!
SET /a Money_%Player%=!Money_%Player%! - %PayRent%
ECHO ���^> Money decreased from $%Puffer% by $%PayRent% to $!Money_%Player%!.
IF "!Money_%Player%:~0,1!" == "-" (
	ECHO.
	PAUSE
	CLS
	ECHO Player %Player% [!Char_%Player%!] is bankrupt.
	ECHO.
	IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
	ECHO Player !Player! wins the game.
	ECHO.
	PAUSE
	EXIT
)
IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
SET Player=!Player!
SET Puffer=!Money_%Player%!
SET /a Money_%Player%=!Money_%Player%! + %PayRent%
ECHO ���^> The other player's money increased from $%Puffer% by $%PayRent% to $!Money_%Player%!.
IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
SET Player=!Player!
ECHO.
PAUSE
EXIT /b




 :B.O.Railroad
:B.O.Railroad         26
SET Purchase=
SET Buy_House=
SET PayRent=
SET RailroadAmount=0
SET Sell_Street=
CLS
ECHO ������������������������ͻ
ECHO �                        �
ECHO �    B. ^& O. Railroad    �
ECHO �                        �
ECHO �       PRICE $200       �
ECHO � ���������������������� �
ECHO �                        �
ECHO �                        �
ECHO � IF 1 owned         $25 �
ECHO �                        �
ECHO � IF 2 owned         $50 �
ECHO �                        �
ECHO � IF 3 owned        $100 �
ECHO �                        �
ECHO � IF 4 owned        $200 �
ECHO �                        �
ECHO �                        �
ECHO � ���������������������� �
ECHO �   Mortgage value $100  �
ECHO � ���������������������� �
ECHO �                        �
ECHO ������������������������ͼ
ECHO.
ECHO Current player: %Player% (!Char_%Player%!)
ECHO Total money: !Money_%Player%!
ECHO.
IF "!B.O.Railroad!" == "%Player%" GOTO :B.O.Railroad_Houses
IF DEFINED B.O.Railroad GOTO :B.O.Railroad_PayRent
ECHO Press [1] to buy this railroad FOR $200 or
ECHO press [2] to leave it.
SET /p Purchase=
IF "%Purchase%" == "1" (
	SET Puffer=!Money_%Player%!
	SET /a Money_%Player%=!Money_%Player%! - 200
	IF "!Money_%Player%:~0,1!" == "-" (
		ECHO You have NOT enough money.
		SET /a Money_%Player%=!Money_%Player%! + 200
	) ELSE (
		ECHO ���^> Money decreased from $!Puffer! by $200 to $!Money_%Player%!.
		SET B.O.Railroad=%Player%
	)
	PAUSE
	EXIT /b
)
IF "%Purchase%" == "2" EXIT /b
GOTO :B.O.Railroad
 :B.O.Railroad_Houses
:B.O.Railroad_Houses
ECHO This railroad is yours.
ECHO.
ECHO Press [2] to leave it or
ECHO press [3] to sell it FOR $100.
SET /p Buy_House=
ECHO.
IF "%Buy_House%" == "2" EXIT /b
IF "%Buy_House%" == "3" (
	ECHO Are you sure you want to sell this railroad? [Y/N]
	SET /p Sell_Street=
	IF /i "!Sell_Street!" == "n" EXIT /b
	IF /i "!Sell_Street!" == "y" (
		SET Puffer=!Money_%Player%!
		SET /a Money_%Player%=!Money_%Player%! + 100
		ECHO ���^> Money increased from $!Puffer! by $100 to $!Money_%Player%!.
		SET B.O.Railroad=
	)
)
GOTO :B.O.Railroad_Houses
 :B.O.Railroad_PayRent
:B.O.Railroad_PayRent
IF "%Player%" == "1" (SET Player=2) ELSE (SET Player=1)
SET Player=!Player!
FOR %%A IN (ReadingRailroad PennsylvaniaRailroad B.O.Railroad ShortLineRailroad) DO IF "!%%A!" == "%Player%" SET /a RailroadAmount=!RailroadAmount! + 1
IF "%Player%" == "1" (SET Player=2) ELSE (SET Player=1)
SET Player=!Player!
ECHO The other player owns !RailroadAmount! of 4 railroads.
IF "!RailroadAmount!" == "1" SET PayRent=25
IF "!RailroadAmount!" == "2" SET PayRent=50
IF "!RailroadAmount!" == "3" SET PayRent=100
IF "!RailroadAmount!" == "4" SET PayRent=200
IF "!RentalTwice!" == "1" SET /a PayRent=%PayRent% * 2
SET Puffer=!Money_%Player%!
SET /a Money_%Player%=!Money_%Player%! - %PayRent%
ECHO ���^> Money decreased from $%Puffer% by $%PayRent% to $!Money_%Player%!.
IF "!Money_%Player%:~0,1!" == "-" (
	ECHO.
	PAUSE
	CLS
	ECHO Player %Player% [!Char_%Player%!] is bankrupt.
	ECHO.
	IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
	ECHO Player !Player! wins the game.
	ECHO.
	PAUSE
	EXIT
)
IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
SET Player=!Player!
SET Puffer=!Money_%Player%!
SET /a Money_%Player%=!Money_%Player%! + %PayRent%
ECHO ���^> The other player's money increased from $%Puffer% by $%PayRent% to $!Money_%Player%!.
IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
SET Player=!Player!
ECHO.
PAUSE
EXIT /b




 :AtlanticAvenue
:AtlanticAvenue       27
SET Purchase=
SET Buy_House=
SET PayRent=
SET Sell_Street=
IF NOT DEFINED AtlanticAvenue_Houses SET AtlanticAvenue_Houses=0
CLS
ECHO ������������������������ͻ
ECHO �                        �
ECHO �    Atlantic Avenue     �
ECHO �                        �
ECHO �  PRICE $260  RENT $22  �
ECHO � ���������������������� �
ECHO � With 1 House      $110 �
ECHO �                        �
ECHO � With 2 Houses     $330 �
ECHO �                        �
ECHO � With 3 Houses     $800 �
ECHO �                        �
ECHO � With 4 Houses     $975 �
ECHO �                        �
ECHO � With HOTEL       $1150 �
ECHO � ���������������������� �
ECHO �  One house costs $150  �
ECHO �                        �
ECHO �   Mortgage value $130  �
ECHO � ���������������������� �
ECHO �                        �
ECHO ������������������������ͼ
ECHO.
ECHO Current player: %Player% (!Char_%Player%!)
ECHO Total money: !Money_%Player%!
ECHO.
IF "!AtlanticAvenue!" == "%Player%" GOTO :AtlanticAvenue_Houses
IF DEFINED AtlanticAvenue GOTO :AtlanticAvenue_PayRent
ECHO Press [1] to buy this street FOR $260 or
ECHO press [2] to leave it.
SET /p Purchase=
IF "%Purchase%" == "1" (
	SET Puffer=!Money_%Player%!
	SET /a Money_%Player%=!Money_%Player%! - 260
	IF "!Money_%Player%:~0,1!" == "-" (
		ECHO You have NOT enough money.
		SET /a Money_%Player%=!Money_%Player%! + 260
	) ELSE (
		ECHO ���^> Money decreased from $!Puffer! by $260 to $!Money_%Player%!.
		SET AtlanticAvenue=%Player%
	)
	PAUSE
	EXIT /b
)
IF "%Purchase%" == "2" EXIT /b
GOTO :AtlanticAvenue
 :AtlanticAvenue_Houses
:AtlanticAvenue_Houses
IF "!AtlanticAvenue_Houses!" == "5" (
	ECHO This street has got a hotel.
	PAUSE
	EXIT /b
) ELSE (
	ECHO This street has got !AtlanticAvenue_Houses! houses, yet.
	ECHO.
)
ECHO Press [1] to buy a new house or
ECHO press [2] to leave it or
ECHO press [3] to sell it FOR $130.
SET /p Buy_House=
ECHO.
IF "%Buy_House%" == "1" (
	SET Puffer=!Money_%Player%!
	SET /a Money_%Player%=!Money_%Player%! - 150
	IF "!Money_%Player%:~0,1!" == "-" (
		ECHO You have NOT enough money.
		SET /a Money_%Player%=!Money_%Player%! + 150
	) ELSE (
		ECHO ���^> Money decreased from $!Puffer! by $150 to $!Money_%Player%!.
		SET /a AtlanticAvenue_Houses=!AtlanticAvenue_Houses! + 1
		IF NOT "!AtlanticAvenue_Houses!" == "5" (ECHO This street has got !AtlanticAvenue_Houses! houses now.) ELSE (ECHO This street has got a hotel now.)
	)
	PAUSE
	EXIT /b
)
IF "%Buy_House%" == "2" EXIT /b
IF "%Buy_House%" == "3" (
	ECHO Are you sure you want to sell the street? [Y/N]
	SET /p Sell_Street=
	IF /i "!Sell_Street!" == "n" EXIT /b
	IF /i "!Sell_Street!" == "y" (
		SET Puffer=!Money_%Player%!
		SET /a Money_%Player%=!Money_%Player%! + 130
		ECHO ���^> Money increased from $!Puffer! by $130 to $!Money_%Player%!.
		SET AtlanticAvenue=
		SET AtlanticAvenue_Houses=0
	)
)
GOTO :AtlanticAvenue_Houses
 :AtlanticAvenue_PayRent
:AtlanticAvenue_PayRent
IF "!AtlanticAvenue_Houses!" == "0" SET PayRent=22
IF "!AtlanticAvenue_Houses!" == "1" SET PayRent=110
IF "!AtlanticAvenue_Houses!" == "2" SET PayRent=330
IF "!AtlanticAvenue_Houses!" == "3" SET PayRent=800
IF "!AtlanticAvenue_Houses!" == "4" SET PayRent=975
IF "!AtlanticAvenue_Houses!" == "5" SET PayRent=1150
ECHO This street is owned by the other player. You have to pay
ECHO $%PayRent% to pass.
SET Puffer=!Money_%Player%!
SET /a Money_%Player%=!Money_%Player%! - %PayRent%
ECHO ���^> Money decreased from $%Puffer% by $%PayRent% to $!Money_%Player%!.
IF "!Money_%Player%:~0,1!" == "-" (
	ECHO.
	PAUSE
	CLS
	ECHO Player %Player% [!Char_%Player%!] is bankrupt.
	ECHO.
	IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
	ECHO Player !Player! wins the game.
	ECHO.
	PAUSE
	EXIT
)
IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
SET Player=!Player!
SET Puffer=!Money_%Player%!
SET /a Money_%Player%=!Money_%Player%! + %PayRent%
ECHO ���^> The other player's money increased from $%Puffer% by $%PayRent% to $!Money_%Player%!.
IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
SET Player=!Player!
ECHO.
PAUSE
EXIT /b




 :VeninorAvenue
:VeninorAvenue        28
SET Purchase=
SET Buy_House=
SET PayRent=
SET Sell_Street=
IF NOT DEFINED VeninorAvenue_Houses SET VeninorAvenue_Houses=0
CLS
ECHO ������������������������ͻ
ECHO �                        �
ECHO �     Veninor Avenue     �
ECHO �                        �
ECHO �  PRICE $260  RENT $22  �
ECHO � ���������������������� �
ECHO � With 1 House      $110 �
ECHO �                        �
ECHO � With 2 Houses     $330 �
ECHO �                        �
ECHO � With 3 Houses     $800 �
ECHO �                        �
ECHO � With 4 Houses     $975 �
ECHO �                        �
ECHO � With HOTEL       $1150 �
ECHO � ���������������������� �
ECHO �  One house costs $150  �
ECHO �                        �
ECHO �   Mortgage value $130  �
ECHO � ���������������������� �
ECHO �                        �
ECHO ������������������������ͼ
ECHO.
ECHO Current player: %Player% (!Char_%Player%!)
ECHO Total money: !Money_%Player%!
ECHO.
IF "!VeninorAvenue!" == "%Player%" GOTO :VeninorAvenue_Houses
IF DEFINED VeninorAvenue GOTO :VeninorAvenue_PayRent
ECHO Press [1] to buy this street FOR $260 or
ECHO press [2] to leave it.
SET /p Purchase=
IF "%Purchase%" == "1" (
	SET Puffer=!Money_%Player%!
	SET /a Money_%Player%=!Money_%Player%! - 260
	IF "!Money_%Player%:~0,1!" == "-" (
		ECHO You have NOT enough money.
		SET /a Money_%Player%=!Money_%Player%! + 260
	) ELSE (
		ECHO ���^> Money decreased from $!Puffer! by $260 to $!Money_%Player%!.
		SET VeninorAvenue=%Player%
	)
	PAUSE
	EXIT /b
)
IF "%Purchase%" == "2" EXIT /b
GOTO :VeninorAvenue
 :VeninorAvenue_Houses
:VeninorAvenue_Houses
IF "!VeninorAvenue_Houses!" == "5" (
	ECHO This street has got a hotel.
	PAUSE
	EXIT /b
) ELSE (
	ECHO This street has got !VeninorAvenue_Houses! houses, yet.
	ECHO.
)
ECHO Press [1] to buy a new house or
ECHO press [2] to leave it or
ECHO press [3] to sell it FOR $130.
SET /p Buy_House=
ECHO.
IF "%Buy_House%" == "1" (
	SET Puffer=!Money_%Player%!
	SET /a Money_%Player%=!Money_%Player%! - 150
	IF "!Money_%Player%:~0,1!" == "-" (
		ECHO You have NOT enough money.
		SET /a Money_%Player%=!Money_%Player%! + 150
	) ELSE (
		ECHO ���^> Money decreased from $!Puffer! by $150 to $!Money_%Player%!.
		SET /a VeninorAvenue_Houses=!VeninorAvenue_Houses! + 1
		IF NOT "!VeninorAvenue_Houses!" == "5" (ECHO This street has got !VeninorAvenue_Houses! houses now.) ELSE (ECHO This street has got a hotel now.)
	)
	PAUSE
	EXIT /b
)
IF "%Buy_House%" == "2" EXIT /b
IF "%Buy_House%" == "3" (
	ECHO Are you sure you want to sell the street? [Y/N]
	SET /p Sell_Street=
	IF /i "!Sell_Street!" == "n" EXIT /b
	IF /i "!Sell_Street!" == "y" (
		SET Puffer=!Money_%Player%!
		SET /a Money_%Player%=!Money_%Player%! + 130
		ECHO ���^> Money increased from $!Puffer! by $130 to $!Money_%Player%!.
		SET VeninorAvenue=
		SET VeninorAvenue_Houses=0
	)
)
GOTO :VeninorAvenue_Houses
 :VeninorAvenue_PayRent
:VeninorAvenue_PayRent
IF "!VeninorAvenue_Houses!" == "0" SET PayRent=22
IF "!VeninorAvenue_Houses!" == "1" SET PayRent=110
IF "!VeninorAvenue_Houses!" == "2" SET PayRent=330
IF "!VeninorAvenue_Houses!" == "3" SET PayRent=800
IF "!VeninorAvenue_Houses!" == "4" SET PayRent=975
IF "!VeninorAvenue_Houses!" == "5" SET PayRent=1150
ECHO This street is owned by the other player. You have to pay
ECHO $%PayRent% to pass.
SET Puffer=!Money_%Player%!
SET /a Money_%Player%=!Money_%Player%! - %PayRent%
ECHO ���^> Money decreased from $%Puffer% by $%PayRent% to $!Money_%Player%!.
IF "!Money_%Player%:~0,1!" == "-" (
	ECHO.
	PAUSE
	CLS
	ECHO Player %Player% [!Char_%Player%!] is bankrupt.
	ECHO.
	IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
	ECHO Player !Player! wins the game.
	ECHO.
	PAUSE
	EXIT
)
IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
SET Player=!Player!
SET Puffer=!Money_%Player%!
SET /a Money_%Player%=!Money_%Player%! + %PayRent%
ECHO ���^> The other player's money increased from $%Puffer% by $%PayRent% to $!Money_%Player%!.
IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
SET Player=!Player!
ECHO.
PAUSE
EXIT /b




 :WaterWorks
:WaterWorks           29
SET Purchase=
SET Buy_House=
SET PayRent=
SET CompanyAmount=0
SET Sell_Street=
CLS
ECHO ������������������������ͻ
ECHO �                        �
ECHO �      Water Works       �
ECHO �                        �
ECHO �       PRICE $150       �
ECHO � ���������������������� �
ECHO �                        �
ECHO �                        �
ECHO �IF 1 owned, rent EQUals �
ECHO �                        �
ECHO �   4 times dice roll    �
ECHO �                        �
ECHO �                        �
ECHO �IF 2 owned, rent EQUals �
ECHO �                        �
ECHO �  10 times dice roll    �
ECHO �                        �
ECHO � ���������������������� �
ECHO �   Mortgage value $75   �
ECHO � ���������������������� �
ECHO �                        �
ECHO ������������������������ͼ
ECHO.
ECHO Current player: %Player% (!Char_%Player%!)
ECHO Total money: !Money_%Player%!
ECHO.
IF "!WaterWorks!" == "%Player%" GOTO :WaterWorks_Houses
IF DEFINED WaterWorks GOTO :WaterWorks_PayRent
ECHO Press [1] to buy this street FOR $150 or
ECHO press [2] to leave it.
SET /p Purchase=
IF "%Purchase%" == "1" (
	SET Puffer=!Money_%Player%!
	SET /a Money_%Player%=!Money_%Player%! - 150
	IF "!Money_%Player%:~0,1!" == "-" (
		ECHO You have NOT enough money.
		SET /a Money_%Player%=!Money_%Player%! + 150
	) ELSE (
		ECHO ���^> Money decreased from $!Puffer! by $150 to $!Money_%Player%!.
		SET WaterWorks=%Player%
	)
	PAUSE
	EXIT /b
)
IF "%Purchase%" == "2" EXIT /b
GOTO :WaterWorks
 :WaterWorks_Houses
:WaterWorks_Houses
ECHO Press [2] to leave it or
ECHO press [3] to sell it FOR $75.
SET /p Buy_House=
ECHO.
IF "%Buy_House%" == "2" EXIT /b
IF "%Buy_House%" == "3" (
	ECHO Are you sure you want to sell this street? [Y/N]
	SET /p Sell_Street=
	IF /i "!Sell_Street!" == "n" EXIT /b
	IF /i "!Sell_Street!" == "y" (
		SET Puffer=!Money_%Player%!
		SET /a Money_%Player%=!Money_%Player%! + 75
		ECHO ���^> Money increased from $!Puffer! by $75 to $!Money_%Player%!.
		SET WaterWorks=
	)
)
GOTO :ElectricCompany_Houses
 :WaterWorks_PayRent
:WaterWorks_PayRent
IF "%Player%" == "1" (SET Player=2) ELSE (SET Player=1)
SET Player=!Player!
IF "!ElectricCompany!" == "%Player%" SET /a CompanyAmount=!CompanyAmount! + 1
IF "!WaterWorks!" == "%Player%" SET /a CompanyAmount=!CompanyAmount! + 1
IF "%Player%" == "1" (SET Player=2) ELSE (SET Player=1)
SET Player=!Player!
ECHO The other player owns !CompanyAmount! of 2 companies.
IF "!CompanyAmount!" == "1" SET /a PayRent=%Dice% * 4
IF "!CompanyAmount!" == "2" SET /a PayRent=%Dice% * 10
IF "%1" == "CameByChance" SET /a PayRent=!Dice! * 10
SET Puffer=!Money_%Player%!
SET /a Money_%Player%=!Money_%Player%! - %PayRent%
ECHO ���^> Money decreased from $%Puffer% by $%PayRent% to $!Money_%Player%!.
IF "!Money_%Player%:~0,1!" == "-" (
	ECHO.
	PAUSE
	CLS
	ECHO Player %Player% [!Char_%Player%!] is bankrupt.
	ECHO.
	IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
	ECHO Player !Player! wins the game.
	ECHO.
	PAUSE
	EXIT
)
IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
SET Player=!Player!
SET Puffer=!Money_%Player%!
SET /a Money_%Player%=!Money_%Player%! + %PayRent%
ECHO ���^> The other player's money increased from $%Puffer% by $%PayRent% to $!Money_%Player%!.
IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
SET Player=!Player!
ECHO.
PAUSE
EXIT /b




 :MarvinGardens
:MarvinGardens        30
SET Purchase=
SET Buy_House=
SET PayRent=
SET Sell_Street=
IF NOT DEFINED MarvinGardens_Houses SET MarvinGardens_Houses=0
CLS
ECHO ������������������������ͻ
ECHO �                        �
ECHO �     Marvin Gardens     �
ECHO �                        �
ECHO �  PRICE $280  RENT $24  �
ECHO � ���������������������� �
ECHO � With 1 House      $120 �
ECHO �                        �
ECHO � With 2 Houses     $360 �
ECHO �                        �
ECHO � With 3 Houses     $850 �
ECHO �                        �
ECHO � With 4 Houses    $1025 �
ECHO �                        �
ECHO � With HOTEL       $1200 �
ECHO � ���������������������� �
ECHO �  One house costs $150  �
ECHO �                        �
ECHO �   Mortgage value $140  �
ECHO � ���������������������� �
ECHO �                        �
ECHO ������������������������ͼ
ECHO.
ECHO Current player: %Player% (!Char_%Player%!)
ECHO Total money: !Money_%Player%!
ECHO.
IF "!MarvinGardens!" == "%Player%" GOTO :MarvinGardens_Houses
IF DEFINED MarvinGardens GOTO :MarvinGardens_PayRent
ECHO Press [1] to buy this street FOR $280 or
ECHO press [2] to leave it.
SET /p Purchase=
IF "%Purchase%" == "1" (
	SET Puffer=!Money_%Player%!
	SET /a Money_%Player%=!Money_%Player%! - 280
	IF "!Money_%Player%:~0,1!" == "-" (
		ECHO You have NOT enough money.
		SET /a Money_%Player%=!Money_%Player%! + 280
	) ELSE (
		ECHO ���^> Money decreased from $!Puffer! by $280 to $!Money_%Player%!.
		SET MarvinGardens=%Player%
	)
	PAUSE
	EXIT /b
)
IF "%Purchase%" == "2" EXIT /b
GOTO :MarvinGardens
 :MarvinGardens_Houses
:MarvinGardens_Houses
IF "!MarvinGardens_Houses!" == "5" (
	ECHO This street has got a hotel.
	PAUSE
	EXIT /b
) ELSE (
	ECHO This street has got !MarvinGardens_Houses! houses, yet.
	ECHO.
)
ECHO Press [1] to buy a new house or
ECHO press [2] to leave it or
ECHO press [3] to sell it FOR $140.
SET /p Buy_House=
ECHO.
IF "%Buy_House%" == "1" (
	SET Puffer=!Money_%Player%!
	SET /a Money_%Player%=!Money_%Player%! - 150
	IF "!Money_%Player%:~0,1!" == "-" (
		ECHO You have NOT enough money.
		SET /a Money_%Player%=!Money_%Player%! + 150
	) ELSE (
		ECHO ���^> Money decreased from $!Puffer! by $150 to $!Money_%Player%!.
		SET /a MarvinGardens_Houses=!MarvinGardens_Houses! + 1
		IF NOT "!MarvinGardens_Houses!" == "5" (ECHO This street has got !MarvinGardens_Houses! houses now.) ELSE (ECHO This street has got a hotel now.)
	)
	PAUSE
	EXIT /b
)
IF "%Buy_House%" == "2" EXIT /b
IF "%Buy_House%" == "3" (
	ECHO Are you sure you want to sell the street? [Y/N]
	SET /p Sell_Street=
	IF /i "!Sell_Street!" == "n" EXIT /b
	IF /i "!Sell_Street!" == "y" (
		SET Puffer=!Money_%Player%!
		SET /a Money_%Player%=!Money_%Player%! + 140
		ECHO ���^> Money increased from $!Puffer! by $140 to $!Money_%Player%!.
		SET MarvinGardens=
		SET MarvinGardens_Houses=0
	)
)
GOTO :MarvinGardens_Houses
 :MarvinGardens_PayRent
:MarvinGardens_PayRent
IF "!MarvinGardens_Houses!" == "0" SET PayRent=24
IF "!MarvinGardens_Houses!" == "1" SET PayRent=120
IF "!MarvinGardens_Houses!" == "2" SET PayRent=360
IF "!MarvinGardens_Houses!" == "3" SET PayRent=850
IF "!MarvinGardens_Houses!" == "4" SET PayRent=1025
IF "!MarvinGardens_Houses!" == "5" SET PayRent=1200
ECHO This street is owned by the other player. You have to pay
ECHO $%PayRent% to pass.
SET Puffer=!Money_%Player%!
SET /a Money_%Player%=!Money_%Player%! - %PayRent%
ECHO ���^> Money decreased from $%Puffer% by $%PayRent% to $!Money_%Player%!.
IF "!Money_%Player%:~0,1!" == "-" (
	ECHO.
	PAUSE
	CLS
	ECHO Player %Player% [!Char_%Player%!] is bankrupt.
	ECHO.
	IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
	ECHO Player !Player! wins the game.
	ECHO.
	PAUSE
	EXIT
)
IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
SET Player=!Player!
SET Puffer=!Money_%Player%!
SET /a Money_%Player%=!Money_%Player%! + %PayRent%
ECHO ���^> The other player's money increased from $%Puffer% by $%PayRent% to $!Money_%Player%!.
IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
SET Player=!Player!
ECHO.
PAUSE
EXIT /b




 :SendToJail
:SendToJail           31
SET Field!Player%Player%Position!_%Player%=
CALL :SetFields
SET Field11_J_%Player%=!Char_%Player%!
SET Player%Player%Position=11
CLS
ECHO ������������������������������������������������ͻ
ECHO �       EDEE                                     �
ECHO �    DELLffD              Go to jail.            �
ECHO �  DffLfLLD                                      �
ECHO � ,   fGDED                                      �
ECHO � ,       L          G                           �
ECHO � E    �^>  .        GL                           �
ECHO � .L       LGj     D                             �
ECHO �  G      i..E    D G                            �
ECHO �  t,       D    D / f                           �
ECHO �  jDE     D    D    D                           �
ECHO �  Ei      D-E D   tDt                           �
ECHO � EfDD    DGD  j     D                           �
ECHO � DLLELEGjD   GE  .DDf                           �
ECHO � ,GLLD.E    D    D IF                           �
ECHO � ,fELLLEKLELLE LLL                              �
ECHO �DfLKLLLLKLLLLDD         DO NOT walk over Go,    �
ECHO �DfLLELLDGLLLLfE         DO NOT collect $200.    �
ECHO �DfffLLfLLLLfL,                                  �
ECHO �DfffLfffLLffE                                   �
ECHO �GGGGGGGDLiE                                     �
ECHO ������������������������������������������������ͼ
ECHO.
IF "%1" == "Doublets" (
	ECHO You got three doublets IN a row.
	IF "%Player%" == "1" (SET Player=2) ELSE (SET Player=1)
)
SET Player=!Player!
PAUSE
EXIT /b




 :PacIFicAvenue
:PacIFicAvenue        32
SET Purchase=
SET Buy_House=
SET PayRent=
SET Sell_Street=
IF NOT DEFINED PacIFicAvenue_Houses SET PacIFicAvenue_Houses=0
CLS
ECHO ������������������������ͻ
ECHO �                        �
ECHO �     PacIFic Avenue     �
ECHO �                        �
ECHO �  PRICE $300  RENT $26  �
ECHO � ���������������������� �
ECHO � With 1 House      $130 �
ECHO �                        �
ECHO � With 2 Houses     $390 �
ECHO �                        �
ECHO � With 3 Houses     $900 �
ECHO �                        �
ECHO � With 4 Houses    $1100 �
ECHO �                        �
ECHO � With HOTEL       $1275 �
ECHO � ���������������������� �
ECHO �  One house costs $200  �
ECHO �                        �
ECHO �   Mortgage value $150  �
ECHO � ���������������������� �
ECHO �                        �
ECHO ������������������������ͼ
ECHO.
ECHO Current player: %Player% (!Char_%Player%!)
ECHO Total money: !Money_%Player%!
ECHO.
IF "!PacIFicAvenue!" == "%Player%" GOTO :PacIFicAvenue_Houses
IF DEFINED PacIFicAvenue GOTO :PacIFicAvenue_PayRent
ECHO Press [1] to buy this street FOR $300 or
ECHO press [2] to leave it.
SET /p Purchase=
IF "%Purchase%" == "1" (
	SET Puffer=!Money_%Player%!
	SET /a Money_%Player%=!Money_%Player%! - 300
	IF "!Money_%Player%:~0,1!" == "-" (
		ECHO You have NOT enough money.
		SET /a Money_%Player%=!Money_%Player%! + 300
	) ELSE (
		ECHO ���^> Money decreased from $!Puffer! by $300 to $!Money_%Player%!.
		SET PacIFicAvenue=%Player%
	)
	PAUSE
	EXIT /b
)
IF "%Purchase%" == "2" EXIT /b
GOTO :PacIFicAvenue
 :PacIFicAvenue_Houses
:PacIFicAvenue_Houses
IF "!PacIFicAvenue_Houses!" == "5" (
	ECHO This street has got a hotel.
	PAUSE
	EXIT /b
) ELSE (
	ECHO This street has got !PacIFicAvenue_Houses! houses, yet.
	ECHO.
)
ECHO Press [1] to buy a new house or
ECHO press [2] to leave it or
ECHO press [3] to sell it FOR $150.
SET /p Buy_House=
ECHO.
IF "%Buy_House%" == "1" (
	SET Puffer=!Money_%Player%!
	SET /a Money_%Player%=!Money_%Player%! - 200
	IF "!Money_%Player%:~0,1!" == "-" (
		ECHO You have NOT enough money.
		SET /a Money_%Player%=!Money_%Player%! + 200
	) ELSE (
		ECHO ���^> Money decreased from $!Puffer! by $200 to $!Money_%Player%!.
		SET /a PacIFicAvenue_Houses=!PacIFicAvenue_Houses! + 1
		IF NOT "!PacIFicAvenue_Houses!" == "5" (ECHO This street has got !PacIFicAvenue_Houses! houses now.) ELSE (ECHO This street has got a hotel now.)
	)
	PAUSE
	EXIT /b
)
IF "%Buy_House%" == "2" EXIT /b
IF "%Buy_House%" == "3" (
	ECHO Are you sure you want to sell the street? [Y/N]
	SET /p Sell_Street=
	IF /i "!Sell_Street!" == "n" EXIT /b
	IF /i "!Sell_Street!" == "y" (
		SET Puffer=!Money_%Player%!
		SET /a Money_%Player%=!Money_%Player%! + 150
		ECHO ���^> Money increased from $!Puffer! by $150 to $!Money_%Player%!.
		SET PacIFicAvenue=
		SET PacIFicAvenue_Houses=0
	)
)
GOTO :PacIFicAvenue_Houses
 :PacIFicAvenue_PayRent
:PacIFicAvenue_PayRent
IF "!PacIFicAvenue_Houses!" == "0" SET PayRent=26
IF "!PacIFicAvenue_Houses!" == "1" SET PayRent=130
IF "!PacIFicAvenue_Houses!" == "2" SET PayRent=390
IF "!PacIFicAvenue_Houses!" == "3" SET PayRent=900
IF "!PacIFicAvenue_Houses!" == "4" SET PayRent=1100
IF "!PacIFicAvenue_Houses!" == "5" SET PayRent=1275
ECHO This street is owned by the other player. You have to pay
ECHO $%PayRent% to pass.
SET Puffer=!Money_%Player%!
SET /a Money_%Player%=!Money_%Player%! - %PayRent%
ECHO ���^> Money decreased from $%Puffer% by $%PayRent% to $!Money_%Player%!.
IF "!Money_%Player%:~0,1!" == "-" (
	ECHO.
	PAUSE
	CLS
	ECHO Player %Player% [!Char_%Player%!] is bankrupt.
	ECHO.
	IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
	ECHO Player !Player! wins the game.
	ECHO.
	PAUSE
	EXIT
)
IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
SET Player=!Player!
SET Puffer=!Money_%Player%!
SET /a Money_%Player%=!Money_%Player%! + %PayRent%
ECHO ���^> The other player's money increased from $%Puffer% by $%PayRent% to $!Money_%Player%!.
IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
SET Player=!Player!
ECHO.
PAUSE
EXIT /b




 :NorthCarolinaAvenue
:NorthCarolinaAvenue  33
SET Purchase=
SET Buy_House=
SET PayRent=
SET Sell_Street=
IF NOT DEFINED NorthCarolinaAvenue_Houses SET NorthCarolinaAvenue_Houses=0
CLS
ECHO ������������������������ͻ
ECHO �                        �
ECHO � North Carolina Avenue  �
ECHO �                        �
ECHO �  PRICE $300  RENT $26  �
ECHO � ���������������������� �
ECHO � With 1 House      $130 �
ECHO �                        �
ECHO � With 2 Houses     $390 �
ECHO �                        �
ECHO � With 3 Houses     $900 �
ECHO �                        �
ECHO � With 4 Houses    $1100 �
ECHO �                        �
ECHO � With HOTEL       $1275 �
ECHO � ���������������������� �
ECHO �  One house costs $200  �
ECHO �                        �
ECHO �   Mortgage value $150  �
ECHO � ���������������������� �
ECHO �                        �
ECHO ������������������������ͼ
ECHO.
ECHO Current player: %Player% (!Char_%Player%!)
ECHO Total money: !Money_%Player%!
ECHO.
IF "!NorthCarolinaAvenue!" == "%Player%" GOTO :NorthCarolinaAvenue_Houses
IF DEFINED NorthCarolinaAvenue GOTO :NorthCarolinaAvenue_PayRent
ECHO Press [1] to buy this street FOR $300 or
ECHO press [2] to leave it.
SET /p Purchase=
IF "%Purchase%" == "1" (
	SET Puffer=!Money_%Player%!
	SET /a Money_%Player%=!Money_%Player%! - 300
	IF "!Money_%Player%:~0,1!" == "-" (
		ECHO You have NOT enough money.
		SET /a Money_%Player%=!Money_%Player%! + 300
	) ELSE (
		ECHO ���^> Money decreased from $!Puffer! by $300 to $!Money_%Player%!.
		SET NorthCarolinaAvenue=%Player%
	)
	PAUSE
	EXIT /b
)
IF "%Purchase%" == "2" EXIT /b
GOTO :NorthCarolinaAvenue
 :NorthCarolinaAvenue_Houses
:NorthCarolinaAvenue_Houses
IF "!NorthCarolinaAvenue_Houses!" == "5" (
	ECHO This street has got a hotel.
	PAUSE
	EXIT /b
) ELSE (
	ECHO This street has got !NorthCarolinaAvenue_Houses! houses, yet.
	ECHO.
)
ECHO Press [1] to buy a new house or
ECHO press [2] to leave it or
ECHO press [3] to sell it FOR $150.
SET /p Buy_House=
ECHO.
IF "%Buy_House%" == "1" (
	SET Puffer=!Money_%Player%!
	SET /a Money_%Player%=!Money_%Player%! - 200
	IF "!Money_%Player%:~0,1!" == "-" (
		ECHO You have NOT enough money.
		SET /a Money_%Player%=!Money_%Player%! + 200
	) ELSE (
		ECHO ���^> Money decreased from $!Puffer! by $200 to $!Money_%Player%!.
		SET /a NorthCarolinaAvenue_Houses=!NorthCarolinaAvenue_Houses! + 1
		IF NOT "!NorthCarolinaAvenue_Houses!" == "5" (ECHO This street has got !NorthCarolinaAvenue_Houses! houses now.) ELSE (ECHO This street has got a hotel now.)
	)
	PAUSE
	EXIT /b
)
IF "%Buy_House%" == "2" EXIT /b
IF "%Buy_House%" == "3" (
	ECHO Are you sure you want to sell the street? [Y/N]
	SET /p Sell_Street=
	IF /i "!Sell_Street!" == "n" EXIT /b
	IF /i "!Sell_Street!" == "y" (
		SET Puffer=!Money_%Player%!
		SET /a Money_%Player%=!Money_%Player%! + 150
		ECHO ���^> Money increased from $!Puffer! by $150 to $!Money_%Player%!.
		SET NorthCarolinaAvenue=
		SET NorthCarolinaAvenue_Houses=0
	)
)
GOTO :NorthCarolinaAvenue_Houses
 :NorthCarolinaAvenue_PayRent
:NorthCarolinaAvenue_PayRent
IF "!NorthCarolinaAvenue_Houses!" == "0" SET PayRent=26
IF "!NorthCarolinaAvenue_Houses!" == "1" SET PayRent=130
IF "!NorthCarolinaAvenue_Houses!" == "2" SET PayRent=390
IF "!NorthCarolinaAvenue_Houses!" == "3" SET PayRent=900
IF "!NorthCarolinaAvenue_Houses!" == "4" SET PayRent=1100
IF "!NorthCarolinaAvenue_Houses!" == "5" SET PayRent=1275
ECHO This street is owned by the other player. You have to pay
ECHO $%PayRent% to pass.
SET Puffer=!Money_%Player%!
SET /a Money_%Player%=!Money_%Player%! - %PayRent%
ECHO ���^> Money decreased from $%Puffer% by $%PayRent% to $!Money_%Player%!.
IF "!Money_%Player%:~0,1!" == "-" (
	ECHO.
	PAUSE
	CLS
	ECHO Player %Player% [!Char_%Player%!] is bankrupt.
	ECHO.
	IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
	ECHO Player !Player! wins the game.
	ECHO.
	PAUSE
	EXIT
)
IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
SET Player=!Player!
SET Puffer=!Money_%Player%!
SET /a Money_%Player%=!Money_%Player%! + %PayRent%
ECHO ���^> The other player's money increased from $%Puffer% by $%PayRent% to $!Money_%Player%!.
IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
SET Player=!Player!
ECHO.
PAUSE
EXIT /b




 :PennsylvaniaAvenue
:PennsylvaniaAvenue   35
SET Purchase=
SET Buy_House=
SET PayRent=
SET Sell_Street=
IF NOT DEFINED PennsylvaniaAvenue_Houses SET PennsylvaniaAvenue_Houses=0
CLS
ECHO ������������������������ͻ
ECHO �                        �
ECHO �  Pennsylvania Avenue   �
ECHO �                        �
ECHO �  PRICE $320  RENT $28  �
ECHO � ���������������������� �
ECHO � With 1 House      $150 �
ECHO �                        �
ECHO � With 2 Houses     $450 �
ECHO �                        �
ECHO � With 3 Houses    $1000 �
ECHO �                        �
ECHO � With 4 Houses    $1200 �
ECHO �                        �
ECHO � With HOTEL       $1400 �
ECHO � ���������������������� �
ECHO �  One house costs $200  �
ECHO �                        �
ECHO �   Mortgage value $160  �
ECHO � ���������������������� �
ECHO �                        �
ECHO ������������������������ͼ
ECHO.
ECHO Current player: %Player% (!Char_%Player%!)
ECHO Total money: !Money_%Player%!
ECHO.
IF "!PennsylvaniaAvenue!" == "%Player%" GOTO :PennsylvaniaAvenue_Houses
IF DEFINED PennsylvaniaAvenue GOTO :PennsylvaniaAvenue_PayRent
ECHO Press [1] to buy this street FOR $320 or
ECHO press [2] to leave it.
SET /p Purchase=
IF "%Purchase%" == "1" (
	SET Puffer=!Money_%Player%!
	SET /a Money_%Player%=!Money_%Player%! - 320
	IF "!Money_%Player%:~0,1!" == "-" (
		ECHO You have NOT enough money.
		SET /a Money_%Player%=!Money_%Player%! + 320
	) ELSE (
		ECHO ���^> Money decreased from $!Puffer! by $320 to $!Money_%Player%!.
		SET PennsylvaniaAvenue=%Player%
	)
	PAUSE
	EXIT /b
)
IF "%Purchase%" == "2" EXIT /b
GOTO :PennsylvaniaAvenue
 :PennsylvaniaAvenue_Houses
:PennsylvaniaAvenue_Houses
IF "!PennsylvaniaAvenue_Houses!" == "5" (
	ECHO This street has got a hotel.
	PAUSE
	EXIT /b
) ELSE (
	ECHO This street has got !PennsylvaniaAvenue_Houses! houses, yet.
	ECHO.
)
ECHO Press [1] to buy a new house or
ECHO press [2] to leave it or
ECHO press [3] to sell it FOR $160.
SET /p Buy_House=
ECHO.
IF "%Buy_House%" == "1" (
	SET Puffer=!Money_%Player%!
	SET /a Money_%Player%=!Money_%Player%! - 200
	IF "!Money_%Player%:~0,1!" == "-" (
		ECHO You have NOT enough money.
		SET /a Money_%Player%=!Money_%Player%! + 200
	) ELSE (
		ECHO ���^> Money decreased from $!Puffer! by $200 to $!Money_%Player%!.
		SET /a PennsylvaniaAvenue_Houses=!PennsylvaniaAvenue_Houses! + 1
		IF NOT "!PennsylvaniaAvenue_Houses!" == "5" (ECHO This street has got !PennsylvaniaAvenue_Houses! houses now.) ELSE (ECHO This street has got a hotel now.)
	)
	PAUSE
	EXIT /b
)
IF "%Buy_House%" == "2" EXIT /b
IF "%Buy_House%" == "3" (
	ECHO Are you sure you want to sell the street? [Y/N]
	SET /p Sell_Street=
	IF /i "!Sell_Street!" == "n" EXIT /b
	IF /i "!Sell_Street!" == "y" (
		SET Puffer=!Money_%Player%!
		SET /a Money_%Player%=!Money_%Player%! + 160
		ECHO ���^> Money increased from $!Puffer! by $160 to $!Money_%Player%!.
		SET PennsylvaniaAvenue=
		SET PennsylvaniaAvenue_Houses=0
	)
)
GOTO :PennsylvaniaAvenue_Houses
 :PennsylvaniaAvenue_PayRent
:PennsylvaniaAvenue_PayRent
IF "!PennsylvaniaAvenue_Houses!" == "0" SET PayRent=28
IF "!PennsylvaniaAvenue_Houses!" == "1" SET PayRent=150
IF "!PennsylvaniaAvenue_Houses!" == "2" SET PayRent=450
IF "!PennsylvaniaAvenue_Houses!" == "3" SET PayRent=1000
IF "!PennsylvaniaAvenue_Houses!" == "4" SET PayRent=1200
IF "!PennsylvaniaAvenue_Houses!" == "5" SET PayRent=1400
ECHO This street is owned by the other player. You have to pay
ECHO $%PayRent% to pass.
SET Puffer=!Money_%Player%!
SET /a Money_%Player%=!Money_%Player%! - %PayRent%
ECHO ���^> Money decreased from $%Puffer% by $%PayRent% to $!Money_%Player%!.
IF "!Money_%Player%:~0,1!" == "-" (
	ECHO.
	PAUSE
	CLS
	ECHO Player %Player% [!Char_%Player%!] is bankrupt.
	ECHO.
	IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
	ECHO Player !Player! wins the game.
	ECHO.
	PAUSE
	EXIT
)
IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
SET Player=!Player!
SET Puffer=!Money_%Player%!
SET /a Money_%Player%=!Money_%Player%! + %PayRent%
ECHO ���^> The other player's money increased from $%Puffer% by $%PayRent% to $!Money_%Player%!.
IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
SET Player=!Player!
ECHO.
PAUSE
EXIT /b




 :ShortLineRailroad
:ShortLineRailroad    36
SET Purchase=
SET Buy_House=
SET PayRent=
SET RailroadAmount=0
SET Sell_Street=
CLS
ECHO ������������������������ͻ
ECHO �                        �
ECHO �       Short Line       �
ECHO �                        �
ECHO �       PRICE $200       �
ECHO � ���������������������� �
ECHO �                        �
ECHO �                        �
ECHO � IF 1 owned         $25 �
ECHO �                        �
ECHO � IF 2 owned         $50 �
ECHO �                        �
ECHO � IF 3 owned        $100 �
ECHO �                        �
ECHO � IF 4 owned        $200 �
ECHO �                        �
ECHO �                        �
ECHO � ���������������������� �
ECHO �   Mortgage value $100  �
ECHO � ���������������������� �
ECHO �                        �
ECHO ������������������������ͼ
ECHO.
ECHO Current player: %Player% (!Char_%Player%!)
ECHO Total money: !Money_%Player%!
ECHO.
IF "!ShortLineRailroad!" == "%Player%" GOTO :ShortLineRailroad_Houses
IF DEFINED ShortLineRailroad GOTO :ShortLineRailroad_PayRent
ECHO Press [1] to buy this railroad FOR $200 or
ECHO press [2] to leave it.
SET /p Purchase=
IF "%Purchase%" == "1" (
	SET Puffer=!Money_%Player%!
	SET /a Money_%Player%=!Money_%Player%! - 200
	IF "!Money_%Player%:~0,1!" == "-" (
		ECHO You have NOT enough money.
		SET /a Money_%Player%=!Money_%Player%! + 200
	) ELSE (
		ECHO ���^> Money decreased from $!Puffer! by $200 to $!Money_%Player%!.
		SET ShortLineRailroad=%Player%
	)
	PAUSE
	EXIT /b
)
IF "%Purchase%" == "2" EXIT /b
GOTO :ShortLineRailroad
 :ShortLineRailroad_Houses
:ShortLineRailroad_Houses
ECHO This railroad is yours.
ECHO.
ECHO Press [2] to leave it or
ECHO press [3] to sell it FOR $100.
SET /p Buy_House=
ECHO.
IF "%Buy_House%" == "2" EXIT /b
IF "%Buy_House%" == "3" (
	ECHO Are you sure you want to sell this railroad? [Y/N]
	SET /p Sell_Street=
	IF /i "!Sell_Street!" == "n" EXIT /b
	IF /i "!Sell_Street!" == "y" (
		SET Puffer=!Money_%Player%!
		SET /a Money_%Player%=!Money_%Player%! + 100
		ECHO ���^> Money increased from $!Puffer! by $100 to $!Money_%Player%!.
		SET ShortLineRailroad=
	)
)
GOTO :ShortLineRailroad_Houses
 :ShortLineRailroad_PayRent
:ShortLineRailroad_PayRent
IF "%Player%" == "1" (SET Player=2) ELSE (SET Player=1)
SET Player=!Player!
FOR %%A IN (ReadingRailroad PennsylvaniaRailroad B.O.Railroad ShortLineRailroad) DO IF "!%%A!" == "%Player%" SET /a RailroadAmount=!RailroadAmount! + 1
IF "%Player%" == "1" (SET Player=2) ELSE (SET Player=1)
SET Player=!Player!
ECHO The other player owns !RailroadAmount! of 4 railroads.
IF "!RailroadAmount!" == "1" SET PayRent=25
IF "!RailroadAmount!" == "2" SET PayRent=50
IF "!RailroadAmount!" == "3" SET PayRent=100
IF "!RailroadAmount!" == "4" SET PayRent=200
IF "!RentalTwice!" == "1" SET /a PayRent=%PayRent% * 2
SET Puffer=!Money_%Player%!
SET /a Money_%Player%=!Money_%Player%! - %PayRent%
ECHO ���^> Money decreased from $%Puffer% by $%PayRent% to $!Money_%Player%!.
IF "!Money_%Player%:~0,1!" == "-" (
	ECHO.
	PAUSE
	CLS
	ECHO Player %Player% [!Char_%Player%!] is bankrupt.
	ECHO.
	IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
	ECHO Player !Player! wins the game.
	ECHO.
	PAUSE
	EXIT
)
IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
SET Player=!Player!
SET Puffer=!Money_%Player%!
SET /a Money_%Player%=!Money_%Player%! + %PayRent%
ECHO ���^> The other player's money increased from $%Puffer% by $%PayRent% to $!Money_%Player%!.
IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
SET Player=!Player!
ECHO.
PAUSE
EXIT /b




 :ParkPlace
:ParkPlace            38
SET Purchase=
SET Buy_House=
SET PayRent=
SET Sell_Street=
IF NOT DEFINED ParkPlace_Houses SET ParkPlace_Houses=0
CLS
ECHO ������������������������ͻ
ECHO �                        �
ECHO �       Park Place       �
ECHO �                        �
ECHO �  PRICE $350  RENT $35  �
ECHO � ���������������������� �
ECHO � With 1 House      $175 �
ECHO �                        �
ECHO � With 2 Houses     $500 �
ECHO �                        �
ECHO � With 3 Houses    $1100 �
ECHO �                        �
ECHO � With 4 Houses    $1300 �
ECHO �                        �
ECHO � With HOTEL       $1500 �
ECHO � ���������������������� �
ECHO �  One house costs $200  �
ECHO �                        �
ECHO �   Mortgage value $175  �
ECHO � ���������������������� �
ECHO �                        �
ECHO ������������������������ͼ
ECHO.
ECHO Current player: %Player% (!Char_%Player%!)
ECHO Total money: !Money_%Player%!
ECHO.
IF "!ParkPlace!" == "%Player%" GOTO :ParkPlace_Houses
IF DEFINED ParkPlace GOTO :ParkPlace_PayRent
ECHO Press [1] to buy this street FOR $350 or
ECHO press [2] to leave it.
SET /p Purchase=
IF "%Purchase%" == "1" (
	SET Puffer=!Money_%Player%!
	SET /a Money_%Player%=!Money_%Player%! - 350
	IF "!Money_%Player%:~0,1!" == "-" (
		ECHO You have NOT enough money.
		SET /a Money_%Player%=!Money_%Player%! + 350
	) ELSE (
		ECHO ���^> Money decreased from $!Puffer! by $350 to $!Money_%Player%!.
		SET ParkPlace=%Player%
	)
	PAUSE
	EXIT /b
)
IF "%Purchase%" == "2" EXIT /b
GOTO :ParkPlace
 :ParkPlace_Houses
:ParkPlace_Houses
IF "!ParkPlace_Houses!" == "5" (
	ECHO This street has got a hotel.
	PAUSE
	EXIT /b
) ELSE (
	ECHO This street has got !ParkPlace_Houses! houses, yet.
	ECHO.
)
ECHO Press [1] to buy a new house or
ECHO press [2] to leave it or
ECHO press [3] to sell it FOR $175.
SET /p Buy_House=
ECHO.
IF "%Buy_House%" == "1" (
	SET Puffer=!Money_%Player%!
	SET /a Money_%Player%=!Money_%Player%! - 200
	IF "!Money_%Player%:~0,1!" == "-" (
		ECHO You have NOT enough money.
		SET /a Money_%Player%=!Money_%Player%! + 200
	) ELSE (
		ECHO ���^> Money decreased from $!Puffer! by $200 to $!Money_%Player%!.
		SET /a ParkPlace_Houses=!ParkPlace_Houses! + 1
		IF NOT "!ParkPlace_Houses!" == "5" (ECHO This street has got !ParkPlace_Houses! houses now.) ELSE (ECHO This street has got a hotel now.)
	)
	PAUSE
	EXIT /b
)
IF "%Buy_House%" == "2" EXIT /b
IF "%Buy_House%" == "3" (
	ECHO Are you sure you want to sell the street? [Y/N]
	SET /p Sell_Street=
	IF /i "!Sell_Street!" == "n" EXIT /b
	IF /i "!Sell_Street!" == "y" (
		SET Puffer=!Money_%Player%!
		SET /a Money_%Player%=!Money_%Player%! + 175
		ECHO ���^> Money increased from $!Puffer! by $175 to $!Money_%Player%!.
		SET ParkPlace=
		SET ParkPlace_Houses=0
	)
)
GOTO :ParkPlace_Houses
 :ParkPlace_PayRent
:ParkPlace_PayRent
IF "!ParkPlace_Houses!" == "0" SET PayRent=35
IF "!ParkPlace_Houses!" == "1" SET PayRent=175
IF "!ParkPlace_Houses!" == "2" SET PayRent=500
IF "!ParkPlace_Houses!" == "3" SET PayRent=1100
IF "!ParkPlace_Houses!" == "4" SET PayRent=1300
IF "!ParkPlace_Houses!" == "5" SET PayRent=1500
ECHO This street is owned by the other player. You have to pay
ECHO $%PayRent% to pass.
SET Puffer=!Money_%Player%!
SET /a Money_%Player%=!Money_%Player%! - %PayRent%
ECHO ���^> Money decreased from $%Puffer% by $%PayRent% to $!Money_%Player%!.
IF "!Money_%Player%:~0,1!" == "-" (
	ECHO.
	PAUSE
	CLS
	ECHO Player %Player% [!Char_%Player%!] is bankrupt.
	ECHO.
	IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
	ECHO Player !Player! wins the game.
	ECHO.
	PAUSE
	EXIT
)
IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
SET Player=!Player!
SET Puffer=!Money_%Player%!
SET /a Money_%Player%=!Money_%Player%! + %PayRent%
ECHO ���^> The other player's money increased from $%Puffer% by $%PayRent% to $!Money_%Player%!.
IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
SET Player=!Player!
ECHO.
PAUSE
EXIT /b




 :LuxuryTax
:LuxuryTax            39
CLS
ECHO ������������������������ͻ
ECHO �        LUXURY          �
ECHO �                        �
ECHO �         TAX            �
ECHO �                        �
ECHO �          ___           �
ECHO �      ���/***\���       �
ECHO �     ����\***/����      �
ECHO �    ������������     �
ECHO �   �����������������    �
ECHO �  �������     �������   �
ECHO �  �����         �����   �
ECHO �  ����           ����   �
ECHO �  ����           ����   �
ECHO �  �����         �����   �
ECHO �   �����������������    �
ECHO �    ���������������     �
ECHO �     �������������      �
ECHO �      �����������       �
ECHO �                        �
ECHO �  You have to pay $75   �
ECHO �  FOR the Luxury Tax.   �
ECHO ������������������������ͼ
ECHO.
ECHO Current player: %Player% (!Char_%Player%!)
ECHO Total money: !Money_%Player%!
ECHO.
SET Puffer=!Money_%Player%!
SET /a Money_%Player%=!Money_%Player%! - 75
SET /a Money_Parking=!Money_Parking! + 75
ECHO ���^> Money decreased from $%Puffer% by $75 to $!Money_%Player%!.
ECHO      ^& $75 went into Free Parking.
IF "!Money_%Player%:~0,1!" == "-" (
	ECHO.
	PAUSE
	CLS
	ECHO Player %Player% [!Char_%Player%!] is bankrupt.
	ECHO.
	IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
	ECHO Player !Player! wins the game.
	ECHO.
	PAUSE
	EXIT
)
ECHO.
PAUSE
EXIT /b




 :Boardwalk
:Boardwalk            40
SET Purchase=
SET Buy_House=
SET PayRent=
SET Sell_Street=
IF NOT DEFINED Boardwalk_Houses SET Boardwalk_Houses=0
CLS
ECHO ������������������������ͻ
ECHO �                        �
ECHO �       Boardwalk        �
ECHO �                        �
ECHO �  PRICE $400  RENT $50  �
ECHO � ���������������������� �
ECHO � With 1 House      $200 �
ECHO �                        �
ECHO � With 2 Houses     $600 �
ECHO �                        �
ECHO � With 3 Houses    $1400 �
ECHO �                        �
ECHO � With 4 Houses    $1700 �
ECHO �                        �
ECHO � With HOTEL       $2000 �
ECHO � ���������������������� �
ECHO �  One house costs $200  �
ECHO �                        �
ECHO �   Mortgage value $200  �
ECHO � ���������������������� �
ECHO �                        �
ECHO ������������������������ͼ
ECHO.
ECHO Current player: %Player% (!Char_%Player%!)
ECHO Total money: !Money_%Player%!
ECHO.
IF "!Boardwalk!" == "%Player%" GOTO :Boardwalk_Houses
IF DEFINED Boardwalk GOTO :Boardwalk_PayRent
ECHO Press [1] to buy this street FOR $400 or
ECHO press [2] to leave it.
SET /p Purchase=
IF "%Purchase%" == "1" (
	SET Puffer=!Money_%Player%!
	SET /a Money_%Player%=!Money_%Player%! - 400
	IF "!Money_%Player%:~0,1!" == "-" (
		ECHO You have NOT enough money.
		SET /a Money_%Player%=!Money_%Player%! + 400
	) ELSE (
		ECHO ���^> Money decreased from $!Puffer! by $400 to $!Money_%Player%!.
		SET Boardwalk=%Player%
	)
	PAUSE
	EXIT /b
)
IF "%Purchase%" == "2" EXIT /b
GOTO :Boardwalk
 :Boardwalk_Houses
:Boardwalk_Houses
IF "!Boardwalk_Houses!" == "5" (
	ECHO This street has got a hotel.
	PAUSE
	EXIT /b
) ELSE (
	ECHO This street has got !Boardwalk_Houses! houses, yet.
	ECHO.
)
ECHO Press [1] to buy a new house or
ECHO press [2] to leave it or
ECHO press [3] to sell it FOR $200.
SET /p Buy_House=
ECHO.
IF "%Buy_House%" == "1" (
	SET Puffer=!Money_%Player%!
	SET /a Money_%Player%=!Money_%Player%! - 200
	IF "!Money_%Player%:~0,1!" == "-" (
		ECHO You have NOT enough money.
		SET /a Money_%Player%=!Money_%Player%! + 200
	) ELSE (
		ECHO ���^> Money decreased from $!Puffer! by $200 to $!Money_%Player%!.
		SET /a Boardwalk_Houses=!Boardwalk_Houses! + 1
		IF NOT "!Boardwalk_Houses!" == "5" (ECHO This street has got !Boardwalk_Houses! houses now.) ELSE (ECHO This street has got a hotel now.)
	)
	PAUSE
	EXIT /b
)
IF "%Buy_House%" == "2" EXIT /b
IF "%Buy_House%" == "3" (
	ECHO Are you sure you want to sell the street? [Y/N]
	SET /p Sell_Street=
	IF /i "!Sell_Street!" == "n" EXIT /b
	IF /i "!Sell_Street!" == "y" (
		SET Puffer=!Money_%Player%!
		SET /a Money_%Player%=!Money_%Player%! + 200
		ECHO ���^> Money increased from $!Puffer! by $200 to $!Money_%Player%!.
		SET Boardwalk=
		SET Boardwalk_Houses=0
	)
)
GOTO :Boardwalk_Houses
 :Boardwalk_PayRent
:Boardwalk_PayRent
IF "!Boardwalk_Houses!" == "0" SET PayRent=50
IF "!Boardwalk_Houses!" == "1" SET PayRent=200
IF "!Boardwalk_Houses!" == "2" SET PayRent=600
IF "!Boardwalk_Houses!" == "3" SET PayRent=1400
IF "!Boardwalk_Houses!" == "4" SET PayRent=1700
IF "!Boardwalk_Houses!" == "5" SET PayRent=2000
ECHO This street is owned by the other player. You have to pay
ECHO $%PayRent% to pass.
SET Puffer=!Money_%Player%!
SET /a Money_%Player%=!Money_%Player%! - %PayRent%
ECHO ���^> Money decreased from $%Puffer% by $%PayRent% to $!Money_%Player%!.
IF "!Money_%Player%:~0,1!" == "-" (
	ECHO.
	PAUSE
	CLS
	ECHO Player %Player% [!Char_%Player%!] is bankrupt.
	ECHO.
	IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
	ECHO Player !Player! wins the game.
	ECHO.
	PAUSE
	EXIT
)
IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
SET Player=!Player!
SET Puffer=!Money_%Player%!
SET /a Money_%Player%=!Money_%Player%! + %PayRent%
ECHO ���^> The other player's money increased from $%Puffer% by $%PayRent% to $!Money_%Player%!.
IF "!Player!" == "1" (SET Player=2) ELSE (SET Player=1)
SET Player=!Player!
ECHO.
PAUSE
EXIT /b
		;

		::Game 4 code;

			::Intro;
				REM INITIAL WELCOME
				:game4
				CLS
				ECHO HELLO AND WELCOME TO SIMON SAYS (BATCH EDITION) BY PROF. PICKLE
				ECHO.
				ECHO TYPE 1 TO START, 2 FOR INSTRUCTIONS OR 3 TO GO BACK TO THE MENU
				CHOICE /C 123 /N
				IF %ERRORLEVEL% EQU 1 GOTO GAME123
				IF %ERRORLEVEL% EQU 2 GOTO HELP123
				IF %ERRORLEVEL% EQU 3 GOTO Menu
			;

				REM INSTRUCTIONS
				:HELP123
				CLS
				ECHO INSTRUCTIONS:
				ECHO ����������������������������������������������������������������������������
				ECHO.
				ECHO EVERY ROUND, THE PROGRAMME'S BACKGROUND WILL FLASH A COLOUR.
				ECHO THE AMOUNT OF COLOUR CHANGES DEPENDS ON THE ROUND YOU ARE ON.
				ECHO.
				ECHO THE AIM OF THE GAME IS TO SURVIVE AS MANY ROUNDS AS POSSIBLE, EACH ROUND
				ECHO INCREASING IN DIFFICULTY.
				ECHO.
				ECHO.
				ECHO THERE ARE 10 ROUNDS IN TOTAL, THE FIRST CHANGING TWICE AND THE LAST CHANGING 22 TIMES.
				ECHO IT IS VERY HARD TO BEAT THIS GAME. ~This statement is an opinion only, NOT a fact.
				ECHO.
				ECHO YOU PASS EACH ROUND BY TYPING IN THE SERIES OF COLOURS THAT WERE
				ECHO DISPLAYED (ONLY WRITE THEIR FIRST LETTER OF THEIR NAME (CASE-INSENSITIVE).
				ECHO E.G: Y=YELLOW, G=GREEN, R=RED AND B=BLUE).
				ECHO.
				ECHO HAVE FUN!
				ECHO.
				ECHO.
				ECHO HINT: IF THE GAME TAKES EXTRA LONG ON A COLOUR, IT'S BECAUSE IT HAS LANDED ON
				ECHO THAT COLOR MORE THAN ONCE IN A ROW.
				ECHO.
				ECHO.
				ECHO PRESS ANY KEY TO RETURN TO THE PREVIOUS SCREEN
				PAUSE >NUL
				GOTO game4

				REM SETTING THE SCENE
				:GAME123
				CLS
				SET ROUND=0
				SET COLOR1=
				SET COLOR2=
				SET COLOR3=
				SET COLOR4=
				SET COLOR5=
				SET COLOR6=
				SET COLOR7=
				SET COLOR8=
				SET COLOR9=
				SET COLOR10=
				SET COLOR11=
				SET COLOR12=
				SET COLOR13=
				SET COLOR14=
				SET COLOR15=
				SET COLOR16=
				SET COLOR17=
				SET COLOR18=
				SET COLOR19=
				SET COLOR20=
				SET COLOR21=
				SET COLOR22=


				:GAME2aa
				CLS
				SET /A ROUND=%ROUND%+1
				SET ADD=%ROUND%
				IF %ROUND% GTR 5 SET /A ADD=%ADD%+2
				IF %ROUND% GTR 10 GOTO WIN
				SET /A CC=%ROUND%+%ADD%
				SET ANS=0
				SET NUM=0

				REM DISPLAYING COLOURS
				:COLOUR
				SET /A NUM=%NUM%+1

				SET /A COL=%RANDOM% %% 4 + 1

				IF %COL% EQU 1 (
				COLOR E0
				SET "COLOR%NUM%=Y"
				)

				IF %COL% EQU 2 (
				COLOR A0
				SET "COLOR%NUM%=G"
				)

				IF %COL% EQU 3 (
				COLOR 40
				SET "COLOR%NUM%=R"
				)

				IF %COL% EQU 4 (
				COLOR 10
				SET "COLOR%NUM%=B"
				)

				PING LOCALHOST -n 2 >NUL
				IF %NUM% EQU %CC% GOTO ANS
				GOTO COLOUR

				:ANS
				IF %ROUND% EQU 1 SET RN=3
				IF %ROUND% EQU 2 SET RN=5
				IF %ROUND% EQU 3 SET RN=7
				IF %ROUND% EQU 4 SET RN=9
				IF %ROUND% EQU 5 SET RN=11
				IF %ROUND% EQU 6 SET RN=15
				IF %ROUND% EQU 7 SET RN=17
				IF %ROUND% EQU 8 SET RN=19
				IF %ROUND% EQU 9 SET RN=21
				IF %ROUND% EQU 10 SET RN=23
				SET DER=0
				SET GR=%RN%
				:GUESS
				SET /A GR=%GR%-1
				COLOR 0A
				SET /A DER=%DER%+1
				IF %DER% EQU %RN% GOTO GAME2aa
				CLS
				ECHO %GR% LEFT
				ECHO.
				ECHO.
				ECHO GUESS THE SEQUENCE (FIRST LETTER ONLY)
				CHOICE /C YGRB /N

				IF %ERRORLEVEL% EQU 1 SET GUESS=Y
				IF %ERRORLEVEL% EQU 2 SET GUESS=G
				IF %ERRORLEVEL% EQU 3 SET GUESS=R
				IF %ERRORLEVEL% EQU 4 SET GUESS=B

				IF %DER% EQU 1 GOTO 1
				IF %DER% EQU 2 GOTO 2
				IF %DER% EQU 3 GOTO 3
				IF %DER% EQU 4 GOTO 4
				IF %DER% EQU 5 GOTO 5
				IF %DER% EQU 6 GOTO 6
				IF %DER% EQU 7 GOTO 7
				IF %DER% EQU 8 GOTO 8
				IF %DER% EQU 9 GOTO 9
				IF %DER% EQU 10 GOTO 10
				IF %DER% EQU 11 GOTO 11
				IF %DER% EQU 12 GOTO 12
				IF %DER% EQU 13 GOTO 13
				IF %DER% EQU 14 GOTO 14
				IF %DER% EQU 15 GOTO 15
				IF %DER% EQU 16 GOTO 16
				IF %DER% EQU 17 GOTO 17
				IF %DER% EQU 18 GOTO 18
				IF %DER% EQU 19 GOTO 19
				IF %DER% EQU 20 GOTO 20
				IF %DER% EQU 21 GOTO 21
				IF %DER% EQU 22 GOTO 22

				:1
				IF %GUESS% NEQ %COLOR1% GOTO LOSE
				GOTO GUESS
				:2
				IF %GUESS% NEQ %COLOR2% GOTO LOSE
				GOTO GUESS
				:3
				IF %GUESS% NEQ %COLOR3% GOTO LOSE
				GOTO GUESS
				:4
				IF %GUESS% NEQ %COLOR4% GOTO LOSE
				GOTO GUESS
				:5
				IF %GUESS% NEQ %COLOR5% GOTO LOSE
				GOTO GUESS
				:6
				IF %GUESS% NEQ %COLOR6% GOTO LOSE
				GOTO GUESS
				:7
				IF %GUESS% NEQ %COLOR7% GOTO LOSE
				GOTO GUESS
				:8
				IF %GUESS% NEQ %COLOR8% GOTO LOSE
				GOTO GUESS
				:9
				IF %GUESS% NEQ %COLOR9% GOTO LOSE
				GOTO GUESS
				:10
				IF %GUESS% NEQ %COLOR10% GOTO LOSE
				GOTO GUESS
				:11
				IF %GUESS% NEQ %COLOR11% GOTO LOSE
				GOTO GUESS
				:12
				IF %GUESS% NEQ %COLOR12% GOTO LOSE
				GOTO GUESS
				:13
				IF %GUESS% NEQ %COLOR13% GOTO LOSE
				GOTO GUESS
				:14
				IF %GUESS% NEQ %COLOR14% GOTO LOSE
				GOTO GUESS
				:15
				IF %GUESS% NEQ %COLOR15% GOTO LOSE
				GOTO GUESS
				:16
				IF %GUESS% NEQ %COLOR16% GOTO LOSE
				GOTO GUESS
				:17
				IF %GUESS% NEQ %COLOR17% GOTO LOSE
				GOTO GUESS
				:18
				IF %GUESS% NEQ %COLOR18% GOTO LOSE
				GOTO GUESS
				:19
				IF %GUESS% NEQ %COLOR19% GOTO LOSE
				GOTO GUESS
				:20
				IF %GUESS% NEQ %COLOR20% GOTO LOSE
				GOTO GUESS
				:21
				IF %GUESS% NEQ %COLOR21% GOTO LOSE
				GOTO GUESS
				:22
				IF %GUESS% NEQ %COLOR22% GOTO LOSE
				GOTO GUESS

				REM IF YOU SURVIVE 50 ROUNDS YOU GO HERE
				:WIN
				CLS
				ECHO CONGRATULATIONS, YOU BEAT THE GAME!
				ECHO.
				ECHO.
				ECHO WOULD YOU LIKE TO PLAY AGAIN? (Y/N)
				CHOICE /C YN /N
				IF %ERRORLEVEL% EQU 1 GOTO GAME123
				IF %ERRORLEVEL% EQU 2 GOTO Menu

				REM WHERE YOU GO IF YOU LOSE
				:LOSE
				CLS
				ECHO YOU SURVIVED %ROUND% ROUNDS!
				ECHO.
				ECHO DO YOU WANT TO PLAY AGAIN? (Y/N)
				ECHO.
				CHOICE /C yn /N
				IF %ERRORLEVEL% EQU 1 GOTO GAME123
				IF %ERRORLEVEL% EQU 2 GOTO Menu
			;

			::Game 5 code;
				:game5
				:introddd
				CLS
				ECHO Welcome to Race Cars, the free racing game by Prof. Pickle
				ECHO.
				ECHO.
				ECHO Press 1 to start or 2 for instrcutions
				CHOICE /c 12 /n
				IF %ERRORLEVEL% EQU 1 GOTO dIFfddd
				IF %ERRORLEVEL% EQU 2 GOTO helpddd

				:helpddd
				CLS
				ECHO The aim of the game is to be the first to cross the finish line.
				ECHO.
				ECHO Each player takes turns rolling a "dice" which determines how many steps they
				ECHO move forward.
				ECHO.
				ECHO.
				ECHO Press any key to go back
				pause >nul
				GOTO introddd

				:dIFfddd
				CLS
				ECHO How many people?
				ECHO.
				ECHO 1) 1 Player
				ECHO 2) 2 Player
				ECHO. 
				CHOICE /c 123 /n 
				CLS
				IF %ERRORLEVEL% EQU 1 GOTO dIFf1ddd
				IF %ERRORLEVEL% EQU 2 GOTO dIFf2ddd

				:dIFf1ddd
				SET /p p1name=Select your name: 
				ECHO Are you sure? (Y/N)
				CHOICE /c yn /n
				IF %ERRORLEVEL% EQU 1 GOTO data1ddd
				GOTO dIFf1ddd

				:dIFf2ddd
				SET /p p1name=Player 1's name: 
				SET /p p2name=Player 2's name: 
				ECHO Are you sure? (Y/N)
				CHOICE /c yn /n
				IF %ERRORLEVEL% EQU 1 GOTO data2ddd
				GOTO dIFf2ddd

				:data1ddd
				SET /a rnum=%RANDOM% %% 5 + 1
				IF %rnum% EQU 1 SET p2name= Bert
				IF %rnum% EQU 2 SET p2name= George
				IF %rnum% EQU 3 SET p2name= Fred
				IF %rnum% EQU 4 SET p2name= Craig
				IF %rnum% EQU 5 SET p2name= Thomas
				:data2ddd
				SET round=0
				SET p1tot=0
				SET p2tot=0
				SET p1spa= 
				SET p2spa= 
				SET p1lef=50
				SET p2lef=50
				SET message=.
				GOTO cointoss1ddd

				:cointoss1ddd
				CLS
				ECHO Player 1: %p1name% (%p1lef% spaces left)    Player 2: %p2name% (%p2lef% spaces left)
				ECHO                          Round 1
				ECHO.
				ECHO --------------------------------------------------FINISH
				ECHO %p1spa%[1]
				ECHO %p2spa%[2]
				ECHO --------------------------------------------------FINISH
				ECHO.
				ECHO Toss a coin to see who goes first
				CHOICE /c ht /n /m "H = Heads, T = Tails: "
				IF %ERRORLEVEL% EQU 1 SET coinc=HEADS
				IF %ERRORLEVEL% EQU 2 SET coinc=TAILS
				SET /a rnum=%RANDOM% %% 2 + 1
				IF %rnum% EQU 1 SET coin=HEADS
				IF %rnum% EQU 2 SET coin=TAILS
				IF %coin% EQU %coinc% SET turn=1
				IF %coin% NEQ %coinc% SET turn=2
				CLS
				ECHO Player 1: %p1name% (%p2lef% spaces left)    Player 2:%p2name% (%p1lef% spaces left)
				ECHO                          Round 1
				ECHO.
				ECHO ---------------------------------------------FINISH
				ECHO %p1spa%[1]
				ECHO %p2spa%[2]
				ECHO ---------------------------------------------FINISH
				ECHO.
				ECHO Flipping...
				ping localhost -n 4 >nul
				CLS
				ECHO Player 1: %p1name%     Player 2:%p2name%
				ECHO               Round 1
				ECHO.
				ECHO.
				ECHO  %coin%
				pause

				:action1ddd
				TITLE %TITLE% ~ %turn%'s turn
				CLS
				ECHO Player 1: %p1name% (%p2lef% spaces left)    Player 2:%p2name% (%p1lef% spaces left)
				ECHO                          Round 1
				ECHO.
				ECHO --------------------------------------------------FINISH
				ECHO %p1spa%[1]
				ECHO %p2spa%[2]
				ECHO --------------------------------------------------FINISH
				ECHO.
				ECHO Player %turn% goes first
				pause
				IF %turn% EQU 1 GOTO diceroll1ddd

				:diceroll2ddd
				TITLE %TITLE% ~ Player %turn%'s turn
				SET /a round=%round%+1
				SET /a dice=%RANDOM% %% 6 + 1
				SET /a p2tot=%p2tot%+%dice%
				IF %dice% EQU 1 SET p2spa=%p2spa% 
				IF %dice% EQU 2 SET p2spa=%p2spa%  
				IF %dice% EQU 3 SET p2spa=%p2spa%   
				IF %dice% EQU 4 SET p2spa=%p2spa%    
				IF %dice% EQU 5 SET p2spa=%p2spa%     
				IF %dice% EQU 6 SET p2spa=%p2spa%        
				SET /a p2lef=%p2lef%-%dice%
				IF %p2tot% GEQ 50 GOTO loseddd
				SET turn=1

				SET /a mesn=%RANDOM% %% 10 + 1

				IF %mesn% EQU 1 (
				SET /a p2tot=%p2tot%-4
				IF %p2tot% lss 0 (
				SET p2spa=%p2tot%    
				SET /a p2tot=%p2tot%+4
				SET /a p2lef=%p2lef%-4
				)
				SET p2spa=!p2spa:~0,-4!
				SET message=Oil slick makes you crash. Go back 4
				SET /a p2lef=%p2left%+4

				)
				IF %mesn% EQU 2 (
				SET /a p2tot=%p2tot%+2
				SET /a p2lef=%p2lef%-2
				SET p2spa=%p2spa% 
				SET message=Speedy pit crews accelerate your progress. Two square bonus this turn.
				)

				IF %mesn% EQU 3 (
				SET p2tot=0
				SET p2spa= 
				SET p2lef=50
				SET message=You crashed out. Go back to start.
				)

				IF %mesn% EQU 4 (
				SET /a p2tot=%p2tot%-3
				IF %p2tot% lss 0 (
				SET p2spa=%p2spa%   
				SET /a p2tot=%p2tot%+3
				SET p2lef=%p2lef%-3
				)
				SET p2spa=!p2spa:~0,-3!
				SET message=Your engine overheated. Go back 3 squares.
				SET /a p2lef=%p2left%+3
				)

				IF %mesn% EQU 4 (
				SET /a p2tot=%p2tot%-5
				IF %p2tot% lss 0 (
				SET /a p2tot=%p2tot%+5
				SET p2spa=%p2spa%     
				SET /a p2lef=%p2lef%-5
				)
				SET p2spa=!p2spa:~0,-5!
				SET message=The sun blinds you, so you go slower. Go back 5 spaces.
				SET /a p2lef=%p2left%+5
				)
				IF %mesn% gtr 5 SET message=.

				CLS
				ECHO Player 1: %p1name% (%p1lef% spaces left)    Player 2:%p2name% (%p2lef% spaces left)
				ECHO                          Round %round%
				ECHO.
				ECHO --------------------------------------------------FINISH
				ECHO %p1spa%[1]
				ECHO %p2spa%[2]
				ECHO --------------------------------------------------FINISH
				ECHO.
				ECHO Player 2 rolled a %dice%
				ECHO.
				ECHO %message%
				ECHO.
				ECHO Press any key to roll your dice
				pause >nul
				GOTO diceroll1ddd

				:diceroll1ddd
				TITLE %TITLE% ~ Player %turn%'s turn
				SET /a round=%round%+1
				SET /a dice=%RANDOM% %% 6 + 1
				SET /a p1tot=%p1tot%+%dice%
				IF %dice% EQU 1 SET p1spa=%p1spa% 
				IF %dice% EQU 2 SET p1spa=%p1spa%  
				IF %dice% EQU 3 SET p1spa=%p1spa%   
				IF %dice% EQU 4 SET p1spa=%p1spa%    
				IF %dice% EQU 5 SET p1spa=%p1spa%     
				IF %dice% EQU 6 SET p1spa=%p1spa%        
				SET /a p1lef=%p1lef%-%dice%
				IF %p1tot% GEQ 50 GOTO winddd
				SET turn=2

				SET /a mesn=%RANDOM% %% 10 + 1

				IF %mesn% EQU 1 (
				SET /a p1tot=%p2tot%-4
				IF %p1tot% lss 0 (
				SET p1spa=%p1spa%    
				SET /a p1tot=%p1tot%+4
				SET /a p1lef=%p1lef%-4
				)
				SET p1spa=!p1spa:~0,-4!
				SET message=Oil slick makes you crash. Go back 4
				SET /a p1lef=%p2left%+4

				)
				IF %mesn% EQU 2 (
				SET /a p1tot=%p1tot%+2
				SET /a p1lef=%p1lef%-2
				SET p1spa=%p1spa% 
				SET message=Speedy pit crews accelerate your progress. Two square bonus this turn.
				)

				IF %mesn% EQU 3 (
				SET p1tot=0
				SET p1spa= 
				SET p1lef=50
				SET message=You crashed out. Go back to start.
				)

				IF %mesn% EQU 4 (
				SET /a p1tot=%p1tot%-3
				IF %p1tot% lss 0 (
				SET p1spa=%p1spa%   
				SET /a p1tot=%p1tot%+3
				SET p1lef=%p1lef%-3
				)
				SET p1spa=!p1spa:~0,-3!
				SET message=Your engine overheated. Go back 3 squares.
				SET /a p1lef=%p2left%+3
				)

				IF %mesn% EQU 4 (
				SET /a p1tot=%p1tot%-5
				IF %p1tot% lss 0 (
				SET /a p1tot=%p1tot%+5
				SET p1spa=%p1spa%     
				SET /a p1lef=%p1lef%-5
				)
				SET p1spa=!p1spa:~0,-5!
				SET message=The sun blinds you, so you go slower. Go back 5 spaces.
				SET /a p1lef=%p2left%+5
				)
				IF %mesn% gtr 5 SET message=.

				CLS
				ECHO Player 1: %p1name% (%p1lef% spaces left)    Player 2:%p2name% (%p2lef% spaces left)
				ECHO                          Round %round%
				ECHO.
				ECHO --------------------------------------------------FINISH
				ECHO %p1spa%[1]
				ECHO %p2spa%[2]
				ECHO --------------------------------------------------FINISH
				ECHO.
				ECHO Player 1 rolled a %dice%
				ECHO.
				ECHO %message%
				ECHO.
				ECHO Press any key to continue
				pause >nul
				GOTO diceroll2ddd

				:loseddd
				CLS
				ECHO Player 2 won!
				ECHO.
				ECHO Player 1 lost!
				ECHO.
				ECHO.
				ECHO It took player 2 %round% rounds to beat their opponent
				ECHO.
				ECHO.
				ECHO Play again? (Y/N)
				CHOICE /c yn /n
				IF %ERRORLEVEL% EQU 1 GOTO introddd
				GOTO Menu

				:winddd
				CLS
				ECHO Player 1 won!
				ECHO.
				ECHO Player 2 lost!
				ECHO.
				ECHO.
				ECHO It took player 1 %round% rounds to beat their opponent
				ECHO.
				ECHO.
				ECHO Play again? (Y/N)
				CHOICE /c yn /n
				IF %ERRORLEVEL% EQU 1 GOTO introddd
				GOTO Menu
			;
		
		
			::Game 6 code;
				:game6
				:Introppp
				CLS
				ECHO Hello and welcome to Slot Machine by Prof. Pickle.
				ECHO.
				ECHO 1) Play
				ECHO 2) Instructions
				ECHO 3) EXIT
				CHOICE /c 123 /n
				IF %ERRORLEVEL% EQU 1 GOTO dIFfppp
				IF %ERRORLEVEL% EQU 2 GOTO helpppp
				IF %ERRORLEVEL% EQU 3 GOTO exitppp

				:helpppp
				CLS
				ECHO INSTRUCTIONS:
				ECHO.
				ECHO The aim of "Slot Machine" is to gain as much money as possible.
				ECHO.
				ECHO You DO this by trying your luck with a slot machine.
				ECHO IF you get a combination of three or more, you gain money.
				ECHO.
				ECHO.
				ECHO How much money you gain is dictated by your dIFficulty level (easy, medium
				ECHO or hard).
				ECHO.
				ECHO To win, you need to reach a cash limit, once again, this is dependent on 
				ECHO your dIFficulty.
				ECHO.
				ECHO.
				ECHO IF you reach $0 then you lose, and can either start again or quit.
				ECHO.
				ECHO.
				ECHO.
				ECHO Press any key to go back
				pause >nul
				GOTO Introppp

				:dIFfppp
				CLS
				ECHO Choose your dIFficulty
				ECHO.
				ECHO 1) Easy
				ECHO 2) Medium
				ECHO 3) Hard
				CHOICE /c 123 /n
				IF %ERRORLEVEL% EQU 1 GOTO easyppp
				IF %ERRORLEVEL% EQU 2 GOTO medppp
				IF %ERRORLEVEL% EQU 3 GOTO hardppp

				:easyppp
				CLS
				SET round=0
				SET dIFf=1
				SET num1=2
				SET num2=1
				SET money=500
				GOTO Playppp
				:medppp
				CLS
				SET round=0
				SET dIFf=2
				SET num1=4
				SET num2=1
				SET money=300
				GOTO playppp
				:hardppp
				CLS
				SET round=0
				SET dIFf=3
				SET num1=6
				SET num2=1
				SET money=200
				GOTO playppp

				:Playppp
				SET /a round=%round%+1
				CLS
				ECHO Money: %money%
				ECHO.
				IF %round% EQU 1 IF %dIFf% EQU 1 ECHO         
				IF %round% EQU 1 IF %dIFf% EQU 2 ECHO             
				IF %round% EQU 1 IF %dIFf% EQU 3 ECHO                 
				IF %round% gtr 1 IF %dIFf% EQU 1 ECHO    %char1%  %char2%  %char3% 
				IF %round% gtr 1 IF %dIFf% EQU 2 ECHO    %char1%  %char2%  %char3%  %char4%  %char5% 
				IF %round% gtr 1 IF %dIFf% EQU 3 ECHO    %char1%  %char2%  %char3%  %char4%  %char5%  %char6%  %char7% 
				ECHO.
				IF %round% gtr 1 ECHO   %msg%
				IF %round% gtr 1 ECHO   Money %factor% by %amount%
				ECHO.
				ECHO.
				IF %round% EQU 1 ECHO Press any key to start spinning or E to go back
				IF %round% gtr 1 ECHO Press any key to go again or E to go back
				CHOICE /c abcdefghijklmnopqrstuvwxyz1234567890 /n
				IF %ERRORLEVEL% EQU 5 GOTO Menu
				GOTO spinppp

				:spinppp
				SET count=0
				SET char1=
				SET char2=
				SET char3=
				SET char4=
				SET char5=
				SET char6=
				SET char7=
				SET char8=
				SET char9=
				SET char10=
				GOTO spin%dIFf%ppp
				:spin1ppp
				SET /a slot=%random% %% %num1% + %num2%
				SET /a count=%count%+1
				IF %slot% EQU 1 SET char%count%=
				IF %slot% EQU 2 SET char%count%=
				IF %slot% EQU 3 SET char%count%=
				IF %count% EQU 3 GOTO check%dIFf%ppp
				GOTO spin1ppp
				:spin2ppp
				SET /a slot=%random% %% %num1% + %num2%
				SET /a count=%count%+1
				IF %slot% EQU 1 SET char%count%=
				IF %slot% EQU 2 SET char%count%=
				IF %slot% EQU 3 SET char%count%=
				IF %slot% EQU 4 SET char%count%=
				IF %slot% EQU 5 SET char%count%=
				IF %count% EQU 5 GOTO check%dIFf%ppp
				GOTO spin2ppp
				:spin3ppp
				SET /a slot=%random% %% %num1% + %num2%
				SET /a count=%count%+1
				IF %slot% EQU 1 SET char%count%=
				IF %slot% EQU 2 SET char%count%=
				IF %slot% EQU 3 SET char%count%=
				IF %slot% EQU 4 SET char%count%=
				IF %slot% EQU 5 SET char%count%=
				IF %slot% EQU 6 SET char%count%=
				IF %slot% EQU 7 SET char%count%=
				IF %count% EQU 7 GOTO check%dIFf%ppp
				GOTO spin3ppp
				:check1ppp
				SET win=0
				IF %char1% EQU %char2% IF %char2% EQU %char3% (
				SET factor=increased
				SET msg=WIN!
				SET amount=$100
				SET /a money=%money%+100
				SET win=1
				)
				IF %win% EQU 0 (
				SET factor=decreased
				SET msg=LOSE!
				SET amount=10
				SET /a money=%money%-10
				)
				IF %money% GEQ 5000 GOTO winppp
				IF %money% leq 0 GOTO loseppp
				GOTO playppp
				:check2ppp
				SET win=0
				IF %char1% EQU %char2% IF %char2% EQU %char3% (
				SET factor=increased
				SET msg=WIN!
				SET amount=$50
				SET /a money=%money%+50
				SET win=1
				GOTO check3nppp
				)
				IF %char2% EQU %char3% IF %char3% EQU %char4% (
				SET factor=increased
				SET msg=WIN!
				SET amount=$50
				SET /a money=%money%+50
				SET win=1
				GOTO check3nppp
				)
				IF %char3% EQU %char4% IF %char4% EQU %char5% (
				SET factor=increased
				SET msg=WIN!
				SET amount=$50
				SET /a money=%money%+50
				SET win=1
				GOTO check3nppp
				)
				IF %char1% EQU %char2% IF %char2% EQU %char3% IF %char3% EQU %char4% (
				SET factor=increased
				SET msg=WIN!
				SET amount=$75
				SET /a money=%money%+75
				SET win=1
				GOTO check3nppp
				)
				IF %char2% EQU %char3% IF %char3% EQU %char4% IF %char4% EQU %char5% (
				SET factor=increased
				SET msg=WIN!
				SET amount=$75
				SET /a money=%money%+75
				SET win=1
				GOTO check3nppp
				)
				IF %char1% EQU %char2% IF %char2% EQU %char3% IF %char3% EQU %char4% IF %char4% EQU %char5% (
				SET factor=increased
				SET msg=WIN!
				SET amount=$100
				SET /a money=%money%+100
				SET win=1
				GOTO check3nppp
				)
				:check3nppp
				IF %win% EQU 0 (
				SET factor=decreased
				SET msg=LOSE!
				SET amount=20
				SET /a money=%money%-20
				)
				IF %money% GEQ 1000 GOTO win
				IF %money% leq 0 GOTO lose
				GOTO play
				:check3ppp
				SET win=0
				IF %char1% EQU %char2% IF %char2% EQU %char3% (
				SET factor=increased
				SET msg=WIN!
				SET amount=$25
				SET /a money=%money%+25
				SET win=1goto check3n
				)
				IF %char2% EQU %char3% IF %char3% EQU %char4% (
				SET factor=increased
				SET msg=WIN!
				SET amount=$25
				SET /a money=%money%+25
				SET win=1
				GOTO check3nppp
				)
				IF %char3% EQU %char4% IF %char4% EQU %char5% (
				SET factor=increased
				SET msg=WIN!
				SET amount=$25
				SET /a money=%money%+25
				SET win=1
				GOTO check3nppp
				)
				IF %char4% EQU %char5% IF %char5% EQU %char6% (
				SET factor=increased
				SET msg=WIN!
				SET amount=$25
				SET /a money=%money%+25
				SET win=1
				GOTO check3nppp
				)
				IF %char5% EQU %char6% IF %char6% EQU %char7% (
				SET factor=increased
				SET msg=WIN!
				SET amount=$25
				SET /a money=%money%+25
				SET win=1
				GOTO check3nppp
				)
				IF %char1% EQU %char2% IF %char2% EQU %char3% IF %char3% EQU %char4% (
				SET factor=increased
				SET msg=WIN!
				SET amount=$50
				SET /a money=%money%+50
				SET win=1
				GOTO check3nppp
				)
				IF %char2% EQU %char3% IF %char3% EQU %char4% IF %char4% EQU %char5% (
				SET factor=increased
				SET msg=WIN!
				SET amount=$50
				SET /a money=%money%+50
				SET win=1
				GOTO check3nppp
				)
				IF %char3% EQU %char4% IF %char4% EQU %char5% IF %char5% EQU %char6% (
				SET factor=increased
				SET msg=WIN!
				SET amount=$50
				SET /a money=%money%+50
				SET win=1
				GOTO check3nppp
				)
				IF %char4% EQU %char5% IF %char5% EQU %char6% IF %char6% EQU %char7% (
				SET factor=increased
				SET msg=WIN!
				SET amount=$50
				SET /a money=%money%+50
				SET win=1
				GOTO check3nppp
				)
				IF %char1% EQU %char2% IF %char2% EQU %char3% IF %char3% EQU %char4% IF %char4% EQU %char5% (
				SET factor=increased
				SET msg=WIN!
				SET amount=$75
				SET /a money=%money%+75
				SET win=1
				GOTO check3nppp
				)
				IF %char2% EQU %char3% IF %char3% EQU %char4% IF %char4% EQU %char5% IF %char5% EQU %char6% (
				SET factor=increased
				SET msg=WIN!
				SET amount=$75
				SET /a money=%money%+75
				SET win=1
				GOTO check3nppp
				)
				IF %char3% EQU %char4% IF %char4% EQU %char5% IF %char5% EQU %char6% IF %char6% EQU %char7% (
				SET factor=increased
				SET msg=WIN!
				SET amount=$75
				SET /a money=%money%+75
				SET win=1
				GOTO check3nppp
				)
				IF %char1% EQU %char2% IF %char2% EQU %char3% IF %char3% EQU %char4% IF %char4% EQU %char5% IF %char5% EQU %char6% (
				SET factor=increased
				SET msg=WIN!
				SET amount=$100
				SET /a money=%money%+100
				SET win=1
				GOTO check3nppp
				)
				IF %char2% EQU %char3% IF %char3% EQU %char4% IF %char4% EQU %char5% IF %char5% EQU %char6% IF %char6% EQU %char7% (
				SET factor=increased
				SET msg=WIN!
				SET amount=$100
				SET /a money=%money%+100
				SET win=1
				GOTO check3nppp
				)
				IF %char1% EQU %char2% IF %char2% EQU %char3% IF %char3% EQU %char4% IF %char4% EQU %char5% IF %char5% EQU %char6% IF %char6% EQU %char7% (
				SET factor=increased
				SET msg=WIN!
				SET amount=$200
				SET /a money=%money%+200
				SET win=1
				GOTO check3nppp
				)
				:check3nppp
				IF %win% EQU 0 (
				SET factor=decreased
				SET msg=LOSE!
				SET amount=20
				SET /a money=%money%-20
				)
				IF %money% GEQ 500 GOTO winppp
				IF %money% leq 0 GOTO loseppp
				GOTO playppp

				:winppp
				CLS
				ECHO Congratulations!
				ECHO.
				ECHO You won!
				ECHO.
				ECHO It took you %round% rounds to acheive a total of $%money%.
				ECHO.
				ECHO DO you want to play again? (Y/N)
				CHOICE /c yn /n
				IF %ERRORLEVEL% EQU 1 GOTO dIFfppp
				GOTO Menu

				:loseppp
				CLS
				ECHO You lost!
				ECHO.
				ECHO You only survived %round% rounds.
				ECHO.
				ECHO Hint: Try playing on an easier dIFficulty.
				ECHO.
				ECHO DO you want to play again? (Y/N)
				CHOICE /c yn /n
				IF %ERRORLEVEL% EQU 1 GOTO dIFfppp
				GOTO Menu

				:exitppp
				CLS
				ECHO Going so soon? (Y/N)
				CHOICE /c yn /n
				IF %ERRORLEVEL% EQU 1 GOTO Menu
				GOTO Introppp
			;
		;

		::Communciation code;

			::Communication menu;
				:comm
				CLS
				ECHO --------------------------
				ECHO Communication Center
				ECHO.
				ECHO Press E to EXIT
				ECHO --------------------------
				ECHO.
				ECHO What would you like to DO?
				ECHO.
				ECHO 1. Find people's Ip addresses around you (This also finds your own)
				ECHO 2. Message people on your network
				CHOICE /c 12e /n
				IF %ERRORLEVEL% EQU 3 GOTO Menu & REM GOTO main menu display
				IF %ERRORLEVEL% EQU 1 GOTO IP & REM GOTO Ip scanner
				IF %ERRORLEVEL% EQU 2 GOTO msg & REM GOTO message sender
			;

			::Ip scanner
				:IP
				CLS
				ECHO -------------------------------
				ECHO You have selected Ip finder
				ECHO.
				ECHO Press E to EXIT
				ECHO -------------------------------
				ECHO.
				ECHO This tool will let you see the Ip addresses of everyone near you
				ECHO.
				ECHO Press any key followed by enter to begin
				SET /p tracem=
				IF %tracem% EQU E GOTO Menu & REM GOTO main menu display
				IF %tracem% EQU e GOTO Menu & REM ''''''''''''''''''''''
				CLS
				TRACERT www.google.com
				IF %ERRORLEVEL% NEQ 0 GOTO error & REM Redirect to error page
				ECHO.
				ECHO.
				ECHO These are the Ip addresses of people around you
				ECHO The first one is yours
				ECHO.
				ECHO Would you like to send the results to NOTepad? (Y/N)
				CHOICE /c yn /n
				IF %ERRORLEVEL% EQU 1 TRACERT www.google.com > "IP.txt" (
				ECHO A file is being created with the name "IP.txt"
				ECHO.
				ECHO.
				ECHO DO you want to open file once it has been fully constructed? (Y/N)
				CHOICE /c yn /n
				IF %ERRORLEVEL% EQU 1 (
				ECHO Please wait...
				PING localhost -n 60 > NUL
				START IP.txt
				)
				)
				CLS
				ECHO Press any key to go back to the menu
				PAUSE > NUL
				GOTO Menu & REM GOTO main menu display
			;

			::Message sender code;

				::Message sender menu;
					:msg
					CLS
					ECHO You have selected messenger
					ECHO.
					ECHO Press any key followed by enter to continue or press E to EXIT
					ECHO.
					SET /p msgm=
					IF %msgm% EQU E GOTO Menu & REM GOTO main menu display
					IF %msgm% EQU e GOTO Menu & REM ''''''''''''''''''''''
				;

				::Message sender;
					:msgg
					CLS
					SET /p msguser=Username:
					SET /p msgmsg=Message:
					MSG %msguser% %msgmsg%
					IF %ERRORLEVEL% NEQ 0 GOTO ERROR & REM Redirect to error page
					ECHO.
					ECHO Again? (y/n)
					CHOICE /c yn /n
					IF %ERRORLEVEL% EQU 1 GOTO msgg & REM Repeat message sender
					IF %ERRORLEVEL% EQU 2 GOTO Menu & REM GOTO main menu display
				;
			;
		;

		::Tasks code;
			:tasks
			CLS
			ECHO -------------------------
			ECHO Task STARTer
			ECHO.
			ECHO Press E to EXIT
			ECHO -------------------------
			ECHO.
			ECHO What would you like to DO?
			ECHO.
			ECHO 1. START task manager
			ECHO 2. Schedual a task
			ECHO.
			CHOICE /c 12e /n
			IF %ERRORLEVEL% EQU 1 START taskmgr.exe (
			GOTO Menu & REM GOTO main menu display
			)
			IF %ERRORLEVEL% EQU 2 START taskschd.msc (
			GOTO Menu & REM ''''''''''''''''''''''
			)
			IF %ERRORLEVEL% EQU 3 GOTO Menu & REM ''''''''''''''''''''''
		;

		::Information code;
			:info
			CLS
			ECHO -----------------------------
			ECHO Information
			ECHO.
			ECHO Press E to EXIT
			ECHO -----------------------------
			ECHO.
			ECHO What DO you want to know?
			ECHO.
			ECHO 1. Changes
			ECHO 2. Important information
			CHOICE /c 12e
			IF %ERRORLEVEL% EQU 3 GOTO Menu & REM GOTO main menu display
			IF %ERRORLEVEL% EQU 1 type Change_Log.txt
			IF %ERRORLEVEL% EQU 2 type README.txt
			ECHO.
			ECHO.
			ECHO.
			PAUSE
			GOTO info & REM Information code
		;

		::Folder browser menu;
			:useracc
			CALL filepath.bat
			CLS
			ECHO -------------------------
			ECHO Folder Browser
			ECHO.
			ECHO Press E to EXIT
			ECHO -------------------------
			ECHO.
			ECHO What Folder would you like to browse?
			ECHO.
			ECHO 1. My documents
			ECHO 2. My pictures
			ECHO 3. My music
			ECHO 4. My desktop
			CHOICE /c 1234e /n
			IF %ERRORLEVEL% EQU 5 GOTO Menu & REM GOTO main menu display
			IF %ERRORLEVEL% EQU 1 %SystemRoot%\explorer.exe "%filepath%\Documents" (
			GOTO Menu & REM ''''''''''''''''''''''
			)
			IF %ERRORLEVEL% EQU 2 %SystemRoot%\explorer.exe "%filepath%\Pictures" (
			GOTO Menu & REM ''''''''''''''''''''''
			)
			IF %ERRORLEVEL% EQU 3 %SystemRoot%\explorer.exe "%filepath%\Music" (
			GOTO Menu & REM ''''''''''''''''''''''
			)
			IF %ERRORLEVEL% EQU 4 %SystemRoot%\explorer.exe "%filepath%\Desktop" (
			GOTO Menu & REM ''''''''''''''''''''''
			)
		;

		::Text-to-speech code;
			:sapim
			CD info
			IF EXIST talk.vbs DEL talk.vbs
			CLS
			ECHO -----------------------------------
			ECHO Text to Speech
			ECHO.
			ECHO Press E to go back to the menu
			ECHO -----------------------------------
			ECHO.
			ECHO What would you like your computer to say?
			ECHO.
			ECHO All words must be seperated by a "-" sign (there can be no spaces)
			ECHO Example: I-am-a-boss
			ECHO.
			SET /p stalk=
			IF %stalk% EQU E GOTO Menu & REM GOTO main menu display
			IF %stalk% EQU e GOTO Menu & REM ''''''''''''''''''''''
			ECHO ' > "talk.vbs"
			ECHO SET Sapi = Wscript.CreateObject("SAPI.SpVoice") >> "talk.vbs"
			ECHO  Sapi.speak "%stalk%" >> "talk.vbs"
			START talk.vbs
			IF %ERRORLEVEL% NEQ 0 GOTO ERROR & REM Redirect to error page
			CLS
			ECHO Again? (Y/N)
			CHOICE /c yn /n
			IF %ERRORLEVEL% EQU 1 GOTO sapim & REM Repeat text-to-speech code
			IF %ERRORLEVEL% EQU 2 GOTO Menu & REM GOTO main menu display
			GOTO bug & REM Redirect to bug page
		;

		::Eight ball code;

			::Eight ball menu;
				:8ball
				SET reply=0
				CLS
				ECHO Press E to EXIT or C to continue
				CHOICE /c ec /n
				IF %ERRORLEVEL% EQU 1 GOTO Menu
				CLS
				ECHO.
				ECHO NOT 100 percent guarenteed to work
				ECHO.
				ECHO Ask the 8-ball a question, any question...
				ECHO You no longer need to substitute for spaces, go ahead and use them.
				ECHO.
				SET /p question=
				SET reply=0
				SET /a quest=%random% %% 10 + 1
				IF %quest% EQU 1 SET reply=Hellz Yeah
				IF %quest% EQU 2 SET reply=It's possible...
				IF %quest% EQU 3 SET reply=Most definitely
				IF %quest% EQU 4 SET reply=It's improbable
				IF %quest% EQU 5 SET reply=I hope so
				IF %quest% EQU 6 SET reply=That would be the day...
				IF %quest% EQU 7 SET reply=That will never happen!
				IF %quest% EQU 8 SET reply=You wish!
				IF %quest% EQU 9 SET reply=It's a possibility... Let me run some statistics
				IF %quest% EQU 10 SET reply=I'm Certain of it
			;

			::Response;
				:response
				CLS
				ECHO %reply%
				ECHO.
				PAUSE
				GOTO 8ball & REM Repeat with new data
			;
		;

		::Address book code;

			::Address book menu;
				:address
				CD contacts
				CLS
				ECHO You have chosen the Address Book function
				ECHO.
				ECHO Press any key to continue or E to go back to main
				SET /p settin=
				IF %settin% EQU e GOTO Menu & REM GOTO main menu display
				IF %settin% EQU E GOTO Menu & REM ''''''''''''''''''''''

				:address1
				CLS
				ECHO What would you like to DO?
				ECHO.
				ECHO 1) add a contact
				ECHO 2) delete a contact
				ECHO 3) search FOR and view a contact
				ECHO 4) Go back to main
				CHOICE /c 1234 /n
				IF %ERRORLEVEL% EQU 1 GOTO address2 & REM GOTO add contact
				IF %ERRORLEVEL% EQU 2 GOTO address3 & REM GOTO delete contact
				IF %ERRORLEVEL% EQU 3 GOTO address4 & REM GOTO view contact
				IF %ERRORLEVEL% EQU 4 (
				SET direc=%CD%
				SET direc=!direc:~0,-9!
				CD %direc%
				GOTO Menu & REM GOTO main menu display
				)
			;

			::Add contact code;

				::Add contact (SET details);
					:address2
					SET othera=0
					SET sk1=0
					SET sk2=0
					SET sk3=0
					SET sk4=0
					SET sk5=0
					SET sk6=0
					SET sk7=0
					SET sk8=0
					SET sk9=0
					CLS
					ECHO DO NOT use spaces! Use underscores (_) instead!
					ECHO you have chosen to add a contact
					ECHO.
					ECHO type skip IF you don't want a certain aspect to be recorded. Items marked with a
					ECHO * are compulsory
					SET /p fname=first name*:
					IF %fname% EQU skip SET sk1=1
					SET /p lname=last name*:
					IF %lname% EQU skip SET sk2=1
					SET /p hnum=home number:
					IF %hnum% EQU skip SET sk3=1
					SET /p mnum=mobile number:
					IF %mnum% EQU skip SET sk4=1
					SET /p home=home address:
					IF %home% EQU skip SET sk5=1
					SET /p othera=other address:
					IF %othera% EQU skip SET sk6=1
					IF %sk6% NEQ 1 (
					SET /p speca=please specIFy*: (use underscores (_) FOR spaces)
					IF %speca% EQU skip SET sk7=1
					)
					SET /p email=email:
					IF %email% EQU skip SET sk8=1
					SET /p bday=birthday:
					IF %bday% EQU skip SET sk9=1
					GOTO add2 & REM GOTO add contact (create file)
				;

				::Add contact (create file);
					:add2
					CLS
					ECHO :: > "%lname%, %fname%.bat"
					ECHO SET fname=%fname% >> "%lname%, %fname%.bat"
					ECHO SET lname=%lname% >> "%lname%, %fname%.bat"
					IF %sk3% EQU 0 ECHO SET hnum=%hnum% >> "%lname%, %fname%.bat"
					IF %sk4% EQU 0 ECHO SET mnum=%mnum% >> "%lname%, %fname%.bat"
					IF %sk5% EQU 0 ECHO SET home=%home% >> "%lname%, %fname%.bat"
					IF %sk6% EQU 0 ECHO SET othera=%othera% >> "%lname%, %fname%.bat"
					IF %sk7% EQU 0 ECHO SET speca=%speca% >> "%lname%, %fname%.bat"
					IF %sk8% EQU 0 SET email=%email% >> "%lname%, %fname%.bat"
					IF %sk9% EQU 0 SET bday=%bday% >> "%lname%, %fname%.bat"
					GOTO suc1 & REM GOTO add contact (check details)
				;

				::Add contact (check details);
					:suc1
					CLS
					ECHO please check over the details
					CALL "%lname%, %fname%.bat"
					ECHO.
					ECHO.
					ECHO first name:%fname%
					ECHO last name:%lname%
					IF %hnum% DEFINED ECHO home number:%hnum%
					IF %mnum% DEFINED ECHO mobile number:%mnum%
					IF %home% DEFINED ECHO home address:%home%
					IF %othera% DEFINED ECHO other address:%othera% (%speca%)
					IF %email% DEFINED ECHO email address:%email%
					IF %bday% DEFINED ECHO birthday:%bday%
					ECHO.
					ECHO.
					ECHO press any key to return
					PAUSE >NUL
					GOTO address1 & REM GOTO addres book menu
				;
			;

			::Delete contact code;

				::Delete contact (find contact);
					:address3
					CLS
					ECHO You have chosen to delete a contact
					ECHO press E to EXIT
					ECHO.
					ECHO.
					SET /p first=first name:
					SET /p last=last name:
					IF %first% EQU E GOTO Menu
					IF %first% EQU e GOTO Menu
					IF EXIST "%last%, %first%.bat" GOTO delll & REM GOTO delete contact (delete file)
					CLS
					ECHO no contact of that name was found, check your spelling.
					ECHO press any key to go back
					PAUSE >NUL
					GOTO address3 & REM Repeat delete contact
				;

				::Delete contact (delete file);
					:delll
					CLS
					CLS
					ECHO are you sure you want to delete %first% %last%'s contact? (y/n)
					CHOICE /c yn /n
					IF %ERRORLEVEL% EQU 1 DEL "%last%, %first%.bat"
					ECHO press any key to return
					PAUSE >NUL
					GOTO address1 & REM GOTO address book menu
				;
			;

			::View contact code;

				::View contact (search);
					:address4
					SET lname=
					SET fname=
					SET hnum=
					SET mnum=
					SET email=
					SET home=
					SET bday=
					SET othera=
					SET speca=
					CLS
					ECHO You have chosen to view a contact's details
					ECHO Type E to go back to main
					ECHO.
					ECHO.
					SET /p first=first name:
					IF %first% EQU e GOTO address & REM GOTO address book menu
					IF %first% EQU E GOTO address & REM ''''''''''''''''''''''
					SET /p last=last name:
					IF EXIST "%last%, %first%.bat" GOTO EXIST & REM GOTO view contact (view details)
					CLS
					ECHO No contacts were found under that name, sorry
					ECHO.
					ECHO press any key to search again
					PAUSE >NUL
					GOTO address4 & REM Repeat
				;

				::View contact (view details);
					:EXIST
					CALL "%last%, %first%.bat"
					CLS
					ECHO .%fname% %lname%
					ECHO .%hnum%
					ECHO .%mnum%
					ECHO .%home%
					ECHO .%othera% %speca%
					ECHO .%email%
					ECHO .%bday%
					ECHO.
					ECHO press any key to return
					PAUSE >NUL
					GOTO address1 & REM GOTO address book menu
				;
			;
		;

		::Stop watch code;

			::Stop watch menu;
				:watch
				CLS
				ECHO Press any key to START the timer or H to see the instructions
				SET /p START=
				IF %START% EQU H GOTO helpwatch & REM GOTO stop watch help
				IF %START% EQU h GOTO helpwatch & REM ''''''''''''''''''''
				GOTO back & REM GOTO background data (stop watch)
			;

			::Stop watch help;
				:helpwatch
				CLS
				ECHO Press 1 to START/stop the timer
				ECHO Press 2 to record a lap (maximum of three laps)
				ECHO Press 3, when stopped, to reset the timer.
				ECHO.
				ECHO The timer only counts IN whole seconds.
				ECHO.
				ECHO Press any key to go back
				PAUSE >NUL
				GOTO watch & REM GOTO stop watch menu
			;

			::Background data (stop watch);
				:back
				SET lap1=0
				SET lap2=0
				SET lap3=0
				SET TIME=-1
				SET reset=0
				SET timex=0
				SET timey=1
				SET err=0
				SET errx=0
				SET erry=0
				SET lap=0
				REM GOTO Stop watch hud
			;

			::Stop watch hud;
				:timerwa
				IF %timex% NEQ 0 SET /a timex=%timex%+1
				IF %errx% NEQ 0 SET /a errx=%errx%+1
				IF %timex% GEQ %timey% SET reset=0
				IF %errx% GEQ %erry% SET err=0
				IF %lap3% NEQ 0 SET lap=1
				IF %lap3% EQU 0 SET lapnum=3
				IF %lap2% EQU 0 SET lapnum=2
				IF %lap1% EQU 0 SET lapnum=1
				SET /a TIME=%TIME%+1
				CLS
				IF %err% NEQ 0 ECHO All three laps have values already. You canNOT add any more
				IF %err% NEQ 0 ECHO.
				IF %reset% EQU 1 ECHO CanNOT reset because TIME has NOT been stopped
				ECHO %TIME% seconds
				ECHO.
				ECHO.
				IF %lap1% NEQ 0 ECHO Lap One: %lap1% seconds
				IF %lap2% NEQ 0 ECHO Lap Two: %lap2% seconds
				IF %lap3% NEQ 0 ECHO Lap Three: %lap3% seconds
				ECHO.
				ECHO.
				ECHO 1 = START/Stop
				ECHO 2 = Lap
				ECHO 3 = Reset (once stopped)
				ECHO 4 = Return to Menu
				ECHO.
				CHOICE /c 1234c /n /t 1 /d c
				IF %ERRORLEVEL% EQU 1 GOTO stopwa & REM GOTO stop watch (stop)
				IF %ERRORLEVEL% EQU 2 GOTO lapwa & REM GOTO stop watch (lap)
				IF %ERRORLEVEL% EQU 3 SET timex=%TIME%
				IF %ERRORLEVEL% EQU 3 SET /a timey=%timex%+3
				IF %ERRORLEVEL% EQU 3 SET reset=1
				IF %ERRORLEVEL% EQU 3 GOTO timerwa & REM GOTO stop watch hud
				IF %ERRORLEVEL% EQU 4 GOTO Menu & REM GOTO main menu display
				IF %ERRORLEVEL% EQU 5 GOTO timerwa & REM GOTO stop watch hud
			;

			::Stop watch (stop);
				:stopwa
				CLS
				ECHO %TIME% seconds
				ECHO.
				ECHO.
				IF %lap1% NEQ 0 ECHO Lap One: %lap1% seconds
				IF %lap2% NEQ 0 ECHO Lap Two: %lap2% seconds
				IF %lap3% NEQ 0 ECHO Lap Three: %lap3% seconds
				ECHO.
				ECHO.
				ECHO 1 = START/Stop
				ECHO 2 = Lap
				ECHO 3 = Reset (once stopped)
				ECHO 4 = Return to Menu
				ECHO.
				CHOICE /c 1234 /n
				IF %ERRORLEVEL% EQU 1 GOTO timerwa & REM GOTO stop watch hud
				IF %ERRORLEVEL% EQU 2 SET lap%lapnum%=%TIME%
				IF %ERRORLEVEL% EQU 3 GOTO resetwa & REM GOTO stop watch (reset)
				IF %ERRORLEVEL% EQU 4 GOTO Menu & REM GOTO main menu display
			;

			::Stop watch (lap);
				:lapwa
				IF %lap% EQU 1 SET errx=0
				IF %lap% EQU 1 SET erry=3
				IF %lap% EQU 1 SET err=1
				IF %lap% EQU 1 GOTO timerwa
				CLS
				SET lap%lapnum%=%TIME%
				SET TIME=-1
				GOTO timerwa & REM GOTO stop watch hud
			;

			::Stop watch (reset);
				:resetwa
				CLS
				SET lap1=0
				SET lap2=0
				SET lap3=0
				SET TIME=0
				SET reset=0
				SET timex=0
				SET timey=1
				SET err=0
				SET errx=0
				SET erry=1
				SET lap=0
				GOTO stopwa & REM GOTO stop watch (stop)
			;
		;

		::Encryption code;

			::User_input;
				:user_input
				CLS
				ECHO Unfortunately, the encryptor doesn't recognise spaces yet. Use "." (periods) instead.
				ECHO.
				SET /p phrase=Please type in the phrase you want encrypted (Can only include letters) (max of 50 characters)  {
				GOTO encrypt
			;

			::Initial encrption;
				:encrypt

				SET code=%phrase%Q000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000

				SET char1=!code:~0,1!
				SET char2=!code:~1,1!
				SET char3=!code:~2,1!
				SET char4=!code:~3,1!
				SET char5=!code:~4,1!
				SET char6=!code:~5,1!
				SET char7=!code:~6,1!
				SET char8=!code:~7,1!
				SET char9=!code:~8,1!
				SET char10=!code:~9,1!
				SET char11=!code:~10,1!
				SET char12=!code:~11,1!
				SET char13=!code:~12,1!
				SET char14=!code:~13,1!
				SET char15=!code:~14,1!
				SET char16=!code:~15,1!
				SET char17=!code:~16,1!
				SET char18=!code:~17,1!
				SET char19=!code:~18,1!
				SET char19=!code:~19,1!
				SET char20=!code:~20,1!
				SET char21=!code:~20,1!
				SET char22=!code:~21,1!
				SET char23=!code:~22,1!
				SET char24=!code:~23,1!
				SET char25=!code:~24,1!
				SET char26=!code:~25,1!
				SET char27=!code:~26,1!
				SET char28=!code:~27,1!
				SET char29=!code:~28,1!
				SET char30=!code:~29,1!
				SET char31=!code:~30,1!
				SET char32=!code:~31,1!
				SET char33=!code:~32,1!
				SET char34=!code:~33,1!
				SET char35=!code:~34,1!
				SET char36=!code:~35,1!
				SET char37=!code:~36,1!
				SET char38=!code:~37,1!
				SET char39=!code:~38,1!
				SET char40=!code:~39,1!
				SET char41=!code:~40,1!
				SET char42=!code:~41,1!
				SET char43=!code:~42,1!
				SET char44=!code:~43,1!
				SET char45=!code:~44,1!
				SET char46=!code:~45,1!
				SET char47=!code:~46,1!
				SET char48=!code:~47,1!
				SET char49=!code:~48,1!
				SET char50=!code:~49,1!
				SET char51=!code:~50,1!

				IF %char2% EQU Q SET num=1
				IF %char3% EQU Q SET num=2
				IF %char4% EQU Q SET num=3
				IF %char5% EQU Q SET num=4
				IF %char6% EQU Q SET num=5
				IF %char7% EQU Q SET num=6
				IF %char8% EQU Q SET num=7
				IF %char9% EQU Q SET num=8
				IF %char10% EQU Q SET num=9
				IF %char11% EQU Q SET num=10
				IF %char12% EQU Q SET num=11
				IF %char13% EQU Q SET num=12
				IF %char14% EQU Q SET num=13
				IF %char15% EQU Q SET num=14
				IF %char16% EQU Q SET num=15
				IF %char17% EQU Q SET num=16
				IF %char18% EQU Q SET num=17
				IF %char19% EQU Q SET num=18
				IF %char20% EQU Q SET num=19
				IF %char21% EQU Q SET num=20
				IF %char22% EQU Q SET num=21
				IF %char23% EQU Q SET num=22
				IF %char24% EQU Q SET num=23
				IF %char25% EQU Q SET num=24
				IF %char26% EQU Q SET num=25
				IF %char27% EQU Q SET num=26
				IF %char28% EQU Q SET num=27
				IF %char29% EQU Q SET num=28
				IF %char30% EQU Q SET num=29
				IF %char31% EQU Q SET num=30
				IF %char32% EQU Q SET num=31
				IF %char33% EQU Q SET num=32
				IF %char34% EQU Q SET num=33
				IF %char35% EQU Q SET num=34
				IF %char36% EQU Q SET num=35
				IF %char37% EQU Q SET num=36
				IF %char38% EQU Q SET num=37
				IF %char38% EQU Q SET num=38
				IF %char40% EQU Q SET num=39
				IF %char41% EQU Q SET num=40
				IF %char42% EQU Q SET num=41
				IF %char43% EQU Q SET num=42
				IF %char44% EQU Q SET num=43
				IF %char45% EQU Q SET num=44
				IF %char46% EQU Q SET num=45
				IF %char47% EQU Q SET num=46
				IF %char48% EQU Q SET num=47
				IF %char49% EQU Q SET num=48
				IF %char50% EQU Q SET num=49
				IF %char51% EQU Q SET num=50

				SET char=char
				SET num2=0

				:encryption
				SET /a num2=%num2%+1

				IF %num2% EQU 1 SET letter=%char1%
				IF %num2% EQU 2 SET letter=%char2%
				IF %num2% EQU 3 SET letter=%char3%
				IF %num2% EQU 4 SET letter=%char4%
				IF %num2% EQU 5 SET letter=%char5%
				IF %num2% EQU 6 SET letter=%char6%
				IF %num2% EQU 7 SET letter=%char7%
				IF %num2% EQU 8 SET letter=%char8%
				IF %num2% EQU 9 SET letter=%char9%
				IF %num2% EQU 10 SET letter=%char10%
				IF %num2% EQU 11 SET letter=%char11%
				IF %num2% EQU 12 SET letter=%char12%
				IF %num2% EQU 13 SET letter=%char13%
				IF %num2% EQU 14 SET letter=%char14%
				IF %num2% EQU 15 SET letter=%char15%
				IF %num2% EQU 16 SET letter=%char16%
				IF %num2% EQU 17 SET letter=%char17%
				IF %num2% EQU 18 SET letter=%char18%
				IF %num2% EQU 19 SET letter=%char19%
				IF %num2% EQU 20 SET letter=%char20%
				IF %num2% EQU 21 SET letter=%char21%
				IF %num2% EQU 22 SET letter=%char22%
				IF %num2% EQU 23 SET letter=%char23%
				IF %num2% EQU 24 SET letter=%char24%
				IF %num2% EQU 25 SET letter=%char25%
				IF %num2% EQU 26 SET letter=%char26%
				IF %num2% EQU 27 SET letter=%char27%
				IF %num2% EQU 28 SET letter=%char28%
				IF %num2% EQU 29 SET letter=%char29%
				IF %num2% EQU 30 SET letter=%char30%
				IF %num2% EQU 31 SET letter=%char31%
				IF %num2% EQU 32 SET letter=%char32%
				IF %num2% EQU 33 SET letter=%char33%
				IF %num2% EQU 34 SET letter=%char34%
				IF %num2% EQU 35 SET letter=%char35%
				IF %num2% EQU 36 SET letter=%char36%
				IF %num2% EQU 37 SET letter=%char37%
				IF %num2% EQU 38 SET letter=%char38%
				IF %num2% EQU 39 SET letter=%char39%
				IF %num2% EQU 40 SET letter=%char40%
				IF %num2% EQU 41 SET letter=%char41%
				IF %num2% EQU 42 SET letter=%char42%
				IF %num2% EQU 43 SET letter=%char43%
				IF %num2% EQU 44 SET letter=%char44%
				IF %num2% EQU 45 SET letter=%char45%
				IF %num2% EQU 46 SET letter=%char46%
				IF %num2% EQU 47 SET letter=%char47%
				IF %num2% EQU 48 SET letter=%char48%
				IF %num2% EQU 49 SET letter=%char49%
				IF %num2% EQU 50 SET letter=%char50%

				IF %letter% EQU a SET let%num2%=H
				IF %letter% EQU b SET let%num2%=v
				IF %letter% EQU c SET let%num2%=:
				IF %letter% EQU d SET let%num2%=m
				IF %letter% EQU e SET let%num2%=�
				IF %letter% EQU f SET let%num2%=~
				IF %letter% EQU g SET let%num2%=f
				IF %letter% EQU h SET let%num2%=X
				IF %letter% EQU i SET let%num2%=$
				IF %letter% EQU j SET let%num2%=^
				IF %letter% EQU k SET let%num2%=E
				IF %letter% EQU l SET let%num2%=a
				IF %letter% EQU m SET let%num2%=w
				IF %letter% EQU n SET let%num2%=(
				IF %letter% EQU o SET let%num2%=4
				IF %letter% EQU p SET let%num2%=.
				IF %letter% EQU q SET let%num2%=u
				IF %letter% EQU r SET let%num2%=d
				IF %letter% EQU s SET let%num2%=D
				IF %letter% EQU t SET let%num2%=j
				IF %letter% EQU u SET let%num2%=*
				IF %letter% EQU v SET let%num2%=#
				IF %letter% EQU w SET let%num2%=S
				IF %letter% EQU x SET let%num2%=t
				IF %letter% EQU y SET let%num2%=n
				IF %letter% EQU z SET let%num2%=Y
				IF %letter% EQU A SET let%num2%=�
				IF %letter% EQU B SET let%num2%=�
				IF %letter% EQU C SET let%num2%=B
				IF %letter% EQU D SET let%num2%=J
				IF %letter% EQU E SET let%num2%=l
				IF %letter% EQU F SET let%num2%=i
				IF %letter% EQU G SET let%num2%=;
				IF %letter% EQU H SET let%num2%=P
				IF %letter% EQU I SET let%num2%=G
				IF %letter% EQU J SET let%num2%=[
				IF %letter% EQU K SET let%num2%=/
				IF %letter% EQU L SET let%num2%=�
				IF %letter% EQU M SET let%num2%=N
				IF %letter% EQU N SET let%num2%=r
				IF %letter% EQU O SET let%num2%=,
				IF %letter% EQU P SET let%num2%=6
				IF %letter% EQU Q SET let%num2%=q
				IF %letter% EQU R SET let%num2%=)
				IF %letter% EQU S SET let%num2%=]
				IF %letter% EQU T SET let%num2%=\
				IF %letter% EQU U SET let%num2%=@
				IF %letter% EQU V SET let%num2%=C
				IF %letter% EQU W SET let%num2%=�
				IF %letter% EQU X SET let%num2%=O
				IF %letter% EQU Y SET let%num2%=9
				IF %letter% EQU Z SET let%num2%=I
				IF %letter% EQU . SET let%num2%=_

				IF %num2% EQU %num% GOTO compile
				GOTO encryption

				:compile
				ECHO %num%
				ECHO %let1%
				ECHO %let2%
				ECHO %let3%
				ECHO %let4%
				ECHO %let5%
				ECHO %let6%
				ECHO %let7%
				ECHO %let8%
				ECHO %let9%
				ECHO %let10%
				ECHO %let11%
				ECHO %let12%
				ECHO %let13%
				ECHO %let14%
				ECHO %let15%
				ECHO %let16%
				ECHO %let17%
				ECHO %let18%
				ECHO %let19%
				ECHO %let20%
				ECHO %let21%
				ECHO %let22%
				ECHO %let23%
				ECHO %let24%
				ECHO %let25%
				ECHO %let26%
				ECHO %let27%
				ECHO %let28%
				ECHO %let29%
				ECHO %let30%
				ECHO %let31%
				ECHO %let32%
				ECHO %let33%
				ECHO %let34%
				ECHO %let35%
				ECHO %let36%
				ECHO %let37%
				ECHO %let38%
				ECHO %let39%
				ECHO %let40%
				ECHO %let41%
				ECHO %let42%
				ECHO %let43%
				ECHO %let44%
				ECHO %let45%
				ECHO %let46%
				ECHO %let47%
				ECHO %let48%
				ECHO %let49%
				ECHO %let50%

				IF %num% EQU 1 SET word=%let1%
				IF %num% EQU 2 SET word=%let1%%let2%
				IF %num% EQU 3 SET word=%let1%%let2%%let3%
				IF %num% EQU 4 SET word=%let1%%let2%%let3%%let4%
				IF %num% EQU 5 SET word=%let1%%let2%%let3%%let4%%let5%
				IF %num% EQU 6 SET word=%let1%%let2%%let3%%let4%%let5%%let6%
				IF %num% EQU 7 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%
				IF %num% EQU 8 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%
				IF %num% EQU 9 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%
				IF %num% EQU 10 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%%let10%
				IF %num% EQU 11 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%%let10%%let11%
				IF %num% EQU 12 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%%let10%%let11%%let12%
				IF %num% EQU 13 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%%let10%%let11%%let12%%let13%
				IF %num% EQU 14 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%%let10%%let11%%let12%%let13%%let14%
				IF %num% EQU 15 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%%let10%%let11%%let12%%let13%%let14%%let15%
				IF %num% EQU 16 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%%let10%%let11%%let12%%let13%%let14%%let15%%let16%
				IF %num% EQU 17 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%%let10%%let11%%let12%%let13%%let14%%let15%%let16%%let17%
				IF %num% EQU 18 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%%let10%%let11%%let12%%let13%%let14%%let15%%let16%%let17%%let18%
				IF %num% EQU 19 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%%let10%%let11%%let12%%let13%%let14%%let15%%let16%%let17%%let18%%let19%
				IF %num% EQU 20 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%%let10%%let11%%let12%%let13%%let14%%let15%%let16%%let17%%let18%%let19%%let20%
				IF %num% EQU 21 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%%let10%%let11%%let12%%let13%%let14%%let15%%let16%%let17%%let18%%let19%%let20%%let21%
				IF %num% EQU 22 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%%let10%%let11%%let12%%let13%%let14%%let15%%let16%%let17%%let18%%let19%%let20%%let21%%let22%
				IF %num% EQU 23 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%%let10%%let11%%let12%%let13%%let14%%let15%%let16%%let17%%let18%%let19%%let20%%let21%%let22%%let23%
				IF %num% EQU 24 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%%let10%%let11%%let12%%let13%%let14%%let15%%let16%%let17%%let18%%let19%%let20%%let21%%let22%%let23%%let24%
				IF %num% EQU 25 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%%let10%%let11%%let12%%let13%%let14%%let15%%let16%%let17%%let18%%let19%%let20%%let21%%let22%%let23%%let24%%let25%
				IF %num% EQU 26 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%%let10%%let11%%let12%%let13%%let14%%let15%%let16%%let17%%let18%%let19%%let20%%let21%%let22%%let23%%let24%%let25%%let26%
				IF %num% EQU 27 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%%let10%%let11%%let12%%let13%%let14%%let15%%let16%%let17%%let18%%let19%%let20%%let21%%let22%%let23%%let24%%let25%%let26%%let27%
				IF %num% EQU 28 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%%let10%%let11%%let12%%let13%%let14%%let15%%let16%%let17%%let18%%let19%%let20%%let21%%let22%%let23%%let24%%let25%%let26%%let27%%let28%
				IF %num% EQU 29 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%%let10%%let11%%let12%%let13%%let14%%let15%%let16%%let17%%let18%%let19%%let20%%let21%%let22%%let23%%let24%%let25%%let26%%let27%%let28%%let29%
				IF %num% EQU 30 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%%let10%%let11%%let12%%let13%%let14%%let15%%let16%%let17%%let18%%let19%%let20%%let21%%let22%%let23%%let24%%let25%%let26%%let27%%let28%%let29%%let30%
				IF %num% EQU 31 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%%let10%%let11%%let12%%let13%%let14%%let15%%let16%%let17%%let18%%let19%%let20%%let21%%let22%%let23%%let24%%let25%%let26%%let27%%let28%%let29%%let30%%let31%
				IF %num% EQU 32 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%%let10%%let11%%let12%%let13%%let14%%let15%%let16%%let17%%let18%%let19%%let20%%let21%%let22%%let23%%let24%%let25%%let26%%let27%%let28%%let29%%let30%%let31%%let32%
				IF %num% EQU 33 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%%let10%%let11%%let12%%let13%%let14%%let15%%let16%%let17%%let18%%let19%%let20%%let21%%let22%%let23%%let24%%let25%%let26%%let27%%let28%%let29%%let30%%let31%%let32%%let33%
				IF %num% EQU 34 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%%let10%%let11%%let12%%let13%%let14%%let15%%let16%%let17%%let18%%let19%%let20%%let21%%let22%%let23%%let24%%let25%%let26%%let27%%let28%%let29%%let30%%let31%%let32%%let33%%let34%
				IF %num% EQU 35 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%%let10%%let11%%let12%%let13%%let14%%let15%%let16%%let17%%let18%%let19%%let20%%let21%%let22%%let23%%let24%%let25%%let26%%let27%%let28%%let29%%let30%%let31%%let32%%let33%%let34%%let35%
				IF %num% EQU 36 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%%let10%%let11%%let12%%let13%%let14%%let15%%let16%%let17%%let18%%let19%%let20%%let21%%let22%%let23%%let24%%let25%%let26%%let27%%let28%%let29%%let30%%let31%%let32%%let33%%let34%%let35%%let36%
				IF %num% EQU 37 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%%let10%%let11%%let12%%let13%%let14%%let15%%let16%%let17%%let18%%let19%%let20%%let21%%let22%%let23%%let24%%let25%%let26%%let27%%let28%%let29%%let30%%let31%%let32%%let33%%let34%%let35%%let36%%let37%
				IF %num% EQU 38 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%%let10%%let11%%let12%%let13%%let14%%let15%%let16%%let17%%let18%%let19%%let20%%let21%%let22%%let23%%let24%%let25%%let26%%let27%%let28%%let29%%let30%%let31%%let32%%let33%%let34%%let35%%let36%%let37%%let38%
				IF %num% EQU 39 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%%let10%%let11%%let12%%let13%%let14%%let15%%let16%%let17%%let18%%let19%%let20%%let21%%let22%%let23%%let24%%let25%%let26%%let27%%let28%%let29%%let30%%let31%%let32%%let33%%let34%%let35%%let36%%let37%%let38%%let39%
				IF %num% EQU 40 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%%let10%%let11%%let12%%let13%%let14%%let15%%let16%%let17%%let18%%let19%%let20%%let21%%let22%%let23%%let24%%let25%%let26%%let27%%let28%%let29%%let30%%let31%%let32%%let33%%let34%%let35%%let36%%let37%%let38%%let39%%let40%
				IF %num% EQU 41 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%%let10%%let11%%let12%%let13%%let14%%let15%%let16%%let17%%let18%%let19%%let20%%let21%%let22%%let23%%let24%%let25%%let26%%let27%%let28%%let29%%let30%%let31%%let32%%let33%%let34%%let35%%let36%%let37%%let38%%let39%%let40%%let41%
				IF %num% EQU 42 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%%let10%%let11%%let12%%let13%%let14%%let15%%let16%%let17%%let18%%let19%%let20%%let21%%let22%%let23%%let24%%let25%%let26%%let27%%let28%%let29%%let30%%let31%%let32%%let33%%let34%%let35%%let36%%let37%%let38%%let39%%let40%%let41%%let42%
				IF %num% EQU 43 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%%let10%%let11%%let12%%let13%%let14%%let15%%let16%%let17%%let18%%let19%%let20%%let21%%let22%%let23%%let24%%let25%%let26%%let27%%let28%%let29%%let30%%let31%%let32%%let33%%let34%%let35%%let36%%let37%%let38%%let39%%let40%%let41%%let42%%let43%
				IF %num% EQU 44 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%%let10%%let11%%let12%%let13%%let14%%let15%%let16%%let17%%let18%%let19%%let20%%let21%%let22%%let23%%let24%%let25%%let26%%let27%%let28%%let29%%let30%%let31%%let32%%let33%%let34%%let35%%let36%%let37%%let38%%let39%%let40%%let41%%let42%%let43%%let44%
				IF %num% EQU 45 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%%let10%%let11%%let12%%let13%%let14%%let15%%let16%%let17%%let18%%let19%%let20%%let21%%let22%%let23%%let24%%let25%%let26%%let27%%let28%%let29%%let30%%let31%%let32%%let33%%let34%%let35%%let36%%let37%%let38%%let39%%let40%%let41%%let42%%let43%%let44%%let45%
				IF %num% EQU 46 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%%let10%%let11%%let12%%let13%%let14%%let15%%let16%%let17%%let18%%let19%%let20%%let21%%let22%%let23%%let24%%let25%%let26%%let27%%let28%%let29%%let30%%let31%%let32%%let33%%let34%%let35%%let36%%let37%%let38%%let39%%let40%%let41%%let42%%let43%%let44%%let45%%let46%
				IF %num% EQU 47 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%%let10%%let11%%let12%%let13%%let14%%let15%%let16%%let17%%let18%%let19%%let20%%let21%%let22%%let23%%let24%%let25%%let26%%let27%%let28%%let29%%let30%%let31%%let32%%let33%%let34%%let35%%let36%%let37%%let38%%let39%%let40%%let41%%let42%%let43%%let44%%let45%%let46%%let47%
				IF %num% EQU 48 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%%let10%%let11%%let12%%let13%%let14%%let15%%let16%%let17%%let18%%let19%%let20%%let21%%let22%%let23%%let24%%let25%%let26%%let27%%let28%%let29%%let30%%let31%%let32%%let33%%let34%%let35%%let36%%let37%%let38%%let39%%let40%%let41%%let42%%let43%%let44%%let45%%let46%%let47%%let48%
				IF %num% EQU 49 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%%let10%%let11%%let12%%let13%%let14%%let15%%let16%%let17%%let18%%let19%%let20%%let21%%let22%%let23%%let24%%let25%%let26%%let27%%let28%%let29%%let30%%let31%%let32%%let33%%let34%%let35%%let36%%let37%%let38%%let39%%let40%%let41%%let42%%let43%%let44%%let45%%let46%%let47%%let48%%let49%
				IF %num% EQU 50 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%%let10%%let11%%let12%%let13%%let14%%let15%%let16%%let17%%let18%%let19%%let20%%let21%%let22%%let23%%let24%%let25%%let26%%let27%%let28%%let29%%let30%%let31%%let32%%let33%%let34%%let35%%let36%%let37%%let38%%let39%%let40%%let41%%let42%%let43%%let44%%let45%%let46%%let47%%let48%%let49%%let50%

				:view
				CLS
				ECHO Your information has been encrypted.
				ECHO.
				ECHO " %phrase% " has turned into:
				ECHO %word%
				ECHO.
				ECHO Would you like to send the results to NOTepad? (Y/N)
				CHOICE /c yn /n
				IF %ERRORLEVEL% EQU 1 (
				CLS
				IF EXIST Encryption.txt DEL Encryption.txt
				ECHO %word% > "Encryption.txt"
				ECHO Creating file...
				PING localhost -n 3 >nul
				ECHO.
				ECHO.
				ECHO Done!
				START Encryption.txt
				)
				ECHO.
				ECHO.
				ECHO Press any key to START unencryption process.
				PAUSE >nul
				GOTO unencrypt
			;

			::Unencryption process;
				:unencrypt
				SET bla=0
				SET letter=

				:en
				SET /a bla=%bla%+1
				IF %bla% EQU 1 SET letter=%let1%
				IF %bla% EQU 2 SET letter=%let2%
				IF %bla% EQU 3 SET letter=%let3%
				IF %bla% EQU 4 SET letter=%let4%
				IF %bla% EQU 5 SET letter=%let5%
				IF %bla% EQU 6 SET letter=%let6%
				IF %bla% EQU 7 SET letter=%let7%
				IF %bla% EQU 8 SET letter=%let8%
				IF %bla% EQU 9 SET letter=%let9%
				IF %bla% EQU 10 SET letter=%let10%
				IF %bla% EQU 11 SET letter=%let11%
				IF %bla% EQU 12 SET letter=%let12%
				IF %bla% EQU 13 SET letter=%let13%
				IF %bla% EQU 14 SET letter=%let14%
				IF %bla% EQU 15 SET letter=%let15%
				IF %bla% EQU 16 SET letter=%let16%
				IF %bla% EQU 17 SET letter=%let17%
				IF %bla% EQU 18 SET letter=%let18%
				IF %bla% EQU 19 SET letter=%let19%
				IF %bla% EQU 20 SET letter=%let20%
				IF %bla% EQU 21 SET letter=%let21%
				IF %bla% EQU 22 SET letter=%let22%
				IF %bla% EQU 23 SET letter=%let23%
				IF %bla% EQU 24 SET letter=%let24%
				IF %bla% EQU 25 SET letter=%let25%
				IF %bla% EQU 26 SET letter=%let26%
				IF %bla% EQU 27 SET letter=%let27%
				IF %bla% EQU 28 SET letter=%let28%
				IF %bla% EQU 29 SET letter=%let29%
				IF %bla% EQU 30 SET letter=%let30%
				IF %bla% EQU 31 SET letter=%let31%
				IF %bla% EQU 32 SET letter=%let32%
				IF %bla% EQU 33 SET letter=%let33%
				IF %bla% EQU 34 SET letter=%let34%
				IF %bla% EQU 35 SET letter=%let35%
				IF %bla% EQU 36 SET letter=%let36%
				IF %bla% EQU 37 SET letter=%let37%
				IF %bla% EQU 38 SET letter=%let38%
				IF %bla% EQU 39 SET letter=%let39%
				IF %bla% EQU 40 SET letter=%let40%
				IF %bla% EQU 41 SET letter=%let41%
				IF %bla% EQU 42 SET letter=%let42%
				IF %bla% EQU 43 SET letter=%let43%
				IF %bla% EQU 44 SET letter=%let44%
				IF %bla% EQU 45 SET letter=%let45%
				IF %bla% EQU 46 SET letter=%let46%
				IF %bla% EQU 47 SET letter=%let47%
				IF %bla% EQU 48 SET letter=%let48%
				IF %bla% EQU 49 SET letter=%let49%
				IF %bla% EQU 50 SET letter=%let50%


				IF %letter% EQU H SET let%bla%=a
				IF %letter% EQU v SET let%bla%=b
				IF %letter% EQU : SET let%bla%=c
				IF %letter% EQU m SET let%bla%=d
				IF %letter% EQU � SET let%bla%=e
				IF %letter% EQU ~ SET let%bla%=f
				IF %letter% EQU f SET let%bla%=g
				IF %letter% EQU X SET let%bla%=h
				IF %letter% EQU $ SET let%bla%=i
				IF %letter% EQU ^ SET let%bla%=j
				IF %letter% EQU E SET let%bla%=k
				IF %letter% EQU a SET let%bla%=l
				IF %letter% EQU w SET let%bla%=m
				IF %letter% EQU ( SET let%bla%=n
				IF %letter% EQU 4 SET let%bla%=o
				IF %letter% EQU . SET let%bla%=p
				IF %letter% EQU u SET let%bla%=q
				IF %letter% EQU d SET let%bla%=r
				IF %letter% EQU D SET let%bla%=s
				IF %letter% EQU j SET let%bla%=t
				IF %letter% EQU * SET let%bla%=u
				IF %letter% EQU # SET let%bla%=v
				IF %letter% EQU S SET let%bla%=w
				IF %letter% EQU t SET let%bla%=x
				IF %letter% EQU n SET let%bla%=y
				IF %letter% EQU Y SET let%bla%=z
				IF %letter% EQU � SET let%bla%=A
				IF %letter% EQU � SET let%bla%=B
				IF %letter% EQU B SET let%bla%=C
				IF %letter% EQU J SET let%bla%=D
				IF %letter% EQU l SET let%bla%=E
				IF %letter% EQU i SET let%bla%=F
				IF %letter% EQU ; SET let%bla%=G
				IF %letter% EQU P SET let%bla%=H
				IF %letter% EQU G SET let%bla%=I
				IF %letter% EQU [ SET let%bla%=J
				IF %letter% EQU / SET let%bla%=K
				IF %letter% EQU � SET let%bla%=L
				IF %letter% EQU N SET let%bla%=M
				IF %letter% EQU r SET let%bla%=N
				IF %letter% EQU , SET let%bla%=O
				IF %letter% EQU 6 SET let%bla%=P
				IF %letter% EQU q SET let%bla%=Q
				IF %letter% EQU ) SET let%bla%=R
				IF %letter% EQU ] SET let%bla%=S
				IF %letter% EQU \ SET let%bla%=T
				IF %letter% EQU @ SET let%bla%=U
				IF %letter% EQU C SET let%bla%=V
				IF %letter% EQU � SET let%bla%=W
				IF %letter% EQU O SET let%bla%=X
				IF %letter% EQU 9 SET let%bla%=Y
				IF %letter% EQU I SET let%bla%=Z
				IF %letter% EQU _ SET let%bla%=


				IF %bla% EQU %num% GOTO create
				GOTO en


				:create
				ECHO %num%
				ECHO %let1%
				ECHO %let2%
				ECHO %let3%
				ECHO %let4%
				ECHO %let5%
				ECHO %let6%
				ECHO %let7%
				ECHO %let8%
				ECHO %let9%
				ECHO %let10%
				ECHO %let11%
				ECHO %let12%
				ECHO %let13%
				ECHO %let14%
				ECHO %let15%
				ECHO %let16%
				ECHO %let17%
				ECHO %let18%
				ECHO %let19%
				ECHO %let20%
				ECHO %let21%
				ECHO %let22%
				ECHO %let23%
				ECHO %let24%
				ECHO %let25%
				ECHO %let26%
				ECHO %let27%
				ECHO %let28%
				ECHO %let29%
				ECHO %let30%
				ECHO %let31%
				ECHO %let32%
				ECHO %let33%
				ECHO %let34%
				ECHO %let35%
				ECHO %let36%
				ECHO %let37%
				ECHO %let38%
				ECHO %let39%
				ECHO %let40%
				ECHO %let41%
				ECHO %let42%
				ECHO %let43%
				ECHO %let44%
				ECHO %let45%
				ECHO %let46%
				ECHO %let47%
				ECHO %let48%
				ECHO %let49%
				ECHO %let50%
				CLS
				PAUSE

				IF %num% EQU 1 SET word=%let1%
				IF %num% EQU 2 SET word=%let1%%let2%
				IF %num% EQU 3 SET word=%let1%%let2%%let3%
				IF %num% EQU 4 SET word=%let1%%let2%%let3%%let4%
				IF %num% EQU 5 SET word=%let1%%let2%%let3%%let4%%let5%
				IF %num% EQU 6 SET word=%let1%%let2%%let3%%let4%%let5%%let6%
				IF %num% EQU 7 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%
				IF %num% EQU 8 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%
				IF %num% EQU 9 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%
				IF %num% EQU 10 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%%let10%
				IF %num% EQU 11 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%%let10%%let11%
				IF %num% EQU 12 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%%let10%%let11%%let12%
				IF %num% EQU 13 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%%let10%%let11%%let12%%let13%
				IF %num% EQU 14 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%%let10%%let11%%let12%%let13%%let14%
				IF %num% EQU 15 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%%let10%%let11%%let12%%let13%%let14%%let15%
				IF %num% EQU 16 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%%let10%%let11%%let12%%let13%%let14%%let15%%let16%
				IF %num% EQU 17 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%%let10%%let11%%let12%%let13%%let14%%let15%%let16%%let17%
				IF %num% EQU 18 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%%let10%%let11%%let12%%let13%%let14%%let15%%let16%%let17%%let18%
				IF %num% EQU 19 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%%let10%%let11%%let12%%let13%%let14%%let15%%let16%%let17%%let18%%let19%
				IF %num% EQU 20 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%%let10%%let11%%let12%%let13%%let14%%let15%%let16%%let17%%let18%%let19%%let20%
				IF %num% EQU 21 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%%let10%%let11%%let12%%let13%%let14%%let15%%let16%%let17%%let18%%let19%%let20%%let21%
				IF %num% EQU 22 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%%let10%%let11%%let12%%let13%%let14%%let15%%let16%%let17%%let18%%let19%%let20%%let21%%let22%
				IF %num% EQU 23 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%%let10%%let11%%let12%%let13%%let14%%let15%%let16%%let17%%let18%%let19%%let20%%let21%%let22%%let23%
				IF %num% EQU 24 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%%let10%%let11%%let12%%let13%%let14%%let15%%let16%%let17%%let18%%let19%%let20%%let21%%let22%%let23%%let24%
				IF %num% EQU 25 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%%let10%%let11%%let12%%let13%%let14%%let15%%let16%%let17%%let18%%let19%%let20%%let21%%let22%%let23%%let24%%let25%
				IF %num% EQU 26 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%%let10%%let11%%let12%%let13%%let14%%let15%%let16%%let17%%let18%%let19%%let20%%let21%%let22%%let23%%let24%%let25%%let26%
				IF %num% EQU 27 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%%let10%%let11%%let12%%let13%%let14%%let15%%let16%%let17%%let18%%let19%%let20%%let21%%let22%%let23%%let24%%let25%%let26%%let27%
				IF %num% EQU 28 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%%let10%%let11%%let12%%let13%%let14%%let15%%let16%%let17%%let18%%let19%%let20%%let21%%let22%%let23%%let24%%let25%%let26%%let27%%let28%
				IF %num% EQU 29 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%%let10%%let11%%let12%%let13%%let14%%let15%%let16%%let17%%let18%%let19%%let20%%let21%%let22%%let23%%let24%%let25%%let26%%let27%%let28%%let29%
				IF %num% EQU 30 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%%let10%%let11%%let12%%let13%%let14%%let15%%let16%%let17%%let18%%let19%%let20%%let21%%let22%%let23%%let24%%let25%%let26%%let27%%let28%%let29%%let30%
				IF %num% EQU 31 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%%let10%%let11%%let12%%let13%%let14%%let15%%let16%%let17%%let18%%let19%%let20%%let21%%let22%%let23%%let24%%let25%%let26%%let27%%let28%%let29%%let30%%let31%
				IF %num% EQU 32 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%%let10%%let11%%let12%%let13%%let14%%let15%%let16%%let17%%let18%%let19%%let20%%let21%%let22%%let23%%let24%%let25%%let26%%let27%%let28%%let29%%let30%%let31%%let32%
				IF %num% EQU 33 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%%let10%%let11%%let12%%let13%%let14%%let15%%let16%%let17%%let18%%let19%%let20%%let21%%let22%%let23%%let24%%let25%%let26%%let27%%let28%%let29%%let30%%let31%%let32%%let33%
				IF %num% EQU 34 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%%let10%%let11%%let12%%let13%%let14%%let15%%let16%%let17%%let18%%let19%%let20%%let21%%let22%%let23%%let24%%let25%%let26%%let27%%let28%%let29%%let30%%let31%%let32%%let33%%let34%
				IF %num% EQU 35 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%%let10%%let11%%let12%%let13%%let14%%let15%%let16%%let17%%let18%%let19%%let20%%let21%%let22%%let23%%let24%%let25%%let26%%let27%%let28%%let29%%let30%%let31%%let32%%let33%%let34%%let35%
				IF %num% EQU 36 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%%let10%%let11%%let12%%let13%%let14%%let15%%let16%%let17%%let18%%let19%%let20%%let21%%let22%%let23%%let24%%let25%%let26%%let27%%let28%%let29%%let30%%let31%%let32%%let33%%let34%%let35%%let36%
				IF %num% EQU 37 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%%let10%%let11%%let12%%let13%%let14%%let15%%let16%%let17%%let18%%let19%%let20%%let21%%let22%%let23%%let24%%let25%%let26%%let27%%let28%%let29%%let30%%let31%%let32%%let33%%let34%%let35%%let36%%let37%
				IF %num% EQU 38 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%%let10%%let11%%let12%%let13%%let14%%let15%%let16%%let17%%let18%%let19%%let20%%let21%%let22%%let23%%let24%%let25%%let26%%let27%%let28%%let29%%let30%%let31%%let32%%let33%%let34%%let35%%let36%%let37%%let38%
				IF %num% EQU 39 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%%let10%%let11%%let12%%let13%%let14%%let15%%let16%%let17%%let18%%let19%%let20%%let21%%let22%%let23%%let24%%let25%%let26%%let27%%let28%%let29%%let30%%let31%%let32%%let33%%let34%%let35%%let36%%let37%%let38%%let39%
				IF %num% EQU 40 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%%let10%%let11%%let12%%let13%%let14%%let15%%let16%%let17%%let18%%let19%%let20%%let21%%let22%%let23%%let24%%let25%%let26%%let27%%let28%%let29%%let30%%let31%%let32%%let33%%let34%%let35%%let36%%let37%%let38%%let39%%let40%
				IF %num% EQU 41 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%%let10%%let11%%let12%%let13%%let14%%let15%%let16%%let17%%let18%%let19%%let20%%let21%%let22%%let23%%let24%%let25%%let26%%let27%%let28%%let29%%let30%%let31%%let32%%let33%%let34%%let35%%let36%%let37%%let38%%let39%%let40%%let41%
				IF %num% EQU 42 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%%let10%%let11%%let12%%let13%%let14%%let15%%let16%%let17%%let18%%let19%%let20%%let21%%let22%%let23%%let24%%let25%%let26%%let27%%let28%%let29%%let30%%let31%%let32%%let33%%let34%%let35%%let36%%let37%%let38%%let39%%let40%%let41%%let42%
				IF %num% EQU 43 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%%let10%%let11%%let12%%let13%%let14%%let15%%let16%%let17%%let18%%let19%%let20%%let21%%let22%%let23%%let24%%let25%%let26%%let27%%let28%%let29%%let30%%let31%%let32%%let33%%let34%%let35%%let36%%let37%%let38%%let39%%let40%%let41%%let42%%let43%
				IF %num% EQU 44 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%%let10%%let11%%let12%%let13%%let14%%let15%%let16%%let17%%let18%%let19%%let20%%let21%%let22%%let23%%let24%%let25%%let26%%let27%%let28%%let29%%let30%%let31%%let32%%let33%%let34%%let35%%let36%%let37%%let38%%let39%%let40%%let41%%let42%%let43%%let44%
				IF %num% EQU 45 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%%let10%%let11%%let12%%let13%%let14%%let15%%let16%%let17%%let18%%let19%%let20%%let21%%let22%%let23%%let24%%let25%%let26%%let27%%let28%%let29%%let30%%let31%%let32%%let33%%let34%%let35%%let36%%let37%%let38%%let39%%let40%%let41%%let42%%let43%%let44%%let45%
				IF %num% EQU 46 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%%let10%%let11%%let12%%let13%%let14%%let15%%let16%%let17%%let18%%let19%%let20%%let21%%let22%%let23%%let24%%let25%%let26%%let27%%let28%%let29%%let30%%let31%%let32%%let33%%let34%%let35%%let36%%let37%%let38%%let39%%let40%%let41%%let42%%let43%%let44%%let45%%let46%
				IF %num% EQU 47 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%%let10%%let11%%let12%%let13%%let14%%let15%%let16%%let17%%let18%%let19%%let20%%let21%%let22%%let23%%let24%%let25%%let26%%let27%%let28%%let29%%let30%%let31%%let32%%let33%%let34%%let35%%let36%%let37%%let38%%let39%%let40%%let41%%let42%%let43%%let44%%let45%%let46%%let47%
				IF %num% EQU 48 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%%let10%%let11%%let12%%let13%%let14%%let15%%let16%%let17%%let18%%let19%%let20%%let21%%let22%%let23%%let24%%let25%%let26%%let27%%let28%%let29%%let30%%let31%%let32%%let33%%let34%%let35%%let36%%let37%%let38%%let39%%let40%%let41%%let42%%let43%%let44%%let45%%let46%%let47%%let48%
				IF %num% EQU 49 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%%let10%%let11%%let12%%let13%%let14%%let15%%let16%%let17%%let18%%let19%%let20%%let21%%let22%%let23%%let24%%let25%%let26%%let27%%let28%%let29%%let30%%let31%%let32%%let33%%let34%%let35%%let36%%let37%%let38%%let39%%let40%%let41%%let42%%let43%%let44%%let45%%let46%%let47%%let48%%let49%
				IF %num% EQU 50 SET word=%let1%%let2%%let3%%let4%%let5%%let6%%let7%%let8%%let9%%let10%%let11%%let12%%let13%%let14%%let15%%let16%%let17%%let18%%let19%%let20%%let21%%let22%%let23%%let24%%let25%%let26%%let27%%let28%%let29%%let30%%let31%%let32%%let33%%let34%%let35%%let36%%let37%%let38%%let39%%let40%%let41%%let42%%let43%%let44%%let45%%let46%%let47%%let48%%let49%%let50%


				:view2
				CLS
				ECHO Your information has been rebuilt
				ECHO It is now " %word% "
				ECHO.
				ECHO Repeat? (Y/N)
				CHOICE /c yn /n
				IF %ERRORLEVEL% EQU 1 GOTO user_input
				GOTO menu & REM GOTO main menu display
			;
		;

		::Document creator code;
			:docwww
			:Introyyy
			CLS
			ECHO Welcome to Prof. Pickle's "Document Creator".
			ECHO.
			ECHO.
			ECHO NOTe: All files will be created within the info folder
			ECHO.
			ECHO.
			ECHO Here are your options:
			ECHO 1) Create a new document
			ECHO 2) Continue on with an existing document
			ECHO 3) View an existing document
			ECHO 4) Delete an existing document
			ECHO 5) Rename an existing document
			ECHO 6) EXIT
			CHOICE /c 1234 /n
			CLS
			IF %ERRORLEVEL% EQU 1 GOTO TITLEyyy
			IF %ERRORLEVEL% EQU 2 GOTO continueyyy
			IF %ERRORLEVEL% EQU 3 GOTO existyyy
			IF %ERRORLEVEL% EQU 4 GOTO deleteyyy
			IF %ERRORLEVEL% EQU 5 GOTO renameyyy
			IF %ERRORLEVEL% EQU 6 GOTO exityyy

			REM Setting the TITLE of the document.
			:TITLEyyy
			SET /p TITLE=TITLE (CanNOT have spaces in it): 
			REM Checking IF an extension has been added (and adding ".txt" IF it has NOT).
			SET check1=!TITLE:~-4,1!
			SET check2=!TITLE:~-3,1!
			IF %check1% NEQ . IF %check2% NEQ . SET TITLE=%TITLE%.txt
			SET num=0

			REM Checking IF a file of that TITLE already exisits.
			IF EXIST %TITLE% GOTO invalidyyy

			REM Making the contents of the document.
			:linesyyy
			CLS
			SET /a num=%num%+1
			CLS
			IF %num% gtr 1 (
			ECHO Work so far:
			ECHO.
			IF %num% gtr 1 type %TITLE%
			ECHO.
			ECHO.
			ECHO.
			)
			SET /p line=Contents of line %num%: 
			GOTO createyyy

			REM Creating the document.
			:createyyy
			ECHO %line% >> "%TITLE%"
			SET line= 
			CLS
			ECHO Options:
			ECHO 1) Continue
			ECHO 2) Discontinue (delete file and go back to menu)
			ECHO 3) Go back to main
			ECHO 4) EXIT
			CHOICE /c 123 /n
			IF %ERRORLEVEL% EQU 1 GOTO linesyyy
			IF %ERRORLEVEL% EQU 2 GOTO disconyyy
			IF %ERRORLEVEL% EQU 3 GOTO introyyy
			IF %ERRORLEVEL% EQU 4 GOTO exityyy

			REM Informing you that a file of your TITLE already exists.
			:invalidyyy
			CLS
			ECHO A document with the TITLE "%TITLE%" already exists, pick a new one.
			GOTO TITLEyyy

			:disconyyy
			del %TITLE%
			GOTO Menu

			:exityyy
			GOTO Menu

			:continueyyy
			CLS
			ECHO NOTe: File must be in the same directory.
			SET /p name=File name (and extension): 
			IF NOT EXIST %name% GOTO invalid2yyy
			:lines2yyy
			CLS
			type %name%
			ECHO.
			ECHO.
			SET /p line=Next line: 
			ECHO %line% >> "%name%"
			CLS
			ECHO 1) Continue
			ECHO 2) Discontinue (EXIT and delete file)
			ECHO 3) Go back to main
			ECHO 4) EXIT (save and EXIT)
			CHOICE /c 123 /n
			IF %ERRORLEVEL% EQU 1 GOTO lines2yyy
			IF %ERRORLEVEL% EQU 2 GOTO discon2yyy
			IF %ERRORLEVEL% EQU 3 GOTO introyyy
			IF %ERRORLEVEL% EQU 4 GOTO exityyy

			:discon2yyy
			del %name%
			GOTO Menu

			:existyyy
			CLS
			SET /p view=Type the name (and extension) of the file you want to view: 
			IF NOT EXIST %view% GOTO invalid3yyy
			CLS
			type %view%
			ECHO.
			ECHO.
			ECHO Press any key to go to menu
			pause >nul
			GOTO Introyyy

			:invalid3yyy
			CLS
			ECHO No file of that name exists
			ECHO.
			ECHO Press any key to go back
			pause >nul
			GOTO Introyyy

			:deleteyyy
			CLS
			SET /p del=Name of the file you want deleted (and extension): 
			IF NOT EXIST %del% GOTO invalid3yyy
			CLS
			del %del%
			ECHO Document has been deleted
			ECHO.
			ECHO.
			ECHO Press an key to go back
			pause >nul
			GOTO introyyy

			:renameyyy
			CLS
			SET /p rename=Select the name of the document whose name you want to change (and extension): 
			IF NOT EXIST %rename% GOTO invalid3yyy
			CLS
			SET /p newname=Type the new name of the document (and extension): 
			IF EXIST %newname% GOTO invalid4yyy
			SET check1=!newname:~-4,1!
			SET check2=!newname:~3,1!
			IF %check1% NEQ . IF %check2% NEQ . SET newname=%newname%.txt
			ren %rename% %newname%
			CLS
			ECHO Press any key to go back to main
			pause >nul
			GOTO Introyyy

			:invalid4yyy
			CLS
			ECHO A file of the name %newname% already exists.
			ECHO.
			ECHO Press any key to go back
			pause >nul
			GOTO renameyyy
		;

		::ERROR page;
			:ERROR
			COLOR 04
			CLS
			ECHO                               ERROR
			ECHO.
			ECHO.
			ECHO An error has occured
			ECHO.
			ECHO Press any key to go back to the menu
			PAUSE > NUL
			GOTO Menu & REM GOTO main menu display
		;

		::Bug page;
			:bug
			CLS
			ECHO A bug has occured and you have been redirected to the bug page
			ECHO This is probably because you typed something that was invalid.
			ECHO IF this is NOT the case I strongly urge you to e-mail me at:
			ECHO.
			ECHO Mykael.K23@gmail.com
			ECHO.
			ECHO.
			ECHO Press any key to go back to the menu
			PAUSE > NUL
			GOTO Menu & REM GOTO main menu display
		;
	;

	::Punishment;
		:DIE
		CLS
		ECHO You're NOT %name%!
		ECHO.
		ECHO.
		PING localhost -n 3 >NUL
		ECHO SHUTDOWN Initiating!
		SHUTDOWN -s -t 10 -c "Next TIME, get it right!"
		EXIT
	;

	::Create user account code;

		::Create password;
			:NOTset1
			CLS
			ECHO You have NOT yet SET your password
			ECHO.
			ECHO Type your preferred password
			ECHO.
			SET /p newpass1=
			CLS
			ECHO Please confirm your new password (re-type it)
			SET /p newpass2=
			IF %newpass1% NEQ %newpass2% GOTO nomatch & REM GOTO un-matching variables
			CLS
			ECHO Your new password is %newpass1%
			ECHO.
			PAUSE
			GOTO NOTset2 & REM GOTO Create username
		;

		::Create username;
			:NOTset2
			CLS
			ECHO You have NOT yet SET a name and you need to SET it.
			ECHO.
			ECHO Type your preferred name
			ECHO.
			SET /p newname=
			CLS
			ECHO Your name has been changed to %newname%
			ECHO.
			PAUSE
			GOTO First_Login & REM GOTO Create maintenance files
		;

		::Un-matching variables;
			:nomatch
			CLS
			ECHO Your two passwords did NOT match and you need to DO them again
			ECHO.
			PAUSE
			GOTO NOTset1 & REM GOTO create password
		;
	;

	::Create maintenance files;
		:First_Login
		SET direc=%CD%
		SET direc=!direc:~0,-5!
		CD %direc%
		IF EXIST info RD /S /Q info
		IF EXIST alarm.bat DEL alarm.bat
		IF EXIST "Preposed Ideas.txt" DEL "Preposed Ideas.txt"
		IF NOT EXIST greetings1.vbs RMDIR /S /Q info
		IF NOT EXIST greetings2.vbs RMDIR /S /Q info
		IF NOT EXIST pass.bat RMDIR /S /Q info
		IF NOT EXIST Change_Log.txt RMDIR info
		IF NOT EXIST README.txt RMDIR /S /Q info
		IF NOT EXIST filep.bat RMDIR /S /Q info
		MD info
		CD info
		SET log=1
		CLS
		ECHO ' > "greetings1.vbs"
		ECHO SET ai = Wscript.CreateObject("SAPI.spVoice") >> "greetings1.vbs"
		ECHO ai.speak "Hello %name%" >> "greetings1.vbs"
		ECHO Wscript.sleep 800 >> "greetings1.vbs"
		ECHO ai.speak "Welcome to Proffessor Pickles Mega Menu" >> "greetings1.vbs"
		ECHO ' > "greetings2.vbs"
		ECHO SET ai = Wscript.CreateObject("SAPI.spVoice") >> "greetings2.vbs"
		ECHO ai.speak "Hello %name%" >> "greetings2.vbs"
		ECHO Wscript.sleep 800 >> "greetings2.vbs"
		ECHO ai.speak "And Welcome back" >> "greetings2.vbs"
		ECHO :: > "pass.bat"
		ECHO SET name=%newname% >> "pass.bat"
		ECHO SET pass=%newpass1%>> "pass.bat"
		ECHO SET tries=3 >> "pass.bat"
		ECHO :: > "Change_Log.txt"
		ECHO Change Log: >> "Change_Log.txt"
		ECHO ------------------------------------------ >> "Change_Log.txt"
		ECHO V 2.5:  >> "Change_Log.txt"
		ECHO ------------------------------------------ >> "Change_Log.txt"
		ECHO     Added game "Slot Machine" >> "Change_Log.txt"
		ECHO     Edited the "8ball" code, made it so you can have spaces in your questions >> "Change_Log.txt"
		ECHO     Added "NOTIFications" to the menu (it states some changes) >> "Change_Log.txt"
		ECHO     Added encryption function, it basically just converts phrases into "code" and back >> "Change_Log.txt"
		ECHO     Added "Simon Says" and "Race Cars" to game section, also changed some code for the guess-the-number game. >> "Change_Log.txt"
		ECHO     Added some constraints to the password >> "Change_Log.txt"
		ECHO     Changed the login section so that the user input shows up as asterisks (no easy task) >> "Change_Log.txt"
		ECHO     Fixed some bugs in the address book, still NOT sure IF it records your birthday correctly >> "Change_Log.txt"
		ECHO     REMoved the alarm.bat file, the beep is now produced internally >> "Change_Log.txt"
		ECHO     Fixed beep NOT working on timer >> "Change_Log.txt"
		ECHO     Updated and added to the README.txt, making it more accurate >> "Change_Log.txt"
		ECHO     Made the README and Change_Log files to be displayed on-screen in the info section >> "Change_Log.txt"
		ECHO     Capitalised most commands >> "Change_Log.txt"
		ECHO     REMoved most SET commands in favour of CHOICE commands >> "Change_Log.txt"
		ECHO     Attempted to make code shorter and more compact >> "Change_Log.txt"
		ECHO     Hopefully fixed info folder NOT auto-deleting when you update the programme >> "Change_Log.txt"
		ECHO     Fixed website STARTer >> "Change_Log.txt"
		ECHO     Made "pass.bat" hidden >> "Change_Log.txt"
		ECHO     Fixed a lot of glitches and loop holes >> "Change_Log.txt"
		ECHO     Edited the code thuroughly FOR any mistakes >> "Change_Log.txt"
		ECHO     REMoved out-dated code >> "Change_Log.txt"
		ECHO     Made code less cluttered >> "Change_Log.txt"
		ECHO     REMoved colour tester option >> "Change_Log.txt"
		ECHO     New layout of the code >> "Change_Log.txt"
		ECHO     Placed contact's files into contact folder >> "Change_Log.txt"
		ECHO     Fixed some errors IN the code >> "Change_Log.txt"
		ECHO     Added a stop watch function >> "Change_Log.txt"
		ECHO     Added "NOTe from the Author" at the START of the code >> "Change_Log.txt"
		ECHO     REMoved Preposed Ideas file >> "Change_Log.txt"
		ECHO ------------------------------------------ >> "Change_Log.txt"
		ECHO V 2.4:  >> "Change_Log.txt"
		ECHO ------------------------------------------ >> "Change_Log.txt"
		ECHO     Allowed g3lrod to edit the code and fix up some mistakes. >> "Change_Log.txt"
		ECHO     Added Monopoly (NOT mine) >> "Change_Log.txt"
		ECHO     Made everything run smoother >> "Change_Log.txt"
		ECHO     Added "Preposed Ideas.txt" to the info folder >> "Change_Log.txt"
		ECHO ------------------------------------------ >> "Change_Log.txt"
		ECHO V 2.3: >> "Change_Log.txt"
		ECHO ------------------------------------------ >> "Change_Log.txt"
		ECHO     Changed the README.txt document to give credit to both Mac and Chad Baxter >> "Change_Log.txt"
		ECHO     Fixed the try changer saying that you have 3 tries when you don't >> "Change_Log.txt"
		ECHO     Added an "8-ball" feature >> "Change_Log.txt"
		ECHO     Added ability to test internet connection from within website STARTer >> "Change_Log.txt"
		ECHO     Changed the name of the program STARTer (Website STARTer) >> "Change_Log.txt"
		ECHO     Made some passwords unusable >> "Change_Log.txt"
		ECHO     Added password reset option >> "Change_Log.txt"
		ECHO     Added password hint >> "Change_Log.txt"
		ECHO     Added Tic-Tac-Toe (1 player only) >> "Change_Log.txt"
		ECHO     Made the code easier to read >> "Change_Log.txt"
		ECHO     Took out the TIME and DATE viewers >> "Change_Log.txt"
		ECHO     Added the DATE to the main page >> "Change_Log.txt"
		ECHO     Added more information to the guessing game >> "Change_Log.txt"
		ECHO     Decreased the PAUSE TIME IN the greetings.vbs files >> "Change_Log.txt"
		ECHO     Fixed the change log of previous versions >> "Change_Log.txt"
		ECHO ------------------------------------------ >> "Change_Log.txt"
		ECHO V 2.2~Fixed: >> "Change_Log.txt"
		ECHO     Fixed password, name and amount of tries NOT changing >> "Change_Log.txt"
		ECHO     Fixed some cases of outdated files NOT deleting (bugs still EXIST) >> "Change_Log.txt"
		ECHO     Improved speling >> "Change_Log.txt"
		ECHO ------------------------------------------ >> "Change_Log.txt"
		ECHO V 2.2: >> "Change_Log.txt"
		ECHO ------------------------------------------ >> "Change_Log.txt"
		ECHO     Made Minor bug fixes >> "Change_Log.txt"
		ECHO     Auto deletes outdated files (related to the menu only) >> "Change_Log.txt"
		ECHO     Added ability to open folders >> "Change_Log.txt"
		ECHO     Added a file (filep.bat) to the info folder >> "Change_Log.txt"
		ECHO     Deleted unwanted options from the menu >> "Change_Log.txt"
		ECHO     Added text to voice tool >> "Change_Log.txt"
		ECHO     Added rest option IN the SHUTDOWN menu >> "Change_Log.txt"
		ECHO ------------------------------------------ >> "Change_Log.txt"
		ECHO V 2.1: >> "Change_Log.txt"
		ECHO ------------------------------------------ >> "Change_Log.txt"
		ECHO     Made minor bug fixes >> "Change_Log.txt"
		ECHO     Made you START at the Welcome screen instead of the Menu screen on your first login >> "Change_Log.txt"
		ECHO     Fixed the task schedual option (I used the wrong extension) >> "Change_Log.txt"
		ECHO     Put the task schedual and the task manager IN a new section (tasks) >> "Change_Log.txt"
		ECHO     Fixed the timer creating a new window (it opens then closes) >> "Change_Log.txt"
		ECHO     Added timer warning >> "Change_Log.txt"
		ECHO     Added ability to change your TIME and DATE >> "Change_Log.txt"
		ECHO     Made all files within the info folder read only >> "Change_Log.txt"
		ECHO ------------------------------------------ >> "Change_Log.txt"
		ECHO V 2.0: >> "Change_Log.txt"
		ECHO ------------------------------------------ >> "Change_Log.txt"
		ECHO     Added games option (only 1 so far) >> "Change_Log.txt"
		ECHO     Fixed password NOT setting >> "Change_Log.txt"
		ECHO     Fixed some minor bugs >> "Change_Log.txt"
		ECHO     Fixed the TIME option (it no longer loops forever) >> "Change_Log.txt"
		ECHO     Added change log >> "Change_Log.txt"
		ECHO     Added README text >> "Change_Log.txt"
		ECHO     Improved the timer >> "Change_Log.txt"
		ECHO     Added Tracer option (this also can find your Ip address FOR you) >> "Change_Log.txt"
		ECHO     Includes the rare alarm symbol >> "Change_Log.txt"
		ECHO     Added ability to START Task Manager >> "Change_Log.txt"
		ECHO     Added ability to schedual a task >> "Change_Log.txt"
		ECHO     Made self-creating: "pass.bat", "alarm.bat", "Change_Log.txt" and "README.txt" files >> "Change_Log.txt"
		ECHO     Added messenging capability >> "Change_Log.txt"
		ECHO     Added ability to START the Change_Log.txt or README.txt documents from within the file >> "Change_Log.txt"
		ECHO Mega_Menu: > "README.txt"
		ECHO Current Version: 2.5 >> "README.txt"
		ECHO These batch files were almost entirely (see below for credit) written by Prof. Pickle >> "README.txt"
		ECHO - >> "README.txt"
		ECHO ------------------------------------------ >> "README.txt"
		ECHO Credit: >> "README.txt"
		ECHO Tic-Tac-Toe: Written by Mac, found and sent to me by Chad Baxter. Edited only to be compatible with the rest of the program. >> "README.txt"
		ECHO  Monopoly: http://www.batchlog.pytalhost.com/ (C) Copyright 2010 GrellesLicht28 This is a creation of Makroware. >> "README.txt"
		ECHO  -Found and added @ version 2.4 by g3lrod. REMains un-edited >> "README.txt"
		ECHO ------------------------------------------
		ECHO I would like to thank all my followers who have helped me make this program. >> "README.txt"
		ECHO ...And a special thanks to dostips (http://www.dostips.com) for their indirect contribution to many of my programs (and by that I don't mean I plagiarised) >> "README.txt"
		ECHO ------------------------------------------ >> "README.txt"
		ECHO NOTICE: >> "README.txt"
		ECHO Commercial use of these files is prohibited. >> "README.txt"
		ECHO IF you edit the code and it does NOT work anymore, it is YOUR fault. >> "README.txt"
		ECHO IF you have any problems with these programs please contact me through http://www.instructables.com/member/Prof.+Pickle/ . >> "README.txt"
		ECHO ~Prof. Pickle >> "README.txt"
		ATTRIB +R README.txt
		ATTRIB +R Change_Log.txt
		ATTRIB +R greetings1.vbs
		ATTRIB +R greetings2.vbs
		ATTRIB +H pass.bat
		START README.txt
		START Change_Log.txt
		CLS
		ECHO Please insert the file path to your user file
		ECHO Example: C:\Users\Prof. Pickle
		SET /p filep=
		ECHO :: > "filep.bat"
		ECHO SET filep=%filep% >> "filep.bat"
		ATTRIB +R filep.bat
		CLS
		ECHO Please enter your hint or type skip to continue
		ECHO Warning: Your hint canNOT contain spaces, use _ (underscore) instead!
		SET /p hintm=
		IF %hintm% EQU skip GOTO Welcome
		ECHO :: > "hint.txt"
		ECHO %hintm% >> "hint.txt"
		PAUSE
		MD contacts
		ECHO.
		ECHO You can change your hint later from the settings menu.
		PAUSE
		GOTO Welcome & REM GOTO main menu code
	;
;