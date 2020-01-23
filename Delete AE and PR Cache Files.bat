@echo off
REM Simple script used to delete cache files for Premiere, Mocha and After FX
REM If you want to use it, update the links below
SET deleteFolderContentOne=C:\Users\UserName\AppData\Roaming\Adobe\Common\Adobe
SET deleteFolderContentTwo="C:\Users\UserName\AppData\Roaming\Adobe\Common\Media Cache Files"
SET deleteFolderContentThree="C:\Users\UserName\AppData\Local\Temp\Imagineer Systems Ltd\MoTemp"

@title =  AfterFX, Premiere and Mocha Cache Dumper (c) Guilherme Trevisan 2016.V1.1
color 1D
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
@echo       лл     AfterFX,Premiere and Mocha     лл      лллллллллллл          
@echo       лл     Cache Files?                   лл      лллллллл              
@echo       лл                                    лл      ллл                   
@echo       лл                                   лл       лл                    
@echo        лл                                  л       лл                     
@echo         лл         Default PR Project     лл                              
@echo          лл        Files Included        лл                               
@echo           лл              :)            лл                                
@echo             лл                       ллл         ллллл                    
@echo               ллл                 лллл          лллллл                    
@echo                  ллл            ллл             ллллл                     
@echo                     лллллллллллл                                          
@echo.
@echo. 1 = Dump Cache
@echo. 2 = Open Folders
@echo. 3 = Exit File
@echo. 
@echo off

SET /P M=Type 1.2,3 or 4 then press ENTER:
IF %M%==1 GOTO DELFILES
IF %M%==2 GOTO OPEN
IF %M%==3 GOTO EOF

:DELFILES
cls
color 0A

forfiles /p %deleteFolderContentOne% /s /m *.* /c "cmd /c Del @path /q" 
forfiles /p %deleteFolderContentTwo% /s /m *.* /c "cmd /c Del @path /q" 
forfiles /p %deleteFolderContentThree% /s /m *P* /c "cmd /c Del @path /q" 



@echo off
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
explorer %deleteFolderContentOne%
explorer %deleteFolderContentTwo%
explorer %deleteFolderContentThree%
timeout /T 1 /nobreak
goto EOF

:EOF
exit
