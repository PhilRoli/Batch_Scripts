@echo off

tasklist /FI "IMAGENAME eq Discord.exe" 2>NUL | find /I /N "Discord.exe">NUL
if "%ERRORLEVEL%"=="0" (Taskkill /IM Discord.exe /F)

tasklist /FI "IMAGENAME eq Chrome.exe" 2>NUL | find /I /N "Chrome.exe">NUL
if "%ERRORLEVEL%"=="0" (Taskkill /IM Chrome.exe /F)

tasklist /FI "IMAGENAME eq WhatsApp.exe" 2>NUL | find /I /N "WhatsApp.exe">NUL
if "%ERRORLEVEL%"=="0" (Taskkill /IM WhatsApp.exe /F)

tasklist /FI "IMAGENAME eq Spotify.exe" 2>NUL | find /I /N "Spotify.exe">NUL
if "%ERRORLEVEL%"=="0" (Taskkill /IM Spotify.exe /F)

tasklist /FI "IMAGENAME eq Code.exe" 2>NUL | find /I /N "Code.exe">NUL
if "%ERRORLEVEL%"=="0" (Taskkill /IM Code.exe /F)

tasklist /FI "IMAGENAME eq Steam.exe" 2>NUL | find /I /N "Steam.exe">NUL
if "%ERRORLEVEL%"=="0" (Taskkill /IM Steam.exe /F)

exit

REM echo [91mShutdown after Timer below ends
REM echo Please close all remaining open Programms
REM shutdown /s /f /t 10060 && timeout /t 60

