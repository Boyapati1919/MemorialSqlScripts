@echo off
setlocal enabledelayedexpansion
set /p servername=Enter DB Servername :
set /p user=Enter SQL username :
set /p password=Enter Password :
set /p dbname=Enter Database Name :
set spath="%~dp0"
set hr=%time:~0,2%
if "%hr:~0,1%" equ " " set hr=0%hr:~1,1%
set logfilepath= %spath%\output_%date:~-4,4%%date:~-10,2%%date:~-7,2%_%hr%%time:~3,2%%time:~6,2%.log
echo ******Start %%G FILE****** >> %logfilepath%

FOR /R ""%spath%"\Scripts" %%G IN (*.sql) DO (
echo ******PROCESSING %%G FILE******
echo ******PROCESSING %%G FILE****** >> %logfilepath%
SQLCMD -S%servername% -U %user% -P %password% -d%dbname% -b -i"%%G" >> %logfilepath%
IF !ERRORLEVEL! NEQ 0 GOTO :OnError

)

GOTO :Success

:OnError
echo ERROR ERROR ERROR
echo One\more script(s) failed to execute, terminating bath.
echo Check output.log file for more details
pause
EXIT /b
 
:Success
echo ALL the scripts deployed successfully!!
pause
EXIT /b

