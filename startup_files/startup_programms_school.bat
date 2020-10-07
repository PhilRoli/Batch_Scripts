@echo off

echo Checking if Whatsapp is running

tasklist /FI "IMAGENAME eq WhatsApp.exe" 2>NUL | find /I /N "WhatsApp.exe">NUL
if "%ERRORLEVEL%"=="0" (echo Whatsapp is running) else (
    cd "C:\Users\phili\AppData\Local\WhatsApp"
    echo WhatsApp is Starting
    start WhatsApp.exe
    timeout /t 15 /nobreak > NUL)

echo [30m.[37m

echo Checking if Teams is running

tasklist /FI "IMAGENAME eq Teams.exe" 2>NUL | find /I /N "Teams.exe">NUL
if "%ERRORLEVEL%"=="0" (echo Teams is running) else (
    cd "C:\Users\phili\AppData\Local\Microsoft\Teams\current"
    echo Teams is Starting
    start Teams.exe
    timeout /t 15 /nobreak > NUL)

echo [30m.[37m

echo Checking if Chrome is running

tasklist /FI "IMAGENAME eq Chrome.exe" 2>NUL | find /I /N "Chrome.exe">NUL
if "%ERRORLEVEL%"=="0" (echo Discord is running) else (
    cd "C:\Program Files (x86)\Google\Chrome\Application"
    echo Chrome is Starting
    start Chrome.exe
    timeout /t 15 /nobreak > NUL)

echo [30m.[37m

exit