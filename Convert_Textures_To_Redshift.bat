@echo off
REM Script to convert Textures for Redshift
:variablesInitializer
set DefaultFormat=.png
setx rstex C:\ProgramData\Redshift\bin\redshiftTextureProcessor.exe
for %%* in (.) do set CurrDirName=%%~nx*
cls

:loadingmessage
@echo off
set /a randomNumber=%random% %% 132
if %randomNumber% == 0 set loadingMessage=Locating the required gigapixels to render...
if %randomNumber% == 1 set loadingMessage=Spinning up the hamster...
if %randomNumber% == 2 set loadingMessage=Shovelling coal into the server...
if %randomNumber% == 3 set loadingMessage=Programming the flux capacitor...
if %randomNumber% == 4 set loadingMessage=Please wait, the bits are breeding...
if %randomNumber% == 5 set loadingMessage=Would you prefer chicken, steak, or tofu?
if %randomNumber% == 6 set loadingMessage=Pay no attention to the man behind the curtain!
if %randomNumber% == 7 set loadingMessage=Please wait, while the little elves draw your video
if %randomNumber% == 8 set loadingMessage=A few bits tried to escape, but we caught them!
if %randomNumber% == 9 set loadingMessage=Please wait, and dream of faster computers
if %randomNumber% == 10 set loadingMessage=Would you like fries with that?
if %randomNumber% == 12 set loadingMessage=Go ahead -- hold your breath
if %randomNumber% == 13 set loadingMessage=At least you're not on hold
if %randomNumber% == 14 set loadingMessage=Hum something loud while others stare
if %randomNumber% == 15 set loadingMessage=The server is powered by a lemon and two electrodes!
if %randomNumber% == 16 set loadingMessage=Gloo Studios Rules :)
if %randomNumber% == 17 set loadingMessage=Checking the gravitational constant in your locale...
if %randomNumber% == 18 set loadingMessage=Please wait, we're testing your patience
if %randomNumber% == 19 set loadingMessage=Please wait, as if you had any other choice...
if %randomNumber% == 20 set loadingMessage=Take a moment to sign up for our lovely prizes!!
if %randomNumber% == 21 set loadingMessage=Don't think of purple hippos
if %randomNumber% == 22 set loadingMessage=Follow the white rabbit
if %randomNumber% == 23 set loadingMessage=Please wait, while the satellite moves into position...
if %randomNumber% == 24 set loadingMessage=The bits are flowing slowly today...
if %randomNumber% == 25 set loadingMessage=Dig on the 'X' for buried treasure... ARRR!
if %randomNumber% == 26 set loadingMessage=It's still faster than you could draw it!
if %randomNumber% == 27 set loadingMessage=Happy Elf and Sad Elf are talking about your data. Please wait.
if %randomNumber% == 28 set loadingMessage=All the relevant elves are on break. Please wait.
if %randomNumber% == 29 set loadingMessage=Reticulating Splines
if %randomNumber% == 30 set loadingMessage=Are we there yet?
if %randomNumber% == 31 set loadingMessage=1,000,000 bottles of beer on the wall...
if %randomNumber% == 32 set loadingMessage=Insert quarter
if %randomNumber% == 33 set loadingMessage=Hang on a sec, I know your data is here somewhere
if %randomNumber% == 34 set loadingMessage=Well, what are you waiting for?
if %randomNumber% == 35 set loadingMessage=Have you lost weight?
if %randomNumber% == 36 set loadingMessage=Congratulations!
if %randomNumber% == 37 set loadingMessage=I hope this shot doesn't have many notes!
if %randomNumber% == 38 set loadingMessage=Measuring the cable length to fetch your data...
if %randomNumber% == 39 set loadingMessage=HELP!, I'm being held hostage, and forced to write the stupid lines!
if %randomNumber% == 40 set loadingMessage=Searching for Answer to Life, the Universe, and Everything
if %randomNumber% == 41 set loadingMessage=Warming up the processors...
if %randomNumber% == 42 set loadingMessage=Reconfiguring the office coffee machine...
if %randomNumber% == 43 set loadingMessage=RE-calibrating the internet...
if %randomNumber% == 44 set loadingMessage=Your underwear has conflicted our network. Please change daily.
if %randomNumber% == 45 set loadingMessage=Please don't move...
if %randomNumber% == 46 set loadingMessage=Please count to 10...
if %randomNumber% == 47 set loadingMessage=Are your shoelaces tied?
if %randomNumber% == 48 set loadingMessage=Er, there is something on your teeth.
if %randomNumber% == 49 set loadingMessage=Are you ready?
if %randomNumber% == 50 set loadingMessage=Prepare for awesomeness!
if %randomNumber% == 51 set loadingMessage=It's not you. It's me.
if %randomNumber% == 52 set loadingMessage=Ouch! Careful where you point that thing!
if %randomNumber% == 53 set loadingMessage=I'm back baby!
if %randomNumber% == 54 set loadingMessage=QUIET !!! I'm trying to think here!
if %randomNumber% == 55 set loadingMessage=We apologise for the fault in the subtitles. Those responsible have been sacked
if %randomNumber% == 56 set loadingMessage=Counting backwards from infinity
if %randomNumber% == 57 set loadingMessage=Loading completed. Press F13 to continue.
if %randomNumber% == 58 set loadingMessage=Actually Loading... Please wait.
if %randomNumber% == 59 set loadingMessage=Stop. Hammertime.
if %randomNumber% == 60 set loadingMessage=THE CAKE IS A LIE!
if %randomNumber% == 61 set loadingMessage=Searching for WiFi...
if %randomNumber% == 62 set loadingMessage=Scanning your hard drive for credit card details. Please be patient...
if %randomNumber% == 63 set loadingMessage=Who is General Failure and why is he reading my hard disk?
if %randomNumber% == 64 set loadingMessage=Don't panic...
if %randomNumber% == 65 set loadingMessage=Deterministically simulating the future...
if %randomNumber% == 66 set loadingMessage=So, do you come here often?
if %randomNumber% == 67 set loadingMessage=Water detected on drive C:\, please wait. Spin dry commencing..
if %randomNumber% == 68 set loadingMessage=Adjusting data for your IQ...
if %randomNumber% == 69 set loadingMessage=Generating next funny line...
if %randomNumber% == 70 set loadingMessage=Entertaining you while you wait...
if %randomNumber% == 71 set loadingMessage=Dividing eternity by zero, please be patient...
if %randomNumber% == 72 set loadingMessage=Adding random changes to your data...
if %randomNumber% == 73 set loadingMessage=Just stalling to simulate activity...
if %randomNumber% == 74 set loadingMessage=Waiting for approval from Bill Gates...
if %randomNumber% == 75 set loadingMessage=Remember, beer and email don't mix.
if %randomNumber% == 76 set loadingMessage=Warning: Do not set yourself on fire.
if %randomNumber% == 78 set loadingMessage=Loading new loading screen.
if %randomNumber% == 79 set loadingMessage=Caching internet locally...	
if %randomNumber% == 80 set loadingMessage=Creating Time-Loop Inversion Field	
if %randomNumber% == 81 set loadingMessage=Recalculating PI....
if %randomNumber% == 82 set loadingMessage=Commencing Infinite Loop (this may take some time)
if %randomNumber% == 83 set loadingMessage=Spinning the wheel of fortune....
if %randomNumber% == 84 set loadingMessage=Increasing speed to 88.8mph...
if %randomNumber% == 85 set loadingMessage=Starting [sub]pixel analysis...
if %randomNumber% == 86 set loadingMessage=I'm not anti-social; I'm just not user friendly
if %randomNumber% == 87 set loadingMessage=Loading loading messages...
if %randomNumber% == 88 set loadingMessage=Do mice have colour-vision?
if %randomNumber% == 10 set loadingMessage=Like car accidents, most hardware problems are due to driver error.
if %randomNumber% == 89 set loadingMessage=Please be patient. The program should finish loading in six to eight weeks.
if %randomNumber% == 90 set loadingMessage=Let me tell you a joke, two CPUs walk into a bar...
if %randomNumber% == 91 set loadingMessage=Greetings Earthling!
if %randomNumber% == 92 set loadingMessage=I know this is painful to watch, but I have to load this.
if %randomNumber% == 93 set loadingMessage=Oh, no! Loading time...
if %randomNumber% == 94 set loadingMessage=Hello!!! Why did you click that button?!
if %randomNumber% == 95 set loadingMessage=Computing chance of success..
if %randomNumber% == 96 set loadingMessage=Busing through the motherboard, will arrive soon...
if %randomNumber% == 97 set loadingMessage=I think, therefore I am...loading!	
if %randomNumber% == 98 set loadingMessage=Centralizing the processing units...
if %randomNumber% == 99 set loadingMessage=I'm sorry Dave, I can't do that
if %randomNumber% == 100 set loadingMessage=Very funny Scotty. Now beam down my clothes.
if %randomNumber% == 101 set loadingMessage=Rolling for initiative...
if %randomNumber% == 102 set loadingMessage=Searching for the Amulet of Yendor...
if %randomNumber% == 103 set loadingMessage=Waiting for magic to happen...
if %randomNumber% == 104 set loadingMessage=Paper or plastic?
if %randomNumber% == 105 set loadingMessage=Calculating the odds...
if %randomNumber% == 106 set loadingMessage=1f u c4n r34d th1s u r34lly n33d t0 g37 l41d
if %randomNumber% == 107 set loadingMessage=Salting Sea Water...
if %randomNumber% == 108 set loadingMessage=Hiding Treasures...
if %randomNumber% == 109 set loadingMessage=The loading screen is a lie!
if %randomNumber% == 111 set loadingMessage=Time is relative..
if %randomNumber% == 112 set loadingMessage=Resistance is futile. Prepare to be assimilated!
if %randomNumber% == 113 set loadingMessage=Please Wait Some More...
if %randomNumber% == 114 set loadingMessage=You still there?...
if %randomNumber% == 115 set loadingMessage=Stretching an owl...
if %randomNumber% == 116 set loadingMessage=Waking up your lazy processor...
if %randomNumber% == 117 set loadingMessage=Baking cake...
if %randomNumber% == 118 set loadingMessage=Hey, why did you click this button? You woke me up!!!
if %randomNumber% == 119 set loadingMessage=Let me think about this...
if %randomNumber% == 120 set loadingMessage=Please try to click a little softer, that mouse pointer is pointed!
if %randomNumber% == 121 set loadingMessage=Gotcha, boss! Going right at it!
if %randomNumber% == 122 set loadingMessage=Will do. In the meantime, can you prepare me a cup of tea?
if %randomNumber% == 123 set loadingMessage=Taking the red pill...
if %randomNumber% == 124 set loadingMessage=Press and hold your power button to improve your productivity
if %randomNumber% == 125 set loadingMessage=Dyslexics of the world untie!
if %randomNumber% == 126 set loadingMessage=Sorry, but our princess is in another castle!
if %randomNumber% == 127 set loadingMessage=Only about half of its content is true.
if %randomNumber% == 128 set loadingMessage=We think so.
if %randomNumber% == 129 set loadingMessage=Hitting your keyboard won't make this faster...
if %randomNumber% == 130 set loadingMessage=Releasing hamsters...
if %randomNumber% == 131 set loadingMessage=Setting us up the bomb. What you say?

