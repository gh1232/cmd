@echo off
rem run taskshed maybe admin too 
set to=9
set pinged=192.168.1.1
set pinged2=github.com
set ssi=dlr
set intf=Wi-Fi
set nam=dlr
set msg=
if not "[%1]" == "[]" (
netsh wlan show networks
pause
    netsh wlan show profile
pause 
    netsh wlan show interfaces
pause 
    netsh wlan connect ssid=%ssi% Name=%nam% Interface=%intf%
)
if "[%1]" == "[]" (
   rem  netsh wlan disconnect interface=%intf%

    REM Restart Wireless Connection
    REM Don’t restart if ping works.
    ping -n 1 %pinged2%
    echo wifi.restarted: %date% %time% ghping  >> c:\a\wifi.restarted
    if %errorlevel% EQU 0 goto end
    msg=%msg% ghping
    rem netsh wlan disconnect ssid=%ssi% Name=%nam%  
    rem interface=%intf%
    TIMEOUT %to%
    netsh wlan connect ssid=%ssi% Name=%nam% 
   rem  Interface=%intf%
    echo wifi.restarted: %date% %time% %msg% wc  >> c:\a\wifi.restarted

    TIMEOUT %to%
    ping -n 1 %pinged2%
    if %errorlevel% EQU 0 goto end
    
    echo wifi.restarted: %date% %time% %msg% ir  >> c:\a\wifi.restarted
    ipconfig /renew 

    TIMEOUT %to%
    ping -n 1 %pinged2%
    if %errorlevel% EQU 0 goto end
    
    echo wifi.restarted: %date% %time% %msg% lo  >> c:\a\wifi.restarted
    shutdown /r /t 0

)
    :end

