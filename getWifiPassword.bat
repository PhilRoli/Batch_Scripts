@echo off

:Start
netsh wlan show profile

echo [30m.[37m

set /p wifiName="Wifi SSID: "

echo [30m.[37m

netsh wlan show profile %wifiName% key=clear

if "%ERRORLEVEL%"=="1" (goto Start)

pause