@echo off
@title =  Redshift Texture Converter (c) Guilherme Trevisan 2019.V1.1  -  TrevisanGMW@gmail.com
color 02
@echo on
@echo.
@echo.                _
@echo.               ( )                 Redshift Batch Texture Converter V1.1
@echo.                H                  Default input format set to: %DefaultFormat%
@echo.                H                  Current Folder : %CurrDirName%
@echo.               _H_                 
@echo.            .-'-.-'-.
@echo.           /         \             IMPORTANT: This script does NOT work with network paths.
@echo.          !           !            if you want to use it in a network,
@echo.          !   .-------'._          map it as a drive first. (or copy everything to your PC)
@echo.          !  / /  '.' '. \
@echo.          !  \ \ @   @ / / 
@echo.          !   '---------'        
@echo.          !    _______!            %loadingMessage%  
@echo.          !  .'-+-+-+!  
@echo.          !  '.-+-+-+!         
@echo.          !    """""" !            Waiting for user input...
@echo.          '-._______.-'            
@echo.
@echo.
@echo.
@echo. 1 = Convert textures at script's location
@echo. 2 = Convert textures at a Custom Path
@echo. 3 = Change Input Format
@echo. 4 = Help
@echo. 5 = Exit File
@echo. 
@echo. 
@echo off

