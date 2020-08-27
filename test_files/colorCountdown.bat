@echo off

set seconds=20

:Output
echo [91mShutdown after Timer below ends
timeout /t %seconds%
echo .
set /A seconds=seconds-1
if "%seconds%"=="0" (goto Done) else (goto ForLoop)

:Done

pause