REM Go to location of the httpd.exe process.
cd "C:\xampp\apache\bin"

REM Stop any already running instance of httpd.exe
taskkill /F /IM httpd.exe

REM Now start httpd.exe
httpd -k start 

exit