SET /P M=Type 1,2,3,4 or 5 then press ENTER:
IF %M%==1 GOTO LOCATION
IF %M%==2 GOTO CUSTOM
IF %M%==3 GOTO CHANGEFORMAT
IF %M%==4 GOTO HELP
IF %M%==5 GOTO EOF

:LOCATION
cls
@echo off
for %%* in (.) do set CurrDirName=%%~nx*
for %%f in ("**%DefaultFormat%") do %rstex% %%f

@echo on
@echo.
@echo.
@echo.	  	   Your texture have
@echo.        \!/		been converted.
@echo.        -o------.
@echo.        /!\     !\
@echo.         !      '-!
@echo.         !        !
@echo.         !        !
@echo.         !        !
@echo.         !        !
@echo.         !     rs !
@echo.         '--------'
@echo.
@echo.	
@echo off
timeout /T 3 /nobreak
goto EOF


:CUSTOM
cls
@echo on
@echo.
@echo.   Write your custom path:
@echo.
@echo off
set /p input=""
cls
cd %input%
for %%* in (.) do set CurrDirName=%%~nx*
for %%f in ("**%DefaultFormat%") do %rstex% %%f

@echo on
@echo.
@echo.
@echo.	  	   Files for %input% have
@echo.        \!/		been converted
@echo.        -o------.               
@echo.        /!\     !\                
@echo.         !      '-!
@echo.         !        !
@echo.         !        !
@echo.         !        !
@echo.         !        !
@echo.         !     rs !
@echo.         '--------'
@echo.
@echo.	
@echo off
timeout /T 3 /nobreak
goto EOF

