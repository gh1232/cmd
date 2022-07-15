#SingleInstance force
global predir :="c:\a\"
global cmddir := "c:\cmd\"
global profdir := predir . "wb\prof\"
global dl := predir . "dl\"
global wpx := 6
global wpy := 0
global wpw := A_ScreenWidth
global wph := A_ScreenHeight
global wmax :=""
global wpw44 := A_ScreenWidth - 40
global ffox := "C:\Program Files\Mozilla Firefox\firefox.exe"
global ffpriv :=    " --private -profile puser "
;.ffglobal ffox := "c:\program files\mozilla firefox\firefox"
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

getwb(wb,num,wp)
{
	if (wb = "ep"){
		wbr = %predir%wb\ep%num%\application\epic.exe --user-data-dir=%profdir%%wp%
			return wbr
	} else if (wb = "op"){

		wbr =  %predir%wb\op%num%\opera.exe --user-data-dir=%profdir%%wp%
			return wbr

	} else {
		return "getwb nowb" 
	}

}
global bbb := 0
global we1 := wb("ep",1,"ep1")

global wep2 := wb("ep",2,"ep2")
global wep3 := wb("ep",3,"ep3")
global wep4 := wb("ep",4,"ep4")
global wep1y := wb("ep",1,"ep1y")
global wop1 := wb("op",1,"op1")
global wop2 := wb("op",2,"op2")
global wop3 := wb("op",3,"op3")
global wop4r := wb("op",4,"op4r")
global wop1t := wb("op",1,"op1t")

global wtbc  :=  wb("tb",1,"tbc")
global wtbmed  := wb("tb",1,"tbmed")

global wf := ffox . " " . ffpriv
;"C:\Program` Files\Mozilla` Firefox\firefox.exe -P pwf --allow-remote  -new-tab"
global ffwb := wf 

global wt := wb("tb",1,"") 
global wo00 :=   wb("op",0,"op0") 
global wo0 :=  wb("op",0,"op0") 
global woc:=  wb("op",1,"op1g")

global wot:=  wb("op",1,"op1t")

;msgbox  % wb("op",1,"op1g") 
global woch:= wb("op",1,"op1g") 
; wb("",,"")
global wo :=  woc 
global wosf :=  wot 

global we0 :=   wb("ep",0,"ep0")

global woy :=  wb("op",1,"op1y") 
global wey := wep1y 
global wech := wep2ch
global wm := "MicrosoftEdge"
global wb := wt
global twb := wb
global op1tv := wop1t 
global wotv := wb("op",1,"op1t")

; wop1t 
global word := wop3r 
global weyt := wep1y
global werd := wep3r 
global wt0 := wt 


global par := ""
global priv  := " -private "
global vwb :=  wop3r 
global k :=">!"
global ev := "g.bat"  
global env := "n.bat"  
global envq := "b.bat"  
global enpp := "npp\notepad++.exe"  
global ee24 := "emacs245\bin\emacs.exe"  
global ee245 := "emacs245\bin\emacs-24.5.exe"  
global ee24cw := "emacs245\bin\emacsclientw.exe"  
global ee24re := "emacs245\bin\runemacs.exe"  
global ee27 := "emacs\bin\emacs.exe"  
global ee271 := "emacs\bin\emacs-27.1.exe"  
global ee27cw := "emacs\bin\emacsclientw.exe"  
global ee27c := "emacs\bin\emacsclient.exe"  
global ee27re := "emacs\bin\runemacs.exe"  

global awtb1 := wb("tb",1,"tb1")
global awtb2 := wb("tb",2,"tb2")
global awtb3 := wb("tb",3,"tb3")
global awtb4 := wb("tb",4,"tb4")

global awep1 := wb("ep",1,"ep1")
global awep2 := wb("ep",2,"ep2")
global awep3 := wb("ep",3,"ep3")
global awep4 := wb("ep",4,"ep4")


global awop1 := wb("op",1,"op1")
global awop2 := wb("op",2,"op2")
global awop3 := wb("op",3,"op3")
global awop4 := wb("op",4,"op4")

>!f9::  run  %ev% "%cmddir%.emacs"
>#f9::  run  %ev% "%cmddir%vimkeys.vim"

>^!f9::  run  %ev% "%predir%AHKCommandPicker-1.3.1\AHKCommandPicker-1.3.1\src\Commands\urls.ahk"
>^#f9::  run  %ev% "%predir%AHKCommandPicker-1.3.1\AHKCommandPicker-1.3.1\src\Commands\urllauncher.ahk"
>^+f10:: run %ev% %cmddir%keymenu.ahk
>^f10:: run %cmddir%keymenu.ahk
>^#!f11:: edit
>#f11:: run %ev% c:\cmd\ahk.ahk 
>!f11:: run %ev% c:\cmd\aioahk.ahk 
>#+f11:: run %ev% c:\cmd\keymenu.ahk 
>!+f11:: run %ev% c:\cmd\rkeys.ahk 
>^+f11:: run %ev% %A_ScriptFullPath%
>^f11:: reload
>^#+f11:: run %ev% %cmddir%autohotkey.ahk 
>^#f11:: run %ev% %cmddir%aioahk.ahk 
>#^!f11:: exit


