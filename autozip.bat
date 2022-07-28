@echo off  
  
Title autozip.bat  
  

REM modified by: Mohd Ashraf Bin Azmi
  
REM This script compresses files in a folder Note: files with the same name   
REM but with different extensions will be in the same archive.  
  
path=%path%;"C:\Program Files\WinRAR"
  
REM ****************** Folder to compress******************  
set dir=C:\Backupdb\
REM *******************************************************  
  
REM change to directory  
cd %dir%  
  
echo Folder to compress in *.rar format:  
echo %dir%  
  
echo Compressing files started....  
  
REM Compress files in directory individually without subdirectories.  
  
echo.  
FOR %%i IN (*.*) do (  
   rar a "%%~ni" "%%i"  
)  
goto eof  