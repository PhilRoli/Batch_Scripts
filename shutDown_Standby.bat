@echo off

REM Discontinued

:Loop
set /p choice="shutdown or standby? "
echo [30m.[37m
if "%choice%" == "shutdown" (goto shutdown)
if "%choice%" == "standby" (goto standby)
REM if non of the above are true Echo error and loop
echo The Input was not correct. Please try again
echo [30m.[37m
goto Loop

:shutdown
cd "C:\VSC_Batch_Scripts\vbs_files\shutdownCheck.vbs"
goto Done

:standby
echo standby
goto Done

:Done
pause