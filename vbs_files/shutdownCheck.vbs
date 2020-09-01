Set WshShell = CreateObject("WScript.Shell") 
WshShell.Run chr(34) & "C:\VSC_Batch_Scripts\startup_files\shutdownCheck.bat" & Chr(34), 0
Set WshShell = Nothing