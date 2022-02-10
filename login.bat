@echo off 
rem set nl=^

choice /t 20 /c ptrsvuwao /d p /m "putty  rdp ultra telnet vnc ssh arp ping"
echo %errorlevel%
if "%1" =="" (
set /p addr=address:
) else (
 set addr=192.168.1.%1  
)


if errorlevel 9  ( 
    
     ping  %addr%
    ) else ( 
if errorlevel 8  ( 
    
     arp -a   %addr%
    ) else ( 

if errorlevel 7  ( 
    
     h:\a\WinSCP\WinSCP.exe %addr%
    ) else ( 
if errorlevel 6  ( 
    
     "h:\a\uvnc bvba\UltraVNC\vncviewer.exe"  %addr%
    ) else ( 
    if errorlevel  5 (
      h:\a\TightVNC\tvnviewer.exe  %addr%
      ) else (
  if errorlevel  4  (
    set /p user="user:"
    ssh %user%@%addr%
    ) else ( 
  if errorlevel  3  (
    mstsc %addr%
    ) else ( 
  if errorlevel  2   (
    telnet %addr%
    ) else (
  if errorlevel  1   (
    putty %addr%
    ) else ( 
    echo error %errorlevel%
    )
  )
)
)
)
)
)
)
)

pause 
