REM Stop httpd.exe
cd "C:\xampp\mysql\data"
for %%f in (aria_log.*) do (
	chmod 666 %%~f
    del /F %%~f
)
powershell -command "Start-Process taskkill_httpd.bat -Verb runas"

REM Start mysqld.exe
cd "C:\xampp\mysql\bin"
start mysqld.exe
exit