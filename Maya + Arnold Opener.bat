@echo off
REM This script opens Maya and the Arnold Server, then updates the Maya Startup Image
@title =  Maya & Arnold Server Opener (c) GT 2017.V1

@echo off
SET CurrentMayaVersion=2019
goto updateSplash

:checkRunning
tasklist /FI "IMAGENAME eq rlm.exe" | findstr "rlm.exe" >nul
if %ERRORLEVEL% == 1 goto notRunning
goto running

:notRunning
start /min "" "C:\Program Files\Autodesk\Arnold\%CurrentMayaVersion%\bin\rlm.exe"
start "" "C:\Program Files\Autodesk\Maya%CurrentMayaVersion%\bin\maya.exe"
goto eof

:running
start "" "C:\Program Files\Autodesk\Maya%CurrentMayaVersion%\bin\maya.exe"
goto eof

:eof
exit


:updateSplash
cd /d C:
cd C:\Program Files\Autodesk\Maya%CurrentMayaVersion%\icons
ren MayaStartupImage.png MayaStartupImage_temp.png
ren MayaStartupImage_02.png MayaStartupImage.png
ren MayaStartupImage_03.png MayaStartupImage_02.png
ren MayaStartupImage_04.png MayaStartupImage_03.png
ren MayaStartupImage_05.png MayaStartupImage_04.png
ren MayaStartupImage_06.png MayaStartupImage_05.png
ren MayaStartupImage_07.png MayaStartupImage_06.png
ren MayaStartupImage_08.png MayaStartupImage_07.png
ren MayaStartupImage_09.png MayaStartupImage_08.png
ren MayaStartupImage_10.png MayaStartupImage_09.png
ren MayaStartupImage_11.png MayaStartupImage_10.png
ren MayaStartupImage_temp.png MayaStartupImage_11.png
goto checkRunning

:updateSplash150
cd /d C:
cd C:\Program Files\Autodesk\Maya%CurrentMayaVersion%\icons
ren MayaStartupImage_150.png MayaStartupImage_150_temp.png
ren MayaStartupImage_150_02.png MayaStartupImage_150.png
ren MayaStartupImage_150_03.png MayaStartupImage_150_02.png
ren MayaStartupImage_150_04.png MayaStartupImage_150_03.png
ren MayaStartupImage_150_05.png MayaStartupImage_150_04.png
ren MayaStartupImage_150_06.png MayaStartupImage_150_05.png
ren MayaStartupImage_150_07.png MayaStartupImage_150_06.png
ren MayaStartupImage_150_08.png MayaStartupImage_150_07.png
ren MayaStartupImage_150_09.png MayaStartupImage_150_08.png
ren MayaStartupImage_150_10.png MayaStartupImage_150_09.png
ren MayaStartupImage_150_11.png MayaStartupImage_150_10.png
ren MayaStartupImage_150_temp.png MayaStartupImage_150_11.png
goto checkRunning
