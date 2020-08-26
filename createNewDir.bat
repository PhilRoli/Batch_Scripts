@echo off

set /p dirname="Name of the new Directory: "

cd "C:\"

mkdir %dirname%

cd "C:\%dirname%"

timeout /t 1 /nobreak > NUL

type NUL > README.md

echo "# %dirname%" > README.md

timeout /t 1 /nobreak > NUL

git init

git add -A

git commit -m "Created the %dirname% folder inkl README.md file"

cd "C:\"

code -a --add %dirname%

pause