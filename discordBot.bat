@echo off

cd "C:\VSC_Node\DiscordBot"

:Choice
set /p nodeChoice="Nodemon? (y/n): "

if "%nodeChoice%" == "y" (goto Nodemon) else (goto Second)

:Second
if "%nodeChoice%" == "n" (goto Node) else (goto Wrong)

:Wrong
echo The input was Incorrect. Please try again
echo [30m.[37m
goto Choice

:Nodemon
nodemon bot_js.js
exit

:Node
node bot_js.js
exit