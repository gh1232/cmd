#SingleInstance force 
#f3:: run cmd /k "dir "
>!f10:: run cmd /k "dir"
>!+f10:: run powershell
>!>^f12:: edit
>!f11:: run explorer c:\grub2
>!f12:: run c:\a\vim82\gvim.exe c:\grub2\grub.cfg
>!+f12:: reload  
^f4:: winclose, A
^f3:: winmaximize, A
^f2:: winminimize, A
^f1:: run c:\a\putty\lockkeyb.bat 
!f1:: shutdown /l 
!f2:: shutdown /r 
^f5:: run firefox 
^f6:: run chrome
^+f7::  edit
^f8::  reload
^f9:: run cmd
^f10:: run powershell
^f7::    run c:\a\Vim8\vim82\gvim.exe --noplugin "%A_ScriptFullPath%"
^f12:: run c:\a\
^+f12:: run taskmgr
^f11:: run notepad
^+f11:: run c:\a\Vim8\vim82\gvim.exe 
!f6:: run explorer c:\a 
;winvnc -sc_prompt -sc_exit -id:1234 -connect repeaterhost -run
f9:: run "c:\a\ultravnc\winvnc" -autoreconnect -connect 192.168.1.2
!^f9:: run "c:\a\ultravnc\winvnc" -autoreconnect -connect 192.168.1.2
f10:: run "c:\a\ultravnc\winvnc" -autoreconnect -id:12 -connect 192.168.1.3
f11:: run "c:\a\ultravnc\winvnc" -autoreconnect -id:123456789 -connect 192.168.1.3
;f12:: run "c:\a\ultravnc\winvnc"  -id:123456789 -autoreconnect -connect 192.168.1.3 -run 
;-autoreconnect ID:123456789 -connect 192.168.1.3:5500
;appskey:: run mstsc
f8:: run cmd /c "ipconfig|more"
Alt & LButton:: sendinput {appskey}
WheelDown:: sendinput {appskey}
;Win & LButton::mouseclick right
Control & LButton::appskey
mbutton:: sendinput {click 1}

;Alt & LButton:: sendinput {appskey}
;WheelDown:: sendinput {appskey}
;MButton:: sendinput {appskey}
;Win & LButton::mouseclick right
;Control & LButton::appskey
WheelUp::
click right
return
;MButton::
;click right
;return
;Click, middle
;MouseClick, middle
;Send, {MButton}
