@echo off

cd C:\Users\phili\Desktop

:Start
find /c /v "" tasktext.txt

echo [30m.[37m

tasklist > tasktext.txt

timeout /t 5 > NUL

goto Start