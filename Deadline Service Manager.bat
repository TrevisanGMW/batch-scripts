:mainmenu
@echo off
@title =  Deadline Service Manager (c) Guilherme Trevisan 2016.V3.7
color 0C
@echo on
@echo.
@echo.
@echo. Deadline Service Manager
@echo.
@echo.
@echo. 1 = Open Deadline Database Services
@echo. 2 = Stop Deadline Database Services
@echo. 3 = Show Services Status
@echo.
@echo.
@echo off

SET /P M=Type 1.2 or 3 then press ENTER:
IF %M%==1 GOTO RESURRECT
IF %M%==2 GOTO ASSASSINATE
IF %M%==3 GOTO servicestatus

:ASSASSINATE
@echo on
@echo.
@echo.
@echo        ллллл                                                                  
@echo       л     л ллллл  лллл  ллллл  ллллл  л л    л  лллл                       
@echo       л         л   л    л л    л л    л л лл   л л    л                      
@echo        ллллл    л   л    л л    л л    л л л л  л л                           
@echo             л   л   л    л ллллл  ллллл  л л  л л л  ллл                     
@echo       л     л   л   л    л л      л      л л   лл л    л     лл     лл     лл 
@echo        ллллл    л    лллл  л      л      л л    л  лллл      лл     лл     лл 
@echo.
@echo.
@echo.
@echo                                              Stopping Deadline services...
net stop Deadline8DatabaseService > NUL 2>&1
taskkill /F /IM deadlineslave.exe > NUL 2>&1
taskkill /F /IM deadlinelauncher.exe > NUL 2>&1
taskkill /F /IM deadlinemonitor.exe > NUL 2>&1



@echo off
sc query "Deadline8DatabaseService" | findstr /i "RUNNING"
if not errorlevel 1 (
    echo         Deadline8DatabaseService is still running
    echo         Restarting killing process . . .
 timeout /T 4 /nobreak
    GOTO ASSASSINATE
) else (
    echo Deadline8DatabaseService has stopped
)


timeout /T 2 /nobreak
@echo off
color 0A
@echo on
@echo.                                      
@echo    лллллллл   ллллллл  лл    лл лллллллл 
@echo    лл     лл лл     лл ллл   лл лл       
@echo    лл     лл лл     лл лллл  лл лл       
@echo    лл     лл лл     лл лл лл лл лллллл   
@echo    лл     лл лл     лл лл  лллл лл       
@echo    лл     лл лл     лл лл   ллл лл       
@echo    лллллллл   ллллллл  лл    лл лллллллл 
@echo.                                       
GOTO EXITNOW

:RESURRECT
@echo on
@echo.
@echo.
@echo        ллллл                                                                 
@echo       л     л ллллл   лл   ллллл  ллллл л л    л  лллл                       
@echo       л         л    л  л  л    л   л   л лл   л л    л                      
@echo        ллллл    л   л    л л    л   л   л л л  л л                           
@echo             л   л   лллллл ллллл    л   л л  л л л  ллл                      
@echo       л     л   л   л    л л   л    л   л л   лл л    л     лл     лл     лл 
@echo        ллллл    л   л    л л    л   л   л л    л  лллл      лл     лл     лл 
@echo.
@echo.
@echo.
@echo                                              Starting Deadline services...
net start Deadline8DatabaseService > NUL 2>&1




timeout /T 2 /nobreak
@echo off
color 0A
@echo on
@echo.                                      
@echo    лллллллл   ллллллл  лл    лл лллллллл 
@echo    лл     лл лл     лл ллл   лл лл       
@echo    лл     лл лл     лл лллл  лл лл       
@echo    лл     лл лл     лл лл лл лл лллллл   
@echo    лл     лл лл     лл лл  лллл лл       
@echo    лл     лл лл     лл лл   ллл лл       
@echo    лллллллл   ллллллл  лл    лл лллллллл 
@echo.                                         
GOTO EXITNOW

:servicestatus
@echo off
cls
sc query "Deadline8DatabaseService"  | findstr /i "RUNNING"
if not errorlevel 1 (
color 0A
    echo.
    echo         Deadline8DatabaseService is running
) else (
    echo.
    echo Deadline8DatabaseService is NOT running
)


@echo off
@echo on
@echo.
@echo. 1 = Open Deadline Services
@echo. 2 = Stop Deadline Services
@echo. 3 = Show Services Status
@echo.
@echo off

SET /P M=Type 1.2 or 3 then press ENTER:
IF %M%==1 GOTO RESURRECT
IF %M%==2 GOTO ASSASSINATE
IF %M%==3 GOTO servicestatus


:EXITNOW
timeout /T 1 /nobreak