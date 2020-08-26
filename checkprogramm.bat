@echo off

set /p programm="Programm to check: "

echo .

tasklist /FI "IMAGENAME eq %programm%.exe" 2>NUL | find /I /N "%programm%.exe">NUL
if "%ERRORLEVEL%"=="0" (echo Program is running) else (
    echo Programm is not running
    echo .
    pause
    exit
)

echo .

set /p killchoice="Do you want to kill this programm? (Y/N) "

echo .

if "%killchoice%"=="y" (Taskkill /IM %programm%.exe /F
    echo .
    pause
) else (pause)