cd "C:\xampp\apache\bin"

tasklist|sort

taskkill /F /IM httpd.exe

REM Now start httpd.exe

httpd -k start 
exit