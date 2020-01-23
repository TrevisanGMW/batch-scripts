@echo off
@title =  NVidia Cache Dumper (c) Guilherme Trevisan 2016.V3.5
color 02
@echo on
@echo.
@echo                      ллллллллл                                            
@echo                лллллл         ллллл                 ллллллллллл           
@echo              ллл                   ллл              ллллл   ллллл         
@echo             лл                        лл            ллл       лллл        
@echo           лл        Hello There,        лл                     ллл        
@echo          лл         Traveller            лл                     лл        
@echo         лл                                лл                   ллл        
@echo        лл                                  лл                  ллл        
@echo       лл     Do you want to Delete all     лл                лллл         
@echo       лл     Old NVidia Updates and         лл      лллллллллллл          
@echo       лл     Cache Files?                   лл      лллллллл              
@echo       лл                                    лл      ллл                   
@echo       лл                                   лл       лл                    
@echo        лл    Default Nvidia Installation   л       лл                     
@echo         лл   Files Should be Deleted      лл                              
@echo          лл  Manually (C:/Nvidia)        лл                               
@echo           лл                            лл                                
@echo             лл                       ллл         ллллл                    
@echo               ллл                 лллл          лллллл                    
@echo                  ллл            ллл             ллллл                     
@echo                     лллллллллллл                                          
@echo.
@echo. 1 = Dump Cache
@echo. 2 = Open Folders
@echo. 3 = Open GeForce Experience
@echo. 4 = Exit File
@echo. 
@echo off

SET /P M=Type 1.2,4 or 4 then press ENTER:
IF %M%==1 GOTO DELFILES
IF %M%==2 GOTO OPEN
IF %M%==3 GOTO GEXP
IF %M%==4 GOTO EOF

:DELFILES
cls

forfiles /p "C:\Program Files\NVIDIA Corporation\Installer2" /s /m *.* /c "cmd /c Del @path /q" 
forfiles /p "C:\ProgramData\NVIDIA Corporation\NetService" /s /m *.exe /c "cmd /c Del @path /q" 
forfiles /p "C:\ProgramData\NVIDIA Corporation\Downloader" /s /m *.exe /c "cmd /c Del @path /q" 



@echo off
color 0A
@echo on
@echo ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@echo ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@echo лллллллл           лллллллллл         лллллл     лллл      лл           ллл
@echo лллллллл              ллллл             ллл       ллл      лл           ллл
@echo ллллллл                ллл      лл      ллл       ллл     ллл           ллл
@echo ллллллл       лл       лл       лл      ллл       лл      лл       лллллллл
@echo ллллллл       лл      ллл      лл       ллл        л      лл       лллллллл
@echo лллллл       лл       лл       лл       лл         л     ллл      ллллллллл
@echo лллллл       лл       лл       лл      ллл               лл           ллллл
@echo лллллл       лл      ллл      лл       ллл               лл           ллллл
@echo лллллл      лл       лл       лл       лл               ллл           ллллл
@echo ллллл       лл       лл       лл       лл     лл        лл       лллллллллл
@echo ллллл       лл       лл      ллл      ллл     лл        лл       лллллллллл
@echo ллллл      лл       лл       лл       лл      лл       ллл       лллллллллл
@echo лллл                лл       л       ллл      лл       лл            лллллл
@echo лллл               лллл             лллл     ллл       лл            лллллл
@echo лллл            ллллллллл         ллллл      ллл      ллл           ллллллл
@echo ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@echo ллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллллл
@echo.
@echo.
@echo off

timeout /T 3 /nobreak
goto EOF

:OPEN
explorer "C:\Program Files\NVIDIA Corporation\Installer2"
explorer "C:\ProgramData\NVIDIA Corporation\NetService"
explorer "C:\ProgramData\NVIDIA Corporation\Downloader"
start "" "D:\Documents\Tools\DriverStoreExplorer.exe"
timeout /T 1 /nobreak
goto EOF


:GEXP
start "" "C:\Program Files (x86)\NVIDIA Corporation\NVIDIA GeForce Experience\LaunchGFExperience.exe"


:EOF
exit
