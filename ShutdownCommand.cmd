:SHUTDOWN
color 1B
@echo on
@echo.
@echo.
@echo            ллллл                                                  
@echo           л     л л    л л    л ллллл ллллл   лллл  л    л л    л 
@echo           л       л    л л    л   л   л    л л    л л    л лл   л 
@echo            ллллл  лллллл л    л   л   л    л л    л л    л л л  л 
@echo                 л л    л л    л   л   л    л л    л л лл л л  л л 
@echo           л     л л    л л    л   л   л    л л    л лл  лл л   лл 
@echo            ллллл  л    л  лллл    л   ллллл   лллл  л    л л    л  
@echo.
@echo.			  You have 5 seconds to cancel it!
@echo.
@echo off
timeout /T 6 /nobreak
SHUTDOWN -s -t 00 -f
goto EOF


:EOF
exit