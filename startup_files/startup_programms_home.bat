@echo off

echo Checking if Whatsapp is running

tasklist /FI "IMAGENAME eq WhatsApp.exe" 2>NUL | find /I /N "WhatsApp.exe">NUL
if "%ERRORLEVEL%"=="0" (echo Whatsapp is running) else (
    cd "C:\Users\phili\AppData\Local\WhatsApp"
    echo WhatsApp is Starting
    start WhatsApp.exe
    timeout /t 15 /nobreak > NUL)

echo [30m.[37m

echo Checking if Spotify is running

tasklist /FI "IMAGENAME eq Spotify.exe" 2>NUL | find /I /N "Spotify.exe">NUL
if "%ERRORLEVEL%"=="0" (echo Spotify is running) else (
    cd "C:\Users\phili\AppData\Local\Microsoft\WindowsApps"
    echo Spotify is Starting
    start Spotify.exe
    timeout /t 15 /nobreak > NUL)

echo [30m.[37m

echo Checking if Discord is running

tasklist /FI "IMAGENAME eq Discord.exe" 2>NUL | find /I /N "Discord.exe">NUL
if "%ERRORLEVEL%"=="0" (echo Discord is running) else (
    cd "C:\Users\phili\AppData\Local\DiscordPTB\app-0.0.55"
    echo Discord is Starting
    start DiscordPTB.exe
    timeout /t 15 /nobreak > NUL)

echo [30m.[37m

echo Checking if chrome is running

tasklist /FI "IMAGENAME eq chrome.exe" 2>NUL | find /I /N "chrome.exe">NUL
if "%ERRORLEVEL%"=="0" (echo chrome is running) else (
    cd "C:\Program Files (x86)\Google\Chrome\Application"
    echo Chrome is Starting
    start chrome.exe
    timeout /t 15 /nobreak > NUL)

REM echo DIM is Starting
REM "C:\Program Files (x86)\Google\Chrome\Application\chrome_proxy.exe" --profile-directory=Default --app-id=diekafcbbmcolffflekimginbldpnioe

echo [30m.[37m

exit