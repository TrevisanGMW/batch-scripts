@echo off
@title =  NVidia Cache Dumper (c) Guilherme Trevisan 2016.V3.5
color 02
@echo on
@echo.
@echo                      ���������                                            
@echo                ������         �����                 �����������           
@echo              ���                   ���              �����   �����         
@echo             ��                        ��            ���       ����        
@echo           ��        Hello There,        ��                     ���        
@echo          ��         Traveller            ��                     ��        
@echo         ��                                ��                   ���        
@echo        ��                                  ��                  ���        
@echo       ��     Do you want to Delete all     ��                ����         
@echo       ��     Old NVidia Updates and         ��      ������������          
@echo       ��     Cache Files?                   ��      ��������              
@echo       ��                                    ��      ���                   
@echo       ��                                   ��       ��                    
@echo        ��    Default Nvidia Installation   �       ��                     
@echo         ��   Files Should be Deleted      ��                              
@echo          ��  Manually (C:/Nvidia)        ��                               
@echo           ��                            ��                                
@echo             ��                       ���         �����                    
@echo               ���                 ����          ������                    
@echo                  ���            ���             �����                     
@echo                     ������������                                          
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
@echo ���������������������������������������������������������������������������
@echo ���������������������������������������������������������������������������
@echo ��������           ����������         ������     ����      ��           ���
@echo ��������              �����             ���       ���      ��           ���
@echo �������                ���      ��      ���       ���     ���           ���
@echo �������       ��       ��       ��      ���       ��      ��       ��������
@echo �������       ��      ���      ��       ���        �      ��       ��������
@echo ������       ��       ��       ��       ��         �     ���      ���������
@echo ������       ��       ��       ��      ���               ��           �����
@echo ������       ��      ���      ��       ���               ��           �����
@echo ������      ��       ��       ��       ��               ���           �����
@echo �����       ��       ��       ��       ��     ��        ��       ����������
@echo �����       ��       ��      ���      ���     ��        ��       ����������
@echo �����      ��       ��       ��       ��      ��       ���       ����������
@echo ����                ��       �       ���      ��       ��            ������
@echo ����               ����             ����     ���       ��            ������
@echo ����            ���������         �����      ���      ���           �������
@echo ���������������������������������������������������������������������������
@echo ���������������������������������������������������������������������������
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
