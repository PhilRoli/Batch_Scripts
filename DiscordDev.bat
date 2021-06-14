@echo off

echo Checking if Discord is running

tasklist /FI "IMAGENAME eq Discord.exe" 2>NUL | find /I /N "Discord.exe">NUL
if "%ERRORLEVEL%"=="0" (echo Discord is running) else (
    cd "C:\Users\phili\AppData\Local\Discord\app-1.0.9002"
    echo Discord is Starting
    start Discord.exe
    timeout /t 15 /nobreak > NUL)

echo [30m.[37m

echo Checking if DiscordPTB is running

tasklist /FI "IMAGENAME eq DiscordPTB.exe" 2>NUL | find /I /N "DiscordPTB.exe">NUL
if "%ERRORLEVEL%"=="0" (echo DiscordPTB is running) else (
    cd "C:\Users\phili\AppData\Local\DiscordPTB\app-1.0.1008"
    echo DiscordPTB is Starting
    start DiscordPTB.exe
    timeout /t 15 /nobreak > NUL)

echo [30m.[37m

echo Checking if Discord is running

tasklist /FI "IMAGENAME eq DiscordCanary.exe" 2>NUL | find /I /N "DiscordCanary.exe">NUL
if "%ERRORLEVEL%"=="0" (echo DiscordCanary is running) else (
    cd "C:\Users\phili\AppData\Local\DiscordCanary\app-1.0.34"
    echo DiscordCanary is Starting
    start DiscordCanary.exe
    timeout /t 15 /nobreak > NUL)

echo [30m.[37m

exit