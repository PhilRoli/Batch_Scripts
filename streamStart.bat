@echo off

cd "C:\Users\phili\AppData\Local\Programs\streamlabels\"
start StreamLabels.exe

timeout /t 15 /nobreak > NUL

D:
cd "D:\StreamStuff\SpotifyPlaying"
start OBSCurrentSong.exe

timeout /t 15 /nobreak > NUL

C:
cd "C:\Program Files\obs-studio\bin\64bit\"
start obs64.exe

timeout /t 15 /nobreak > NUL

exit