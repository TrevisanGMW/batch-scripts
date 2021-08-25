@echo off
REM Script to switch the hypervisorlaunchtype between off or auto

:MENU
@echo. 
REM @echo. ________________________________________________________________
@echo. ----------------------------------------------------------------
@echo. 
@echo. This script will switch the hypervisorlaunchtype between "off" and "auto".
@echo. This makes it easy to swtich between windows sandbox and vmware.
@echo. This script requires admin rights and a restart after switching.
@echo. 
@echo. 1 = Switch to "AUTO"
@echo. 2 = Switch to "OFF"
@echo. 3 = EXIT
@echo. 
@echo. 
@echo off

SET /P M=Type 1,2,3,4 or 5 then press ENTER:
IF %M%==1 GOTO AUTO
IF %M%==2 GOTO OFF
IF %M%==3 GOTO EOF

:AUTO
cls
bcdedit /set hypervisorlaunchtype auto
pause
GOTO EOF

:OFF
cls
bcdedit /set hypervisorlaunchtype off
pause
GOTO EOF

:EOF
exit