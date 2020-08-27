@echo off

cd "C:\VSC_Batch_Scripts"

set /p location="Where are you right now? "

echo [30m.[37m

if "%location%" == "home" goto ResultHome
if "%location%" == "h" goto ResultHome

if "%location%" == "school" goto ResultSchool
if "%location%" == "s" goto ResultSchool

if "%location%" == "programming" goto ResultProgramming
if "%location%" == "p" goto ResultProgramming

if "%location%" == "destiny" goto ResultDestiny
if "%location%" == "d" goto ResultDestiny

if "%location%" == "test" goto ResultTest
if "%location%" == "t" goto ResultTest

echo Die einganbe war nicht korrekt
echo [30m.[37m
pause
exit

:ResultHome
    launchHome.vbs
    exit

:ResultSchool
    launchSchool.vbs
    exit

:ResultProgramming
    launchProgramming.vbs
    exit

:ResultDestiny
    launchDestiny2.vbs
    exit

:ResultTest
    echo Test Erfolgreich
    echo [30m.[37m
    pause
    exit
