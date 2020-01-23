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
@echo                      ���������                                            
@echo                ������         �����                 �����������           
@echo              ���                   ���              �����   �����         
@echo             ��                        ��            ���       ����        
@echo           ��        Hello There,        ��                     ���        
@echo          ��         Traveller            ��                     ��        
@echo         ��                                ��                   ���        
@echo        ��                                  ��                  ���        
@echo       ��     Do you want to Delete all     ��                ����         
@echo       ��     AfterFX,Premiere and Mocha     ��      ������������          
@echo       ��     Cache Files?                   ��      ��������              
@echo       ��                                    ��      ���                   
@echo       ��                                   ��       ��                    
@echo        ��                                  �       ��                     
@echo         ��         Default PR Project     ��                              
@echo          ��        Files Included        ��                               
@echo           ��              :)            ��                                
@echo             ��                       ���         �����                    
@echo               ���                 ����          ������                    
@echo                  ���            ���             �����                     
@echo                     ������������                                          
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
explorer %deleteFolderContentOne%
explorer %deleteFolderContentTwo%
explorer %deleteFolderContentThree%
timeout /T 1 /nobreak
goto EOF

:EOF
exit
