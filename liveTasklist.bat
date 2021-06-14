@echo off

cd C:\

:Loop

tasklist

timeout /t 10 /nobreak > NUL

cls

goto Loop