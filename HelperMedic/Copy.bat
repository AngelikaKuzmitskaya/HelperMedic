@echo off
taskkill /IM 1cv8*
TIMEOUT /T 5 
rem *******************
rem задаём диск куда будем бэкапить и диск где лежат папки для архивирования
rem *******************
SET DRIVE1ST=d:
SET DRIVE2ND=d:
rem ********************
rem *** Проверим путь назначения архива
rem ********************
%DRIVE1ST%
if not exist \!backup md \!backup
cd \!backup
rem ******************************
rem *** Указываем папку для архива, имя архива и папку для архивирования
rem ******************************
SET DIRNAME=!backup
SET FILENAME=Copy1
SET SOURCEDIR=%DRIVE2ND%\HelperMedic
start C:\Progra~1\winRAR\RAR.exe a -m5 -r %DRIVE2ND%\%DIRNAME%\%FILENAME%_new %SOURCEDIR%\*.*
del %DRIVE2ND%\%DIRNAME%\%FILENAME%_old.rar
ren %DRIVE2ND%\%DIRNAME%\%FILENAME%_new.rar %FILENAME%.rar
ren %DRIVE2ND%\%DIRNAME%\%FILENAME%.rar %FILENAME%_old.rar
C:\Progra~1\1cv8\8.3.13~1\bin\1cv8.exe ENTERPRISE /F D:\HelperMedic
pause



