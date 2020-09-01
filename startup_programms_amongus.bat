@echo off

tasklist /FI "IMAGENAME eq Among Us.exe" 2>NUL | find /I /N "Among Us.exe">NUL
if "%ERRORLEVEL%"=="0" (exit) else (
    tasklist /FI "IMAGENAME eq steam.exe" 2>NUL | find /I /N "steam.exe">NUL
    if "%ERRORLEVEL%"=="0" (
        start "" steam://rungameid/945360
        exit ) else (
            cd "C:\Program Files (x86)\Steam"
            start steam.exe
            timeout /t 15 /nobreak > NUL
            start "" steam://rungameid/945360
            exit
    ))