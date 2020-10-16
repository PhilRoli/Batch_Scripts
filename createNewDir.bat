@echo off

set /p dirname="Name of the new Directory: "

cd "C:\"

IF exist "%dirname%" (
    echo [30m.[37m
    set /p alredyExisting="%dirname% already exists, do you want to add it to the VSC Workspace? (Y/N) "
    goto Continue
) else (goto DoesntExist)

:Continue
if "%alredyExisting%"=="y" (goto AddDIR) else (goto Done)

:DoesntExist

mkdir %dirname%

cd "C:\%dirname%"

timeout /t 1 /nobreak > NUL

type NUL > README.md

echo # **%dirname%**> README.md

timeout /t 1 /nobreak > NUL

git init

git add -A

git commit -m "Created the %dirname% folder inkl README.md file"

cd "C:\"

set /p choice="Do you want to add the new DIR to VSC now? (Y/N) "
if "%choice%" == "y" (goto CheckVSC) else (goto Done)

:CheckVSC
tasklist /FI "IMAGENAME eq Code.exe" 2>NUL | find /I /N "Code.exe">NUL
if "%ERRORLEVEL%"=="0" (goto AddDIR) else (goto Choice)

:Choice
    set /p choice2="Do you want to start VSC now? (Y/N) "
    if "%choice2%" == "y" (goto StartVSC) else (goto Done)

:StartVSC
    cd "C:\Users\phili\AppData\Local\Programs\Microsoft VS Code"
    echo Visual Studio Code is Starting
    start Code.exe
    timeout /t 15 /nobreak > NUL
    goto AddDIR

:AddDIR
    code -a --add %dirname%

:Done

exit