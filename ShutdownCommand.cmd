:SHUTDOWN
color 1B
@echo on
@echo.
@echo.
@echo            �����                                                  
@echo           �     � �    � �    � ����� �����   ����  �    � �    � 
@echo           �       �    � �    �   �   �    � �    � �    � ��   � 
@echo            �����  ������ �    �   �   �    � �    � �    � � �  � 
@echo                 � �    � �    �   �   �    � �    � � �� � �  � � 
@echo           �     � �    � �    �   �   �    � �    � ��  �� �   �� 
@echo            �����  �    �  ����    �   �����   ����  �    � �    �  
@echo.
@echo.			  You have 5 seconds to cancel it!
@echo.
@echo off
timeout /T 6 /nobreak
SHUTDOWN -s -t 00 -f
goto EOF


:EOF
exit