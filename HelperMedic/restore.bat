@echo off
taskkill /IM 1cv8*

C:\Progra~1\WinRAR\RAR.exe x  d:\HelperMedic\Backup\copy.rar d:\10

"C:\Program Files\1cv8\8.3.13.1690\bin\1cv8.exe" ENTERPRISE /F "D:\HelperMedic"
exit /b 128
