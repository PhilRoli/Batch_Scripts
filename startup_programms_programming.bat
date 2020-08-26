@echo off

echo Checking if Visual Studio Code is running

tasklist /FI "IMAGENAME eq Code.exe" 2>NUL | find /I /N "Code.exe">NUL
if "%ERRORLEVEL%"=="0" (echo Visual Studio Code is running) else (
    cd "C:\Users\phili\AppData\Local\Programs\Microsoft VS Code"
    echo Visual Studio Code is Starting
    start Code.exe
    timeout /t 15 /nobreak > NUL)

echo .

echo Checking if Spotify is running

tasklist /FI "IMAGENAME eq Spotify.exe" 2>NUL | find /I /N "Spotify.exe">NUL
if "%ERRORLEVEL%"=="0" (echo Spotify is running) else (
    cd "C:\Users\phili\AppData\Local\Microsoft\WindowsApps"
    echo Spotify is Starting
    start Spotify.exe
    timeout /t 15 /nobreak > NUL)

echo .

echo Checking if chrome is running

tasklist /FI "IMAGENAME eq chrome.exe" 2>NUL | find /I /N "chrome.exe">NUL
if "%ERRORLEVEL%"=="0" (echo chrome is running) else (
    cd "C:\Program Files (x86)\Google\Chrome\Application"
    echo Chrome is Starting
    start chrome.exe
    timeout /t 15 /nobreak > NUL)

echo .

exit