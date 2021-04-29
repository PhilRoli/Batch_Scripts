@echo off
:getTime
echo %time%
timeout /t 1 /nobreak > NUL
cls
goto getTime