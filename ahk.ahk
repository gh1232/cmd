#SingleInstance force

global predir :="c:\a\"

global msgb := "msgbox"

global wpx := 6
global wpy := 0
global wpw := A_ScreenWidth
global wph := A_ScreenHeight
global wmax :=""
global wpw44 := A_ScreenWidth - 40
getwpx(p){
  return (round(p * A_ScreenWidth)) 

}

getwpy(p){
  return (round(p * A_ScreenHeight)) 

}
getwph(p){
  return (round(p * A_ScreenHeight)) 

}
getwpw(p){
wpppp := (round(p * A_ScreenWidth)) 
         msgbox %wpppp% 
         return (round(p * A_ScreenWidth)) 

}
wmoveminus6x(x:=0,y:=0,w:=1,h:=1){

px := wpx + x 
      py := wpy + y 
      pw := A_ScreenWidth - w 
      ph := A_ScreenHeight - h

      WinMove,A,,%px%,%py%,%pw%,%ph%
}

wmoveminus(x:=0,y:=0,w:=0,h:=0){

px := 0 + x 
      py := 0 + y 
      pw := A_ScreenWidth + w 
      ph := A_ScreenHeight + h

      WinMove,A,,%px%,%py%,%pw%,%ph%
}
wmove(x:=0,y:=0,w:=1,h:=1){

px := wpx + (round(x * A_ScreenWidth)) 
      py := wpy +  (round(y * A_ScreenHeight)) 
      pw := (round(w * A_ScreenWidth)) 
      ph := (round(h * A_ScreenHeight)) 

      WinMove,A,,%px%,%py%,%pw%,%ph%
}

exec(cmd,cargs:="",pre:="")
{
  if (pre=""){
pre :=predir
  } else {

pre :=""
  } 
  ;msgbox %pre%%cmd% %cargs%
    run %pre%%cmd% %cargs%
    ;winwait 
    send {f2}
}









scrolllock::send {home}
delete:: send {pgup}
end:: send {pgdn}
+pause::send {end}
pgup::MouseMove, 0, -145,0,r
pgdn::mousemove,0,145,0,r
insert::mousemove,-145,0,0,r
home::mousemove,145,0,0,r
>^.::send !{click}
>!`::soundset, 0
>!1::soundset, 10
>!2::soundset, 20
>!3::soundset, 30
>!4::soundset, 40
>!6::soundset, 60 
>!5::soundset, 50  
>!7::soundset, 70
>!8::soundset, 80
>!9::soundset,90 
>!0::soundset,100
pause::SendInput, ^w
+scrolllock::sendInput, {scrolllock}
!lbutton::send ^{lbutton}^{tab}
Capslock::send ^{tab}
!^s:: send {#s}{!m}{s}{^s} 
>#\::send {Media_Next}
>#-::send {Media_Play_Pause}
f12::mouseclick right
shut(c,b){
t := 0 
if (b="s")
{
 t := c  
 bb := " s"
} else if (b="m")
{
 t := c * 60 
 bb :=" m"
} else if (b="h"){
 t := c * 60 * 60 
 bb :=" h"
} else 
{
}
gui, font, s32 cRed
Gui, +Resize
FormatTime, sdt,, ddd MMM dd yyyy HH:mm
Gui, Add, Text,,shutdown in %c% %bb% -- %sdt%
Gui, Show, x0 y0, time
SoundBeep  
tt := t * 1000
sleep %tt%
msgbox ,,, shutting down now restart to override ,2
sleep 3000
soundset, 0
run shutdown /s /t 2
}

>!>^-::run shutdown /r
>!>^`::run shutdown /r /t 1800
>!>^=::
run shutdown /a
msgbox shutdown aborted
return 
>!>^\:: shut(1,"m")
>!>^1:: shut(1,"h")
>!>^+1:: shut(10,"m")
>!>^+2:: shut(20,"m")
>!>^2:: shut(2,"h")
>!>^3:: shut(3,"h")
>!>^4:: shut(4,"h")
>!>^5:: shut(5,"h")
>!>^6:: shut(6,"h")
>!>^7:: shut(7,"h")
>!>^8:: shut(8,"h")
>!>^9:: shut(9,"h")
>#f12::
mousemove, 800, 300, 
FormatTime, TimeString, ,hmm MMM dd yyyy
formattime, ts, , ddd
gui, font, s32 cBlue
Gui, +Resize
Gui, Add, Text,,%ts% %TimeString% 
Gui, Show, x100 y500, time
sleep 3000
gui, minimize
;sleep 50000
SoundBeep  
gui, destroy
return

