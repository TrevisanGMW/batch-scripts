@echo off
REM Script to create an adhoc connection and open/close team viewer
:mainmenu
@echo off
@title =  Ad-hoc Creator (c) Guilherme Trevisan 2016.V2.3
SET networkSSID="Laptop's Repeater"
SET networkPassword="password"
color 8A
@echo on
@echo.
@echo.
@echo.
@echo             ���    ��������     ��     ��  �������   ������  
@echo            �� ��   ��     ��    ��     �� ��     �� ��    �� 
@echo           ��   ��  ��     ��    ��     �� ��     �� ��       
@echo          ��     �� ��     ��    ��������� ��     �� ��         
@echo          ��������� ��     ��    ��     �� ��     �� ��       
@echo          ��     �� ��     ��    ��     �� ��     �� ��    �� 
@echo          ��     �� ��������     ��     ��  �������   ������  
@echo.
@echo.         Info :SSID= %networkSSID%  Key= %networkPassword%
@echo.
@echo.
@echo.         1 = Create Ad-hoc Connection
@echo.         2 = Stop Ad-hoc Connection
@echo.         3 = Disable Main Adapter
@echo.         4 = Ad-hoc Special Shutdown
@echo.
@echo.
@echo.
@echo.
@echo off

SET /P M=Type 1.2,3 or 4, then press ENTER:
IF %M%==1 GOTO RESURRECT
IF %M%==2 GOTO ASSASSINATE
IF %M%==3 GOTO DISABLE
IF %M%==3 GOTO SHUTDOWN

:SHUTDOWN
netsh wlan stop hosted
taskkill /f /im TeamViewer.exe
timeout /T 2 /nobreak
SHUTDOWN -s -t 00 -f
GOTO EXITNOW


:DISABLE
@echo.
@echo.
@echo.            ������������������������������������������������
@echo             �  Please Turn OFF the main Network Adapter..  �
@echo.            ������������������������������������������������
@echo.
ncpa.cpl
timeout /T 3 /nobreak
cls
GOTO mainmenu


:ASSASSINATE
@echo on
@echo.
@echo.
@echo        �����                                                                  
@echo       �     � �����  ����  �����  �����  � �    �  ����                       
@echo       �         �   �    � �    � �    � � ��   � �    �                      
@echo        �����    �   �    � �    � �    � � � �  � �                           
@echo             �   �   �    � �����  �����  � �  � � �  ���                     
@echo       �     �   �   �    � �      �      � �   �� �    �     ��     ��     �� 
@echo        �����    �    ����  �      �      � �    �  ����      ��     ��     �� 
@echo.
@echo.
@echo.
@echo                                              Stopping Service...

netsh wlan stop hosted

timeout /T 2 /nobreak
taskkill /f /im TeamViewer.exe
@echo off
color 8A
@echo on
@echo.                                      
@echo    ��������   �������  ��    �� �������� 
@echo    ��     �� ��     �� ���   �� ��       
@echo    ��     �� ��     �� ����  �� ��       
@echo    ��     �� ��     �� �� �� �� ������   
@echo    ��     �� ��     �� ��  ���� ��       
@echo    ��     �� ��     �� ��   ��� ��       
@echo    ��������   �������  ��    �� �������� 
@echo.                                       
GOTO EXITNOW

:RESURRECT
@echo on
@echo.
@echo.
@echo        �����                                                                 
@echo       �     � �����   ��   �����  ����� � �    �  ����                       
@echo       �         �    �  �  �    �   �   � ��   � �    �                      
@echo        �����    �   �    � �    �   �   � � �  � �                           
@echo             �   �   ������ �����    �   � �  � � �  ���                      
@echo       �     �   �   �    � �   �    �   � �   �� �    �     ��     ��     �� 
@echo        �����    �   �    � �    �   �   � �    �  ����      ��     ��     �� 
@echo.
@echo.
@echo.
@echo                                              Creating Adhoc...


netsh wlan set hosted mode=allow ssid=%networkSSID% key=%networkPassword%
@echo.  � � � � � � � � � � � � � � �
netsh wlan start hosted
@echo.  � � � � � � � � � � � � � � �

timeout /T 3 /nobreak


@echo off
tasklist /FI "IMAGENAME eq TeamViewer.exe" | findstr "TeamViewer.exe" >nul
if %ERRORLEVEL% == 1 goto notrunning
goto running
:notrunning
start /min "" "C:\Program Files (x86)\TeamViewer\TeamViewer.exe"
:running
control.exe /name Microsoft.NetworkAndSharingCenter

@echo off
color 8A
@echo on
@echo.                                      
@echo    ��������   �������  ��    �� �������� 
@echo    ��     �� ��     �� ���   �� ��       
@echo    ��     �� ��     �� ����  �� ��       
@echo    ��     �� ��     �� �� �� �� ������   
@echo    ��     �� ��     �� ��  ���� ��       
@echo    ��     �� ��     �� ��   ��� ��       
@echo    ��������   �������  ��    �� �������� 
@echo.                                         
GOTO EXITNOW


:EXITNOW
timeout /T 1 /nobreak