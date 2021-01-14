REM small file which gets the current default audio device and then triggers a shortcut which changes the default to the opposite one via SoundVolumeView

REM change do directory where .exe is located
cd C:\VSC_Batch_Scripts\soundVolumeShortcuts

REM get current mute status of Headset > 0 = in use / 1 = not in use
set /p level=<"C:\users\phili\documents\level.txt"

echo %level%

REM check which mute status headset has
if "%level%"=="0 " goto switchPS5
if "%level%"=="1 " goto switchPC

:switchPS5

REM set the speakers (3.5mm) as default audio
start PS5

echo 1 >"C:\users\phili\documents\level.txt"

node "C:\VSC_Node\Node_Batch\toogle_audio\toogle_ps5.js"

exit

:switchPC

REM set the headset as default audio device
start PC

echo 0 >"C:\users\phili\documents\level.txt"

node "C:\VSC_Node\Node_Batch\toogle_audio\toogle_pc.js"

exit