@echo off

cd "C:\Program Files (x86)\Steam"

start steam.exe

timeout /t 30 /nobreak > NUL

cd "C:\Program Files (x86)\Steam\steamapps\common\Destiny 2"

start destiny2.exe

exit