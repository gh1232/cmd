@echo off 
    set /p user="user:"
rem    set /p pwd="password:"
rem    runas /u:%user% /p:%pwd% %*
 runas /u:%user%  %*
