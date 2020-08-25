@echo off

cd "C:\VSC_Batch_Scripts"

set /p location="Where are you right now? "

echo .

if "%location%" == "home" (
    launchHome.vbs
    exit
)

if "%location%" == "school" (
    launchSchool.vbs
    exit
)

echo Die einganbe war nicht korrekt

echo .

pause
