@echo off

set /p dirname="Name of the new Directory: "

cd "C:\"

mkdir %dirname%

cd "C:\%dirname%"

timeout /t 1 /nobreak > NUL

type NUL > README.md

timeout /t 1 /nobreak > NUL

git init
