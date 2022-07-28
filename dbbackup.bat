echo %date%

set year=%date:~10,4%
set mnt=%date:~4,2%
set day=%date:~7,2%
set hr=%TIME:~0,2%
set min=%TIME:~3,2%

IF %day% LSS 10 SET day=0%day:~1,1%
IF %mnt% LSS 10 SET mnt=0%mnt:~1,1%
IF %hr% LSS 10 SET hr=0%hr:~1,1%
IF %min% LSS 10 SET min=0%min:~1,1%

set backuptime=%year%%mnt%%day%%hr%%min%
echo %backuptime%

:: SETTINGS AND PATHS 
:: Note: Do not put spaces before the equal signs or variables will fail

:: Name of the database user with rights to all tables
set dbuser=ashrafazmi

:: Password for the database user
set dbpass="Unitar@2022"

:: MySQL EXE Path
set mysqldumpexe="C:\xampp\mysql\bin\mysqldump"

:: Error log path - Important in debugging your issues --routines
set errorLogPath="C:\Backupdb\backup_log.txt"

%mysqldumpexe% -uashrafazmi -p%dbpass% -h 192.168.10.85 cms_backup --routines > C:\Backupdb\CMSBACKUP_AT_%backuptime%.sql

exit