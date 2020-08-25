@echo off

tasklist /FI "IMAGENAME eq Destiny2.exe" 2>NUL | find /I /N "Destiny2.exe">NUL
if "%ERRORLEVEL%"=="0" (exit) else (
    tasklist /FI "IMAGENAME eq steam.exe" 2>NUL | find /I /N "steam.exe">NUL
    if "%ERRORLEVEL%"=="0" (
        cd "C:\Program Files (x86)\Steam\steamapps\common\Destiny 2"
        start destiny2.exe
        exit) else (
            cd "C:\Program Files (x86)\Steam"
            start steam.exe
            timeout /t 30 /nobreak > NUL
            cd "C:\Program Files (x86)\Steam\steamapps\common\Destiny 2"
            start destiny2.exe
            exit
    ))