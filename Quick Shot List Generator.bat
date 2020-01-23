@echo off
REM Put the script in the same folder where you want to generate the list and update the format to what you want your list to contain
@title =  Quick Shot List Generator (c) Guilherme Trevisan 2017.V1.0
:formatSetter
set DefaultFormat=.mov
for %%* in (.) do set CurrDirName=%%~nx*
for /f "delims=" %%a in ('dir /b /on *%DefaultFormat%') do @echo %%~na >> "List of Shots in %CurrDirName%.txt"
pause