gourl(u)
{
	send ^l
		send ^a
		send ^c
		sleep 1000
		uu := clipboard
		uuu := u . uu
		send ^t
		send %uuu% 
}  
wb(b,num=0,wp="")
{


	if (b = "ep"){
		wbr = %predir%wb\ep%num%\application\epic.exe --user-data-dir=%profdir%%wp%
			return wbr
	} else if (b = "op"){

		wbr =  %predir%wb\op%num%\opera.exe --user-data-dir=%profdir%%wp%
			return wbr

	} else if (b = "tb"){
		if ( wp=""){

			wbr = %predir%wb\tb%num%\Browser\firefox.exe   
  return wbr 
		} else {

			wbr = %predir%wb\tb%num%\Browser\firefox.exe -P %wp%   
  return wbr 
		}

  return wbr 
	} else if (b = "ff"){

		if ( wp=""){
		;--allow-remote 
    wbr = ffox 
  } else { 
    wbr = ffox . " -P %wp%  -new-tab"
			return wbr
  } 
	} else if (b = "o")
	{
		return %wo%
			;  "%userprofile%\AppData\Local\Programs\Opera\launcher.exe " 
	} else if (b = "o0")
	{
		return %wo0%  
	} else if (b = "o2")
	{
		return %wop3r%  
	} else if (b = "ord")
	{
		return %word%  
	} else if (b = "otv")
	{
		return %wotv%  
	} else if (b = "erd")
	{
		return %werd%  
	} else if (b = "eyt")
	{
		return %weyt%  
	} else if (b = "e")
	{
		return %we%  
			;"%userprofile%\AppData\Local\Epic Privacy Browser\Application\epic.exe "  
	} else if (b = "t")
	{
		return  %wt%
	} else if (b = "f")
	{
		return %wf%

	} else if (b = "w")
	{
		return "G:\webbr\Waterfox\waterfox "

	} else if (b = "m")
	{
		return %wm%
	}
	else if (b = "p")
	{
		return "G:\webbr\Pale Moon\palemoon "
	} else if (b = "v")
	{
		return "%userprofile%\AppData\Local\Vivaldi\Application\vivaldi.exe  "
	}
	return ""
}
setwb(a,b,c,d:=0)
{
	global wb, priv, par
		wb := a 
		priv := c
		par := b

		if (d=1)
		{
			fire()
		}
	return
}
getscancode()
{
	SetFormat, Integer, Hex
		Gui +ToolWindow -SysMenu +AlwaysOnTop
		Gui, Font, s14 Bold, Arial
		Gui, Add, Text, w100 h33 vSC 0x201 +Border, {SC000}
	Gui, Show,, % "// ScanCode //////////"
		Loop 9
		OnMessage( 255+A_Index, "ScanCode" ) ; 0x100 to 0x108
		Return
}
ScanCode( wParam, lParam ) {
Clipboard := "SC" SubStr((((lParam>>16) & 0xFF)+0xF000),-2) 
		   GuiControl,, SC, %Clipboard%

}
fire(u:="", a :="", b := "", c :="", d := 2 )
{
	global bbb
		global wb, priv, par
		if (d = 2)
		{
			if (a = "")
			{

				;msgbox %wb%
					run %wb% %par% %priv% %u%  
			}
			else 
			{
				run %a% %b% %priv% %u% 
			}
			return
		}

	if ( a != "")
	{
wb := a 
	    priv := c
	    par := b
	}

	if (d=1)
		run %wb% %par% %priv% %u% ,, %wmax%
			return
			while (0)
			{
				if (b = "o" or bbb = 1)
				{
wb := %wo%
	    priv :=  " -private "
	    par := "" 
				}
				else if (b = "e")
				{
wb := %we%
	    priv := ""

				}
				else
				{
wb := %wf%
	    dpriv := 1
	    par := "-width 942 -height 700  "
	    ; par := "-width 942 -height 500  "
	    priv := " -private "
				}
			}
}
viv(u)
{
	run %userprofile%\AppData\Local\Vivaldi\Application\vivaldi.exe    %u%
}
opera(u)
{
	run %wo% %u% 
}
epic(u)
{
	run %we% -width 942 -height 500   %u%
}
global msgb := "msgbox"
scrolllock::send {home}
delete:: send {pgup}
end:: send {pgdn}
+pause::send {end}
pgup::MouseMove, 0, -145,0,r
pgdn::mousemove,0,145,0,r
insert::mousemove,-145,0,0,r
home::mousemove,145,0,0,r
!appskey::
mouseclick right
send t
;>+::^{tab}
;down::send {wheeldown}
;#{tab}::send ^!{tab}
q(u,b :="o") 
{
	gui, font, s20 cBlack
		Gui, +Resize
		Gui, Add, Text,, %u%
		;Gui, Show, x200 y400, 
		inputbox, k, %u%,%u% ,,400,200,200,500,
		uu=%u%%k%
			fire(uu,wb(b))
}
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
 ;msgbox %fff%
 
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
MouseMove, 400 ,720 
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
   SendInput %CurrentDateTime%,1st&eat
return
#!^>+2::
   FormatTime, CurrentDateTime,, hhmm
   SendInput %CurrentDateTime%,2nd&eat
return

>+e::
   FormatTime, CurrentDateTime,, hhmm
   SendInput %CurrentDateTime%,3rd&eat
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
   SendInput %CurrentDateTime%smyelpup
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
   SendInput %CurrentDateTime%clos303.
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
   SendInput %CurrentDateTime%loudup
return
>+t::
   FormatTime, CurrentDateTime,, hhmm
   SendInput %CurrentDateTime%hwaytalk
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
;f3:: Send, ^+!f
#include rkeys.ahk
;#include keymenu.ahk
