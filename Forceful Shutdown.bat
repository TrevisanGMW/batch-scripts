:mainmenu
@echo off
@title =  Forceful Shutdown (c) Guilherme Trevisan 2016.V1.6
color 1B
@echo on
@echo.
@echo.     Forceful
@echo.
@echo            �����                                                  
@echo           �     � �    � �    � ����� �����   ����  �    � �    � 
@echo           �       �    � �    �   �   �    � �    � �    � ��   � 
@echo            �����  ������ �    �   �   �    � �    � �    � � �  � 
@echo                 � �    � �    �   �   �    � �    � � �� � �  � � 
@echo           �     � �    � �    �   �   �    � �    � ��  �� �   �� 
@echo            �����  �    �  ����    �   �����   ����  �    � �    �  
@echo.
@echo.
@echo.
@echo. 
@echo. 1 = Shutdown System
@echo. 2 = Reboot System 
@echo. 3 = Exit File
@echo. 
@echo. 
@echo.
@echo off

SET /P M=Type 1.2 or 3 then press ENTER:
IF %M%==1 GOTO SHUTDOWN
IF %M%==2 GOTO REBOOT
IF %M%==3 GOTO EOF

:SHUTDOWN
SHUTDOWN -s -t 00 -f
goto EOF

:REBOOT
SHUTDOWN -r -t 00 -f
goto EOF


:EOF
exit