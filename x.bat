@echo off 
set predir=c:\a\
if "%1" == "/a" (
  set /p user="user:"
  rem    set /p pwd="password:"
  rem    runas /u:%user% /p:%pwd% %*
  if "%2" == "/l" (
    shift   
    goto loginn
  ) else  (
    shift 
    runas /u:%user%  %*
  )
) else (

  if "%1" == "/l" (
    shift 
    goto loginn
  ) else (
    %*
  )
)


:loginn 
shift 

@echo off 
rem set nl=^

choice /t 20 /c pmrstuwao /d p /m "putty rdp uvnc mtelnet tvnc ssh arpa ping"
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

      %predir%WinSCP\WinSCP.exe %addr%
    ) else ( 
      if errorlevel 6  ( 

        "%predir%UltraVNC\vncviewer.exe"  %addr%
      ) else ( 
        if errorlevel  5 (
          %predir%Tight\tvnviewer.exe  %addr%
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

