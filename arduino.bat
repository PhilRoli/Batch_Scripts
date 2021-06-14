@echo off

set /p newName="Name: "

cd "C:\Users\phili\Documents\Arduino\Arduiono_Files"

mkdir %newName%

cd %newName%

echo void setup() >> %newName%.ino
echo { >> %newName%.ino
echo } >> %newName%.ino
echo. >> %newName%.ino
echo void loop() >> %newName%.ino
echo { >> %newName%.ino
echo } >> %newName%.ino