>#f:: 
send ^c
run %predir%freedler\fdm %clipboard%
return
#+c::
FormatTime, st,,h:m
n:=1
nn:=5
nnn:= 10
FormatTime, TimeStringa,,h:m
loop, %nnn%
{

SoundBeep  
FormatTime, TimeString,,h:m
gui, font, s32 cBlue
Gui, +Resize
Gui, Add, Text,, %A_Index% %st% %TimeString%
;msgbox,,, %A_Index% %st% %TimeString%,8
Gui, Show, x1030 y330, time
sleep, 3000
gui, destroy

sleep 57000

}
loop 10 
{
SoundBeep
}
FormatTime, TimeStringb,,h:m
gui, font, s40 cRed
msgbox,,, %A_Index% %st% %TimeStringa% %TimeStringb% ,3
return
f4:: send ^+r 
>^backspace:: send {Browser_Back}
>+backspace:: send  {Browser_Forward}
#f7:: 
 send ^c 
 
 fff="%clipboard%"
 
 run   %predir%vim82\gvim.exe -u c:\cmd\vimkeys.vim   -f %fff% 
 clipboard =
return
!#f7:: 
send {f10}
send {pgdown}
send {f10}
return	
#^f7:: 
global bbb 
if (bbb = 1){
   bbb = 0
   soundbeep
}
 else { 
   bbb = 1
   soundbeep
   soundbeep
}
return
printscreen:: winminimize, A
f9::
send ^!{tab}
sendmode input 
coordmode mouse , window 
MouseMove, 400 ,785 
return
f10::
send !{tab}
sendmode input 
coordmode mouse , relative 

;MouseMove, 400 ,720 
MouseMove, 445 ,877 
return
#f10::
send !{esc}					
;sendmode input 
;coordmode mouse , window 
;MouseGetPos,xpos,ypos
;Click 987,851
;MouseMove, 400 ,720 
return
; winmaximize, A
;;f1 f1:: msgbox hi q
;^f9:: winmove,a,,%wpx%,%wpy%,1450,%wph%
f2:: wmoveminus(0,0,-1,-1)
;winmaximize, A  
;winmove,a,,%wpx%,%wpy%,1450,%wph%
;winmaximize, A
>!+f1::
if WinActive "tor browser"
{
 ; random, ,100
 random,rand,0,20
 yy := 1430 - rand
 winmove,a,,%wpx%,%wpy%,%yy%,%wph%
 
} else {
winmaximize,A
}
return 
; WinMove,A,,%wpx%,%wpy%,1450,%wph% 
>#!^SPACE:: Winset, Alwaysontop, , A
wpw :=500 
>!f5:: wmove(0,0,.7,1) 

>#f8:: wmove(.63,.66,.32,.66)
>#!^f8::
  wmove(0,0,1,.7)
  send {>!f6^l}
  send {^l}
 return  
>#f6:: wmove(0,0.52,.32,.7) 
;>#f6:: wmove(0,0.5,1,.7) 
>!f6:: wmove(0,0,1,.7) 
;>!f6::WinMove,A,,%wpx%,%wpy%,%A_ScreenWidth%,700
>#f5:: wmove(0,0.37,.32,.66)
>#f7:: wmove(-.03,0.46,.32,.66)
>!f8:: wmove(0,.3,1,.7)
;>!f7::WinMove,A,,415,0,1050,%wph%
>!f7:: wmove(0.37,0,.63,1)

