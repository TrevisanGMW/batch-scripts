:mainmenu
@echo off
@title =  VMwawre Killer (c) Guilherme Trevisan 2016.V3.7
color 0C
@echo on
@echo.
@echo.
@echo     лл     лл лл     лл лл    лл лллл лл       лл       лллллллл лллллллл  
@echo     лл     лл ллл   ллл лл   лл   лл  лл       лл       лл       лл     лл 
@echo     лл     лл лллл лллл лл  лл    лл  лл       лл       лл       лл     лл 
@echo     лл     лл лл ллл лл ллллл     лл  лл       лл       лллллл   лллллллл  
@echo      лл   лл  лл     лл лл  лл    лл  лл       лл       лл       лл   лл   
@echo       лл лл   лл     лл лл   лл   лл  лл       лл       лл       лл    лл  
@echo        ллл    лл     лл лл    лл лллл лллллллл лллллллл лллллллл лл     лл 
@echo.
@echo.
@echo.
@echo. 1 = Open VMware Services
@echo. 2 = Stop VMware Services
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
@echo                                              Stopping VMware services...
taskkill /F /IM vmware-tray.exe > NUL 2>&1
net stop vmware-view-usbd > NUL 2>&1
net stop VMwareHostd > NUL 2>&1
net stop VMAuthdService > NUL 2>&1
net stop VMUSBArbService > NUL 2>&1
net stop VMnetDHCP > NUL 2>&1
net stop "VMware NAT Service" > NUL 2>&1

@echo off
sc query "vmware-view-usbd" | findstr /i "RUNNING"
if not errorlevel 1 (
    echo         vmware-view-usbd is still running
    echo         Restarting killing process . . .
 timeout /T 4 /nobreak
    GOTO ASSASSINATE
) else (
    echo vmware-view-usbd has stopped
)

sc query "VMwareHostd" | findstr /i "RUNNING"
if not errorlevel 1 (
    echo         VMwareHostd is still running
    echo         Restarting killing process . . .
 timeout /T 4 /nobreak
    GOTO ASSASSINATE
) else (
    echo VMwareHostd has stopped
)

sc query "VMAuthdService" | findstr /i "RUNNING"
if not errorlevel 1 (
    echo         VMAuthdService is still running
    echo         Restarting killing process . . .
 timeout /T 4 /nobreak
    GOTO ASSASSINATE
) else (
    echo VMAuthdService has stopped
)

sc query "VMUSBArbService" | findstr /i "RUNNING"
if not errorlevel 1 (
    echo         VMUSBArbService is still running
    echo         Restarting killing process . . .
 timeout /T 4 /nobreak
    GOTO ASSASSINATE
) else (
    echo VMUSBArbService has stopped
)

sc query "VMnetDHCP" | findstr /i "RUNNING"
if not errorlevel 1 (
    echo         VMnetDHCP is still running
    echo         Restarting killing process . . .
 timeout /T 4 /nobreak
    GOTO ASSASSINATE
) else (
    echo VMnetDHCP has stopped
)

sc query "VMware NAT Service" | findstr /i "RUNNING"
if not errorlevel 1 (
    echo         VMware NAT Service is still running
    echo         Restarting killing process . . .
 timeout /T 4 /nobreak
    GOTO ASSASSINATE
) else (
    echo VMware NAT Service has stopped
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
@echo                                              Starting VMware services...
net start VMUSBArbService > NUL 2>&1
net start VMAuthdService > NUL 2>&1
net start VMwareHostd > NUL 2>&1
net start vmware-view-usbd > NUL 2>&1
net start VMnetDHCP > NUL 2>&1
net start "VMware NAT Service" > NUL 2>&1

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
sc query "vmware-view-usbd" | findstr /i "RUNNING"
if not errorlevel 1 (
color 0A
    echo.
    echo         vmware-view-usbd is running
) else (
    echo.
    echo vmware-view-usbd is NOT running
)

sc query "VMwareHostd" | findstr /i "RUNNING"
if not errorlevel 1 (
color 0A
    echo         VMwareHostd is running
) else (
    echo VMwareHostd is NOT running
)

sc query "VMAuthdService" | findstr /i "RUNNING"
if not errorlevel 1 (
color 0A
    echo         VMAuthdService is running
) else (
    echo VMAuthdService is NOT running
)

sc query "VMUSBArbService" | findstr /i "RUNNING"
if not errorlevel 1 (
color 0A
    echo         VMUSBArbService is running
) else (
    echo VMUSBArbService is NOT running
)

sc query "VMnetDHCP" | findstr /i "RUNNING"
if not errorlevel 1 (
color 0A
    echo         VMnetDHCP is running
) else (
    echo VMnetDHCP is NOT running
)

sc query "VMware NAT Service" | findstr /i "RUNNING"
if not errorlevel 1 (
color 0A
    echo         VMware NAT Service is running
) else (
    echo VMware NAT Service is NOT running
)

@echo off
@echo on
@echo.
@echo. 1 = Open VMware Services
@echo. 2 = Stop VMware Services
@echo. 3 = Show Services Status
@echo.
@echo off

SET /P M=Type 1.2 or 3 then press ENTER:
IF %M%==1 GOTO RESURRECT
IF %M%==2 GOTO ASSASSINATE
IF %M%==3 GOTO servicestatus


:EXITNOW
timeout /T 1 /nobreak