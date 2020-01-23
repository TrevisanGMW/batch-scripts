@echo off
REM Very simple script to convert files from .rip to .obj using "ripToObj.exe"
@echo on
for %%f in ("*.rip") do ripToObj %%f

pause
