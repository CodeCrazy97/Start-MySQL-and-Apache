REM Go to the mysql data directory and delete the aria_log* file
REM This file prevents me from starting mysql (I have had this problem
REM on at least two computers).
cd "C:\xampp\mysql\data"
for %%f in (aria_log.*) do (
	chmod 666 %%~f
    del /F %%~f
)

REM Start a powershell instance as administrator (may require user click a button)
REM The below batch file will restart httpd (i.e. the Apache server that 
REM allows you to access phpMyAdmin).
powershell -command "Start-Process taskkill_httpd.bat -Verb runas"

REM Start mysqld.exe
cd "C:\xampp\mysql\bin"
start mysqld.exe
exit