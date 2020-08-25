@echo off

echo Checking if Whatsapp is running

tasklist /FI "IMAGENAME eq WhatsApp.exe" 2>NUL | find /I /N "WhatsApp.exe">NUL
if "%ERRORLEVEL%"=="0" (echo Whatsapp is running) else (
    cd "C:\Users\phili\AppData\Local\WhatsApp\app-2.2033.7"
    echo WhatsApp is Starting
    start WhatsApp.exe
    timeout /t 30 /nobreak > NUL)

echo .

echo Checking if Spotify is running

tasklist /FI "IMAGENAME eq Spotify.exe" 2>NUL | find /I /N "Spotify.exe">NUL
if "%ERRORLEVEL%"=="0" (echo Whatsapp is running) else (
    cd "C:\Users\phili\AppData\Local\Microsoft\WindowsApps"
    echo Spotify is Starting
    start Spotify.exe
    timeout /t 30 /nobreak > NUL)

echo .

echo Checking if Discord is running

tasklist /FI "IMAGENAME eq Discord.exe" 2>NUL | find /I /N "Discord.exe">NUL
if "%ERRORLEVEL%"=="0" (echo Whatsapp is running) else (
    cd "C:\Users\phili\AppData\Local\Discord\app-0.0.307"
    echo Discord is Starting
    start Discord.exe
    timeout /t 30 /nobreak > NUL)

echo .

pause