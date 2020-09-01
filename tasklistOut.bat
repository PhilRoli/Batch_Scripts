@echo off

cd C:\Users\%username%\Documents

:Start
echo [30m.[37m

tasklist > tasktext.txt

tasktext.txt

exit