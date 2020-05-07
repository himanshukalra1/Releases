@ECHO OFF
ECHO ********************************************************************* 
ECHO.
ECHO ** upgrade.bat upgrades Database
ECHO ** Usage: upgrade.bat "user" "password" "server name" "database_name"
ECHO.
ECHO *********************************************************************

SET user=%1
SET pwd=%2
SET svname=%3
SET dbname=%4

ECHO *** Executing the table scripts
sqlcmd  -U %user% -P %pwd% -S %svname% -d %dbname% -b -i Tables.sql  >> output.txt

if errorlevel 1 goto Error 

ECHO *** Executing the extra table scripts
sqlcmd  -U %user% -P %pwd% -S %svname% -d %dbname% -b -i Modify.sql  >> output.txt

if errorlevel 1 goto Error

ECHO *** Executing the default scripts
sqlcmd  -U %user% -P %pwd% -S %svname% -d %dbname% -b -i Defaults.sql  >> output.txt

if errorlevel 1 goto Error 

ECHO *** Executing the stored procedures
sqlcmd  -U %user% -P %pwd% -S %svname% -d %dbname% -b -i Merged.sql  >> output.txt

if errorlevel 1 goto Error 

goto Sucess 

:Error
ECHO Error!!!! Please correct the Error mentioned in file  output.txt  to proceed Further 
goto End

:Sucess 
ECHO.
ECHO Finished. All the scripts are executed sucessfully.
ECHO.

:End
