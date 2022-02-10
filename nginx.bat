taskkill /im nginx.exe /f 
cd  c:\a\nginx-1.18.0\nginx-1.18.0
start /b nginx.exe
IF %ERRORLEVEL% NEQ 0 (
  echo failed
  pause
)