>!+f5:: wmove(0.67,0,.3,1)

>^f9:: wmove(0,0,.32,1) 

>^f6:: wmove(0,0.40,.32,.7) 

>^f7:: wmove(0,0.61,.32,.7) 

>^f5:: wmove(0,0.27,.32,.8) 
>^f8:: wmove(0,0,1,.775) 
;WinMove,A,,960,0,390,%wph%
>!+f6:: wmove(0,0.37,.32,.66)
>!+f8:: wmove(0,-.15,.3,.52)
;WinMove,A,,-100,0,390,700
;inMove,A,,0,430,300,500
>!+f7:: wmove(0,0,.3,.99)
;WinMove,A,,0,-260,390,500

>+f5:: winmove,A,,-140,570,772,376
>+f6:: winmove,A,,-150,-190,772,376
>+f7:: winmove,A,,970,-190,772,376
>+f8:: winmove,A,,970,531,772,376

>!>#f6:: winmove,A,,%wpx%,%wpy%,%A_ScreenWidth%,730
>!>#f5:: winmove,A,,%wpx%,%wpy%,1140,%wph%
>!>#f8:: winmove,A,,0,180,%A_ScreenWidth%,730
>!>#f7:: winmove,A,,300,0,1140,%wph%

f1:: winclose, A

>+~::  ; 20180728Jul28,Sat20180728Jul28 Sat
   FormatTime, CurrentDateTime,, yyyyMMddMMMdd''ddd-hhmmtt-'finthnote'   ; 20190222043950 oc20190222043955 20190222Feb22Fri
   SendInput %CurrentDateTime%
return
>+1::
   FormatTime, CurrentDateTime,, hhmm
   SendInput %CurrentDateTime%,1st&chknpsaltbeef
return
#!^>+2::
   FormatTime, CurrentDateTime,, hhmm
   SendInput %CurrentDateTime%,2nd&chknpsaltbeef
return

>+e::
   FormatTime, CurrentDateTime,, hhmm
   SendInput %CurrentDateTime%,3rd&chknpsaltbeef
return

>+i::
   FormatTime, CurrentDateTime,, hhmm
   SendInput %CurrentDateTime%pisfl2x10
return
>+l::
   FormatTime, CurrentDateTime,, hhmm
   SendInput %CurrentDateTime%loudfridgoff
return
>+n::
   FormatTime, CurrentDateTime,, hhmm
   SendInput %CurrentDateTime%bangup
return
>+c::
   FormatTime, CurrentDateTime,, hhmm
   SendInput %CurrentDateTime%chrup
return
>+g::
   FormatTime, CurrentDateTime,, hhmm
   SendInput %CurrentDateTime%grumbling
return
>+p::
   FormatTime, CurrentDateTime,, hhmm
   SendInput %CurrentDateTime%polsiren
return

>+x::
   FormatTime, CurrentDateTime,, hhmm
   SendInput %CurrentDateTime%choomup
return
>+m::
   FormatTime, CurrentDateTime,, hhmm
   SendInput %CurrentDateTime%boomup
return
>+k::
   FormatTime, CurrentDateTime,, hhmm
   SendInput %CurrentDateTime%closup
return
>+z::
   FormatTime, CurrentDateTime,, hhmm
   SendInput %CurrentDateTime%scrape
return
>+w::
   FormatTime, CurrentDateTime,, hhmm
   SendInput %CurrentDateTime%fart
return
!>+j::
   FormatTime, CurrentDateTime,, hhmm
   SendInput %CurrentDateTime%htron
return
>+7::
   FormatTime, CurrentDateTime,, hhmm
   SendInput habovnew
return
>+y::
   FormatTime, CurrentDateTime,, hhmm
   SendInput %CurrentDateTime%yawn
