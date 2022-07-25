@echo off
REM Script to quickly and automatically Push and Pull to/from Github
REM 1.1 - 2021/08/16
REM Changed the date and compName string format: YYYY/MM/DD - TIME (COMPNAME)
REM Updated file name to gitAutoPush

:GET CURR DIR
for %%I in (.) do set currDirName=%%~nxI

@title =  %currDirName% - gitAutoPush v1.0.2
git status

:GETTIME
FOR /F "TOKENS=1 eol=/ DELIMS=/ " %%A IN ('TIME/T') DO SET time=%%A

:GETCOMPNAME
FOR /F "usebackq" %%i IN (`hostname`) DO SET compName=%%i

set message=Updated %date% - %time% (%compName%)

:GET AUTO PUSH ARGUMENT - For auto push, provided "1", "true" or "True" as argument
set IS_AUTOMATIC="%1"
if %IS_AUTOMATIC%=="1" goto NOFEEDBACK
if %IS_AUTOMATIC%=="true" goto NOFEEDBACK
if %IS_AUTOMATIC%=="True" goto NOFEEDBACK

:MENU
@echo. 
REM @echo. ________________________________________________________________
@echo. ----------------------------------------------------------------
@echo. 
@echo. Message : %message%
@echo. 
@echo. 1 = GIT PUSH
@echo. 2 = GIT PULL
@echo. 3 = EXIT
@echo. 
@echo. 
@echo off

SET /P M=Type 1,2, or 3 then press ENTER:
IF %M%==1 GOTO PUSH
IF %M%==2 GOTO PULL
IF %M%==3 GOTO EOF

:PUSH
cls
git add -A
git status

git commit -m "%message%"
git push
GOTO MENU

:PULL
cls
git pull
GOTO MENU

:NOFEEDBACK
git add -A
git commit -m "%message%"
git push

:EOF
exit