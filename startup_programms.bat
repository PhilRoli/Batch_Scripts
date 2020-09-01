@echo off

cd "C:\VSC_Batch_Scripts\vbs_files"

set /p location="Home / School / Programming / Destiny / Among: "

echo [30m.[37m

if "%location%" == "home" goto ResultHome
if "%location%" == "h" goto ResultHome

if "%location%" == "school" goto ResultSchool
if "%location%" == "s" goto ResultSchool

if "%location%" == "programming" goto ResultProgramming
if "%location%" == "p" goto ResultProgramming

if "%location%" == "destiny" goto ResultDestiny
if "%location%" == "d" goto ResultDestiny

if "%location%" == "among" goto ResultAmong
if "%location%" == "a" goto ResultAmong

if "%location%" == "test" goto ResultTest
if "%location%" == "t" goto ResultTest

echo Die einganbe war nicht korrekt
echo [30m.[37m
pause
exit

:ResultHome
    echo Launching Home Programms
    echo [30m.[37m
    timeout /t 5 > NUL
    launchHome.vbs
    exit

:ResultSchool
    echo Launching School Programms
    echo [30m.[37m
    timeout /t 5 > NUL
    launchSchool.vbs
    exit

:ResultProgramming
    echo Launching Programming Programms
    echo [30m.[37m
    timeout /t 5 > NUL
    launchProgramming.vbs
    exit

:ResultDestiny
    echo Launching Destiny
    echo [30m.[37m
    timeout /t 5 > NUL
    launchDestiny2.vbs
    exit
	
:ResultAmong
    echo Launching Among Us
    echo [30m.[37m
    timeout /t 5 > NUL
	launchAmong.vbs
	exit

:ResultTest
    echo Launching Test Programms
    echo [30m.[37m
    timeout /t 5 > NUL
    echo Test Erfolgreich
    echo [30m.[37m
    pause
    exit