:HELP
cls
@echo on
@echo.        This script assumes that you installed Redshift using its default location
@echo.        in case it is not working, please update the variables at the top of the script.
@echo.
@echo.        IMPORTANT: This script does NOT work with (UNC) network paths.
@echo.        if you want to use it in a network, map it as a drive first.
@echo.        (or simply copy everything to a local folder before converting it)
@echo.
@echo.        1. Convert textures at script's location
@echo.        Using this function will convert textures located
@echo.        in the same folder where your "ConvertTexturesToRedshift.bat" script is.
@echo.        If you have your script on your desktop, it would convert all textures in 
@echo.        the folder "C:\Users\USERNAME\Desktop"
@echo.        The input folder is the same as your output folder.
@echo.
@echo.        2. Convert textures at a Custom Path
@echo.        When using this function, this script will ask you to write a custom path.
@echo.        This custom path will be used as the location for input and output textures.
@echo.        Example of a custom path: "C:\myTextures"
@echo.        This would make the script look for textures in the folder "myTextures" 
@echo.        The rstexbin output can be found in the same folder after convertion.
@echo. 
@echo.        3. Change Input Format
@echo.        Use this to change the format of the textures you want to convert.
@echo.        If you have multiple files with different extensions, you can convert only
@echo.        some of them by defining one specific extension. e.g. ".png"
@echo.        To convert all files in the folder, juse enter ".*"
@echo. 
@echo.        Questions? Problems? send an email to "gtrevisan@vfs.com"
@echo.        Happy renders!
@echo off
pause
cls
goto WHATNOW

:CHANGEFORMAT
cls
@echo off
@echo.
@echo.   Write your new format:
@echo    e.g. ".tga"
@echo    use ".*" for all files
@echo.
set /p DefaultFormat=""
cls
goto WHATNOW

:WHATNOW
@echo off
color 02
@echo on
@echo.
@echo.                _
@echo.               ( )
@echo.                H                  Redshift Batch Texture Converter V1.1
@echo.                H                  Input Format Changed to: %DefaultFormat%
@echo.               _H_ 
@echo.            .-'-.-'-.
@echo.           /         \             IMPORTANT: This script does NOT work with network paths.
@echo.          !           !            if you want to use it in a network,
@echo.          !   .-------'._          map it as a drive first. 
@echo.          !  / /  '.' '. \
@echo.          !  \ \ @   @ / / 
@echo.          !   '---------'        
@echo.          !    _______!            %loadingMessage%  
@echo.          !  .'-+-+-+!  
@echo.          !  '.-+-+-+!         
@echo.          !    """""" !            Waiting for user input...
@echo.          '-._______.-'            
@echo.
@echo.
@echo.
@echo. 1 = Convert textures at script's location
@echo. 2 = Convert textures at a Custom Path
@echo. 3 = Change Input Format
@echo. 4 = Help
@echo. 5 = Exit File
@echo. 
@echo. 
@echo off

SET /P M=Type 1,2,3, or 4 then press ENTER:
IF %M%==1 GOTO LOCATION
IF %M%==2 GOTO CUSTOM
IF %M%==3 GOTO CHANGEFORMAT
IF %M%==4 GOTO HELP
IF %M%==5 GOTO EOF


:EOF
exit