return
>+j::
   FormatTime, CurrentDateTime,, hhmm
   SendInput %CurrentDateTime%gungup
return
>+s::
   formattime, currentdatetime,, hhmm
   sendinput %currentdatetime%smbarkup
return
>+d::
   FormatTime, CurrentDateTime,, hhmm
   SendInput %CurrentDateTime%drbang
return
>+5::
   FormatTime, CurrentDateTime,, hhmm
   SendInput %CurrentDateTime%tap303.
return
>+6::
   FormatTime, CurrentDateTime,, hhmm
   SendInput %CurrentDateTime%dropup
return
>+9::
   FormatTime, CurrentDateTime,, hhmm
   SendInput %CurrentDateTime%drbang290.
return
>+8::
   FormatTime, CurrentDateTime,, hhmm
   SendInput %CurrentDateTime%drbang308.
return
>+3::
   FormatTime, CurrentDateTime,, hhmm
   SendInput %CurrentDateTime%drbangchutedrbang303.
return
>+2::
   FormatTime, CurrentDateTime,, hhmm
   SendInput %CurrentDateTime%3rd&chknbeefpsalt
return
>+4::
   FormatTime, CurrentDateTime,, hhmm
   SendInput %CurrentDateTime%drbang304.
return
>+f::
   FormatTime, CurrentDateTime,, hhmm
   SendInput %CurrentDateTime%drflap
return

>+b::
   FormatTime, CurrentDateTime,, hhmm
   SendInput %CurrentDateTime%bigbarkhw
return
>+v::
   FormatTime, CurrentDateTime,, hhmm
   SendInput %CurrentDateTime%vroom
return
>+o::

   FormatTime, CurrentDateTime,, hhmm
   SendInput %CurrentDateTime%fridgonvsl
return
>+u::

   FormatTime, CurrentDateTime,, hhmm
   SendInput %CurrentDateTime%burp
return
>+t::
   FormatTime, CurrentDateTime,, hhmm
   SendInput %CurrentDateTime%hwaytalk
return

>+r::
   FormatTime, CurrentDateTime,, hhmm
   SendInput %CurrentDateTime%rmfdelrsid 
return
>+q::
   FormatTime, CurrentDateTime,, hhmm
   SendInput %CurrentDateTime%==
return
>+a::
   FormatTime, CurrentDateTime,, hhmm
   SendInput %CurrentDateTime%airpl
return
;>#+f12:: msgbox booted at: %bootDa22teTime%
>+h::
   FormatTime, CurrentDateTime,, hhmm
   SendInput %CurrentDateTime%helic
return
>+f12::
   FormatTime, CurrentDateTime,, hhmm
   SendInput %CurrentDateTime%
return
>^+f12::
   FormatTime, CurrentDateTime,, yyyyMMddhhmmss
   SendInput %CurrentDateTime%
return
>!+f12::  ; 20180728Jul28,Sat20180728Jul28 Sat
   FormatTime, CurrentDateTime,,'soc'yyyyMMddhhmmss   ; It will look like 2010-12-21 0353hrs
   SendInput %CurrentDateTime%
return
>^f12::  ; 20180728Jul28,Sat20180728Jul28 Sat
   FormatTime, CurrentDateTime,, yyyyMMddMMMdd''ddd   ; 20190222043950 oc20190222043955 20190222Feb22Fri
   SendInput %CurrentDateTime%
return
!f9:: run c:\cmd\g.bat c:\cmd\rkeys.ahk 
!f10:: run c:\cmd\g.bat c:\cmd\keymenu.ahk 
!f11:: run c:\cmd\g.bat  c:\cmd\ahk.ahk 



^f9:: run c:\cmd\rkeys.ahk 
^f10:: run c:\cmd\keymenu.ahk 
^f11:: run c:\cmd\ahk.ahk 

#f11:: reload  
;#include rkeys.ahk
;#include keymenu.ahk
