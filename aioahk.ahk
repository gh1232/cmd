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
wmoveminus(x:=0,y:=0,w:=1,h:=1){
 
 px := wpx + x 
 py := wpy + y 
 pw := A_ScreenWidth - w 
 ph := A_ScreenHeight - h

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
global wop4 := wb("op",4,"op4")
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
global enpp := "%predir%npp\notepad++.exe"  
global ee24 := "%predir%emacs245\bin\emacs.exe"  
global ee245 := "%predir%emacs245\bin\emacs-24.5.exe"  
global ee24cw := "%predir%emacs245\bin\emacsclientw.exe"  
global ee24re := "%predir%emacs245\bin\runemacs.exe"  
global ee27 := "%predir%emacs\bin\emacs.exe"  
global ee271 := "%predir%emacs\bin\emacs-27.1.exe"  
global ee27cw := "%predir%emacs\bin\emacsclientw.exe"  
global ee27c := "%predir%emacs\bin\emacsclient.exe"  
global ee27re := "%predir%emacs\bin\runemacs.exe"  

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


>!#^+f1:: run %wo0%
>!#^+f2:: run %wt0%
>!#^+f3:: run %we0%

>!f1:: run %awop1%
>!f2:: run %awop2%
>!f3:: run %awop3%
>!f4:: run %awop4%

>#f1:: run %awtb1%
>#f2:: run %awtb2%
>#f3:: run %awtb3%
>#f4:: run %awtb4%

>^f1:: run %awep1%
>^f2:: run %awep2%
>^f3:: run %awep3%
>^f4:: run %awep4%


>^#+f1:: run %wep1%
>^#+f2:: run %wep2%
>^#+f3:: run %wep3%
>^#+f4:: run %wep4%

>!#+f1:: run %wop1%
>!#+f2:: run %wop2%
>!#+f3:: run %wop3%
>!#+f4:: run %wop4%

>#!1:: run %wopm0%
>#!4:: run I:\wb\opm0\opera.exe --user-data-dir=i:\wb\prof\opm04
>#!5:: run I:\wb\opm0\opera.exe --user-data-dir=i:\wb\prof\opm05
>#!6:: run I:\wb\opm0\opera.exe --user-data-dir=i:\wb\prof\opm06
>#!7:: run i:\wb\ep2\Application\epic.exe --user-data-dir=i:\wb\prof\ep27  
>#!8:: run i:\wb\ep2\Application\epic.exe --user-data-dir=i:\wb\prof\ep28  
	>#!9:: run i:\wb\ep2\Application\epic.exe --user-data-dir=i:\wb\prof\ep29  
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
	    ; "%userprofile%\AppData\Local\Programs\Opera\launcher.exe "
	    priv :=  " -private "
	    par := "" 
				}
				else if (b = "e")
				{
wb := %we%
	    ; "%userprofile%\AppData\Local\Epic Privacy Browser\Application\epic.exe " 
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
	;WinMove,A,,%wpx%,%wpy%,1450,725 
		; sleep 7000
		; winactivate, firefox
		;  send, {f11}{f9}
}
viv(u)
{
	run %userprofile%\AppData\Local\Vivaldi\Application\vivaldi.exe    %u%
		;WinMove,A,,%wpx%,%wpy%,1450,725 
		; sleep 7000
		; winactivate, firefox
		;  send, {f11}{f9}
}
opera(u)
{
	run %wo% %u% 
		; %userprofile%\AppData\Local\Programs\Opera\launcher.exe    %u%
		;WinMove,A,,%wpx%,%wpy%,1450,725 
		; sleep 7000
		; winactivate, firefox
		;  send, {f11}{f9}
}
epic(u)
{
	run %we% -width 942 -height 500   %u%
		; "%userprofile%\AppData\Local\Epic Privacy Browser\Application\epic.exe "
		;WinMove,A,,%wpx%,%wpy%,1450,725 
		; sleep 7000
		; winactivate, firefox
		;  send, {f11}{f9}
}
;f3::Send, {Ctrl up}{LWin}
;f3::Send ^{Esc}

;f$f3:: send ##
global msgb := "msgbox"
;#()
;f3:: %msgb%()
;>#delete:: %msgb%("ho") 
>!z:: run %ffox% %ffpriv% loblaws.ca
>!+z:: run %ffox% %ffpriv% essenceoflifeorganics.com 
>!\:: run "C:\Users\a\Desktop\Search Everything.lnk"
>#e:: run %ee27re% --load "%cmddir%.emacs" 
>#+e:: run %ee27re% --load %cmddir%init.el
;>#s::run %ee27re% --load "init.el"
>!>^+h:: run %predir%
>#t:: exec("tight\tvnviewer")
>!l:: run %cmddir%login.bat
>#+l::
soundset 20
run "%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\alockkeyboard.lnk" 
return
>!>#>^l:: run %userprofile%\AppData\local
>!>#>^r:: run %userprofile%\AppData\roaming
>!>#>^p:: run %userprofile%\AppData\local\programs
>!>#>^f:: run c:\program files 

>!>#>^g:: run c:\grub2
>!>#>^w:: run c:\windows
>!m:: run microsoft-edge:
>^+r:: fire("http://www.renseradioarchives.com/",woc)
>!+h:: fire("https://thehill.com/",wop3r)
>^!r:: fire("https://www.hilltimes.com/",wop3r)
>#y:: run microsoft-edge:https://www.youtube.com/
>!p:: run G:\game\PokerStars\PokerStarsUpdate.exe
scrolllock::send {home}
delete:: send {pgup}
end:: send {pgdn}
;rolllock:: send {end}
;>#home:: send {home}
;>#end:: send {end}
>!<!f:: fire("https://www.covers.com/sport/football/nfl/printsheet",wb("f"))
global uvncp:=5500
>#+u:: run "%predir%uvnc bvba\UltraVNC\vncviewer.exe" -dsmplugin SecureVNCPlugin.dsm -listen %uvncp%
>#u:: exec("UltraVNC\vncviewer.exe")
>#;:: gourl("walmart.ca/search/")
>^+l:: fire("https://www.youtube.com/results?search_query=news+live",wop2y)
;>!printscreen:: send {printscreen}
; http://routerlogin.net/ admin pw
>!a:: run %predir%AHK-Studio.ahk
>^a:: run %predir%AutoIt3\SciTE\SciTE.exe
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
;f3:: q("https://en.wikipedia.org/wiki/")
;%k%z:: msgbox ,, works

>!>^#+s:: run %ev% c:/users/z/desktop/bin2/search.html 
>!+>^p:: run "C:\Users\Public\Desktop\Advanced Port Scanner.lnk"
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
;send (){left}
>!0::soundset,100
; send ();{left}{left}
;>![:: send {{}{}}{left}
pause::SendInput, ^w
+scrolllock::sendInput, {scrolllock}
;f6::sendInput, >!
;scrolllock::sendinput, {esc}
>^+f1:: run "G:\a\ahk\AutoHotkey.chm"
>^+f:: fire("https://www.tvguide.com/listings/","op1t")
;>!g:: fire("https://frproxy.vpnbook.com/browse.php?u=PKnM7p4uPmM0fPpc2eVzXEyWnHwnlzaw9It1mqgH&b=0",wb("t"))
>^!+g:: fire("https://www.ontvtonight.com/guide/",op1t)
;>^k:: fire("https://www.kijiji.ca/h-city-of-toronto/1700273",wb("o"))
>!+a:: fire("https://ustvgo.tv/amc-live/",wb("otv"))
>^+a:: fire("https://ustvgo.tv/abc/",wb("otv"))
>^+c:: fire("https://ustvgo.tv/cbs/",wb("otv"))
>^!c:: fire("https://www.cbsnews.com/live/",wb("otv"))
>^+u:: fire("https://ustvgo.tv/usa-network-live/",wb("otv"))
>^+w:: fire("https://ustvgo.tv/we-tv",wb("otv"))
>^+b:: fire("https://ustvgo.tv/bbc-america-live/",wb("otv"))
>^<^+s:: fire("https://ustvgo.tv/syfy-channel-live/",wb("otv"))
>^+s:: fire("https://ustvgo.tv/sundance-tv/",wb("otv"))
>^+2:: fire("https://www.cp24.com/video?clipId=1921747",wb("m"))
>^+e:: fire("https://www.euronews.com/live",wb("otv"))
;>^+w:: fire("http://www.live-tv-radio.com/tv/europe.shtml",wb("o"))
>^!e:: fire("https://www.squidtv.net/europe/",wb("otv"))
;>^+a:: fire("https://abcnews.go.com/Live/",wb("o"))
>^+g:: fire("https://ustv247.tv/guide/index.html",wb("otv"))
;>^+u:: fire("https://ustv247.tv/",wb("o"))
>^+t:: fire("https://usatodaynews.live/us-news/",wb("otv"))
>^t:: fire("https://www.twitch.tv/directory",wb("otv"))
;>^+n:: fire("https://onlineradiobox.com/us/genre/news/",wb("o"))
;>^+c:: fire("https://www.cbsnews.com/live/video/",wb("o"))
>^+n:: fire("https://www.iheart.com/live/country/US/city/newyork-ny-159/?genreId=9",wb("otv"))
>#>+t:: fire("https://twitter.com/search-home",op3r)
;>^+o:: fire("https://www.kezi.com/livestream/",wb("o"))
>^+x:: fire("https://www.cbsnews.com/video/#x",wb("otv"))
>^h:: run %predir%sumatra\SumatraPDF-3.3-64.exe %userprofile%\AutoHotkey.chm
>^+h:: run %predir%sumatra\SumatraPDF-3.3-64.exe %predir%AutoIt3\AutoIt.chm
>!>^h:: run %userprofile%\AppData\Local\documentalist\Documentalist.exe
>#>!l:: run "%predir%console\Console2\Console.exe"
>#>^l:: run  "%predir%cmdrmini\Cmder.exe"
>!+r:: run %predir%TightVNC\tvnviewer.exe
;>#7:: run %predir%TightVNC\tvnviewer.exe -host=192.168.1.7 -password=yo
>#1:: fire("192.168.1.1",wb("f"))
>#+1:: fire("192.168.0.1",wb("f"))
>#>!2::  exec("putty\putty","user@192.168.1.2 -pw live")
>#>!3:: exec("putty\putty","user@192.168.1.3 -pw live")
>#>!4:: exec("putty\putty","user@192.168.1.4 -pw live")
>#>!5:: exec("putty\putty","user@192.168.1.5 -pw live")
>#>!6:: exec("putty\putty","user@192.168.1.6 -pw live")
>#>!7:: exec("putty\putty","user@192.168.1.7 -pw live")
>#>!8:: exec("putty\putty","user@192.168.1.8 -pw live")
>#>!9:: exec("putty\putty","user@192.168.1.9 -pw live")
;%predir%TightVNC\tvnviewer.exe -optionsfile="%userprofile%\Desktop\w3.vnc"

>#r:: exec("mstsc","","x")
>#+2:: exec("mstsc","/v:192.168.1.2  ","x")
>#+3:: exec("mstsc","/v:192.168.1.3  ","x")
>#+4:: exec("mstsc","/v:192.168.1.4  ","x")
>#+5:: exec("mstsc","/v:192.168.1.5  ","x")
>#+6:: exec("mstsc","/v:192.168.1.6  ","x")
>#+7:: exec("mstsc","/v:192.168.1.7  ","x")
>#+8:: exec("mstsc","/v:192.168.1.8  ","x")
>#+9:: exec("mstsc","/v:192.168.1.9  ","x")

>#2:: run %predir%TightVNC\tvnviewer.exe -optionsfile="%userprofile%\Desktop\w2.vnc"
>#3:: run %predir%TightVNC\tvnviewer.exe -optionsfile="%userprofile%\Desktop\w3.vnc"
>#4:: run %predir%TightVNC\tvnviewer.exe -optionsfile="%userprofile%\Desktop\w4.vnc"
>#5:: run %predir%TightVNC\tvnviewer.exe -optionsfile="%userprofile%\Desktop\w5.vnc"
>#6:: run %predir%TightVNC\tvnviewer.exe -optionsfile="%userprofile%\Desktop\w6.vnc"
>#7:: run %predir%TightVNC\tvnviewer.exe -optionsfile="%userprofile%\Desktop\w7.vnc"
>#8:: run %predir%TightVNC\tvnviewer.exe -optionsfile="%userprofile%\Desktop\w8.vnc"
>#9:: run %predir%TightVNC\tvnviewer.exe -optionsfile="%userprofile%\Desktop\w9.vnc"
>^l:: run %predir%TightVNC\tvnviewer.exe -listen 5000
;fire("https://mail.rediff.com/cgi-bin/login.cgi",wb("f"))
;>!+g:: fire("https://accounts.google.com/signin/v2/identifier?service=mail&passive=true&rm=false&continue=https%3A%2F%2Fmail.google.com%2Fmail%2F&ss=1&scc=1&ltmpl=default&ltmplcache=2&emr=1&osid=1&flowName=GlifWebSignIn&flowEntry=ServiceLogin",wb("f"))
;>!+d:: fire("http://dropbox.com",wb("f"))
>!+e:: fire("https://authentication.td.com/uap-ui/index.html?consumer=easyweb&locale=en_CA#/login/easyweb-getting-started",wb("f"))
;>!+b:: fire("http://box.com",wb("f"))
;>!+s:: fire("http://sync.com",wb("f"))
>!+p:: fire("http://pcloud.com",wb("f"))
;>!+m:: fire("http://mega.nz",wb("f"))
;>!+:: fire("",wb("f"))
;>#>^+/::  fire("%userprofile%\Desktop\bin2\finance.html",wb("o"))
;>!+/::  fire("https://gh1232.github.io/search.html",wb("o"))
>#/::  fire("file:///c:/users/z/desktop/bin2/search.html",wb("t"))
;>#^n::  fire("%userprofile%\desktop\bin2\news.html",wb("t"))
>^/::  fire("file:///u:\d\newslinks.html",wb("t"))
>!>^/::  fire("%userprofile%\Desktop\bin2\surf.html",wb("t"))
;>!>!/::  fire("%userprofile%\Desktop\bin2\email.html",wb("o"))
>!+d:: run  %ffox%  %ffpriv% "https://www.draftkings.com/mycontests"
;>^+,:: fire("https://speedof.me/",wb("f"))
>^,:: fire("https://fast.com/",wb("f"))
>!^,:: fire("http://speedtest.xfinity.com/",wb("f"))
>^+,:: fire("http://www.speedtest.net/",wb("f"))
>+!,:: fire("https://www.bandwidthplace.com/",wb("f"))
;>^+p:: fire("https://patents.google.com/?q=")
>#h:: exec( "ssh"," root@192.168.1.3 ")
>#p:: exec( "putty\putty"," root@192.168.1.3 ")
;>#[:: run %windir%\System32\cmd.exe /c start shell:AppsFolder\Microsoft.MicrosoftEdge_8wekyb3d8bbwe!MicrosoftEdge -private
;>#p:: run "C:\Users\Public\Desktop\PuTTY (64-bit).lnk"
>!r:: exec("mstsc","/f ","x")
;/>#>!>^b:: run %cmddir%
>#>!>^+q:: run c:\windows\temp
>#>!>^+t:: run %userprofile%\appdata\local\temp
>#>!m:: fire("https://www.makeuseof.com/")
;>#>!h:: fire("https://www.howtogeek.com/")
>#>+p:: fire("https://pcoptimum.ca")
>#w:: run "G:\a\wifiscan\WifiInfoView.exe"
>#^w:: run "G:\a\wlman\WirelessNetView.exe"
>#+w:: run G:\view\Wireshark\wireshark
>#>^+r:: run J:\elec  
>#>^>!+u:: run I:\upl
;>#>^>!g:: run G:\
>#>^>!m:: run m:\a
>#!^f12::
sel := ["e","emacs"]
kkk := ["e","x"]
ifmt := ""
gui new,, select
gui font,s20,arial
for i,e in sel
{
gui add,text,,%e%

}
for i, e in kkk
{
if (%ifmt%=="")
{
ifmt := %e%
}
else 
{
ifmt .= "," . %e%
}
}
msgbox %ifmt%
gui show
input seled, l1 c ,, %fmt%

return
;appskey::send #
;lalt::alt
>#^l:: run "%predir%cmdrmini\Cmder.exe"
>#!l:: run "%predir%console\Console2\Console.exe"
>^>#f9:: run "%predir%AHKCommandPicker-1.3.1\AHKCommandPicker-1.3.1\src\AHKCommandPicker.ahk"
;>^f7::    Run %predir%vim82\gvim.exe -u c:\cmd\vimkeys.vim  --noplugin "%A_ScriptFullPath%"
;>^f9:: run %predir%vim82\gvim.exe -u c:\cmd\vimkeys.vim  --noplugin "%userprofile%\desktop\bin2\myruns.ahk"
;>^f10::    Run %predir%vim82\gvim.exe -u c:\cmd\vimkeys.vim  --noplugin "%predir%AHKCommandPicker-1.3.1\AHKCommandPicker-1.3.1\src\Commands\MyCommands.ahk"
>#>^>!u:: run u:\d
>#>!>^c::run c:\
>#>!>^b::run %userprofile%\desktop\bin2
>#>!>^+b::run %cmddir%
>#>!>^+e:: run j:\elec  
>#>^>!t:: run m:\tftp
>#>^>!a:: run G:\appdl
>#>!>^h:: run H:\dl
>#>^>!z:: run %userprofile%
>#>^>!i:: run F:\iso
 
>#>^>!d:: run %userprofile%\desktop 
>#>^>!+d:: run %dl% 
>#>^>!v:: run %predir%vim8
>#>^>!e:: run %userprofile%\AppData\Roaming\.emacs.d
>#>^>+i:: run %predir%vim82\gvim.exe -u c:\cmd\vimnkeys.vim %userprofile%\AppData\Roaming\.emacs.d\init.el
>#>^>+e:: run %predir%vim82\gvim.exe -u c:\cmd\vimkeys.vim   "%userprofile%\AppData\Roaming\.emacs" 
>#>^>+s:: run %predir%vim82\gvim.exe -u c:\cmd\vimkeys.vim   "%userprofile%\AppData\Roaming\.emacs.d\.spacemacs.d\init.el"
>#>^>!+w:: run %userprofile%\AppData\Roaming\Microsoft\Windows
>#>^>!s:: run %userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
;>^1:: fire("",wb("o"))

>^+o:: fire("https://ustvgo.tv/one-america-news-network/",wb("otv"))
>^+m:: fire("https://www.tvguide.com/listings/#movies",op1t)

;>^6:: fire("http://player.680news.com/",wb("o"))
>^6:: fire("https://gem.cbc.ca/live/1961983043633",wb("m"))
>^+6:: fire("https://gem.cbc.ca/",wb("m"))
>^7:: fire("https://www.cbc.ca/player/news/tv%20shows/the%20national",wb("m"))
>^2:: fire("https://www.iheart.com/live/cp24-7796/",wb("f"))
>^1:: fire("https://www.iheart.com/live/ctv-news-7798/",wb("f"))
>^+9:: fire("https://www.iheart.com/live/country/CA/city/toronto-on-584/",wb("f"))
;>^1:: fire("",wb("o"))
;>^1:: fire("",wb("o"))
>^4:: fire("https://www.cbc.ca/player/play/2670346028",wb("m"))
;>^9:: fire("https://www.ctvnews.ca/live?autoPlay=true",wb("m")) 
;fire("https://www.iheart.com/podcast/962-ctv-news-toronto-at-six-po-53782987/episode/ctv-news-at-six-for-april-61894489/",wb("o"))
>^3:: fire("http://worldradiomap.com/list/",wb("otv"))
>^+3:: fire("worldradiomap.com/ca/toronto",wb("otv"))
;fire("https://www.cbc.ca/player/play/1711321155969",wb("o"))
>^+5:: fire("https://www.cbc.ca/",wb("m"))
>^5:: fire("https://www.cbc.ca/player/play/1961983043633",wb("m"))
>^0:: fire("https://toronto.ctvnews.ca/video?clipId=1899996",wb("m"))
;>^8:: fire("https://www.ctvnews.ca/video?binId=1.810415",wb("o"))
>^8:: fire("https://www.iheart.com/live/iheart80s-radio-5060/",wb("m"))
;>^+2:: fire("https://www.iheart.com/live/2010s-the-decade-8465/",wb("m"))
>^+7:: fire("https://www.iheart.com/live/iheart2010s-radio-8478/",wb("m"))
>^9:: fire("https://www.iheart.com/live/b-1073-6731/",wb("m"))

;>^+1:: fire("https://www.ctvnews.ca/live?autoPlay=true",wb("m"))
>^+1:: fire("https://www.ctvnews.ca/ctv-national-news",wb("m"))
;>^+7:: fire("https://toronto.ctvnews.ca/video?clipId=1899996",wb("o"))
;>^7:: fire("https://toronto.ctvnews.ca/video?clipId=1899996",wb("o"))
>^+8:: fire("https://www.iheart.com/live/2010s-the-decade-8465/",wb("m"))
;>^g:: fire("https://www.google.ca/")
;>^1:: fire("",wb("o"))
>^m:: fire("https://www.google.ca/maps/@43.6314075,-79.3941305,14z")
>^w:: fire("https://www.wikipedia.org/")
;>#+1:: fire("http://www.pof.com/basicsearch.aspx?iama=m&minage=18&maxage=24&seekinga=f&ethnicity=0&sorting=0&miles=35&country=17&imagesetting=0&page=1&count=600")
;>#+2:: fire("http://www.pof.com/basicsearch.aspx?iama=m&minage=44&maxage=74&z_code=M5T3A4&body=4_5&seekinga=f&ethnicity=0&sorting=0&miles=35&country=17&imagesetting=0&page=1&count=600")
;>^+r:: fire("https://toronto.craigslist.ca/search/w4m")
>^r:: fire("https://toronto.craigslist.ca/search/cas/?query=w4m")
>^f:: fire("https://toronto.craigslist.org/d/free-stuff/search/zip")
; https://toronto.craigslist.ca/search/sss
;https://toronto.craigslist.ca/d/computer-parts/search/syp
;https://toronto.craigslist.ca/d/computers/search/sya
>^c:: fire("https://toronto.craigslist.org/d/computers/search/sya")
>^s:: fire("https://toronto.craigslist.org/search/sss/")
>!+6:: fire("https://www.youtube.com/user/dayflirts/videos",otv)
>!+9:: fire("https://www.twitch.tv/saracantaloupes/videos",otv)
>!+8:: fire("https://www.instagram.com/saraparah/",op3r)
>!+0:: fire("https://twitter.com/sara_parah",op3r)
;fire("https://www.youtube.com/channel/UC2lIa5vJrEx8nBOA90hfIMA/videos",vwb)
>!+7:: fire("https://www.youtube.com/user/JustinWayneDating/videos",vwb)
>!+[:: fire("https://www.youtube.com/user/SimplySaranade/videos",vwb)
>!+5:: fire("https://www.youtube.com/user/itsmeSTEPANKA/videos",vwb)
>!+4:: fire("https://www.younow.com/StepankaMatto",vwb)
>!+3:: fire("https://www.youtube.com/user/OGpuzik/videos",vwb)
>#a:: fire("http://www.wolframalpha.com/")
>^b:: fire("https://www.youtube.com/user/ThunderboltsProject/videos",vwb)
>!i:: fire("https://www.igdb.com/discover",op3r)
;>^h:: fire("https://www.instagram.com/heatherjrock/?hl=en")
>^d:: fire("https://duckduckgo.com/")
>!s:: fire("thesocial.ca/",vwb)
>!w:: fire("https://duckduckgo.com/?t=ffab&q=weather+&ia=weather",wb("m"))
;fire("https://www.startpage.com/#q=toronto+weather&*")
;>!+y:: fire("https://login.yahoo.com/m?.src=ym&.lang=en-US&.intl=us&.done=https%3A%2F%2Fmail.yahoo.com%2Fd",wb("f"))
;>!+r:: fire("https://mail.rediff.com/cgi-bin/login.cgi",wb("f"))
;>!+g:: fire("https://www.gmail.com",wb("f"))
;>^p:: fire("https://www.ncbi.nlm.nih.gov/pubmed/")
>!>^d:: fire("https://www.dropbox.com/login",wb("f"))
>!>^+d:: fire("https://www.dropbox.com/login",wb("o"))
>#+p:: run G:\game\PokerStars\PokerStars.exe
;^f12:: exitapp
f9:: send !^{tab}
>#m:: run g:\webbr\pale moon\Palemoon.exe
>!x:: fire("https://xhamster.com/search.php?from=&q=busty+&qcat=video",wb("o1"))
;>^e::run C:\Users\Grandpa\Desktop\z\b\emacs\emacs\bin\runemacs.exe -fg white -bg black -fs  -g 700x240+0+0
;>#p:: run "%userprofile%\AppData\Local\Epic Privacy Browser\Application\epic.exe"
>^o:: fire("duckduckgo.com",wb("e"))
;H:\b\vivaldi\Application\vivaldi.exe  
;run "C:\Program Files (x86)\Microsoft Visual Stu1dio 10.0\Common7\IDE\VCExpress.exe"
;>^i::run iexplore
;>!c::run  C:\Users\Grandpa\Desktop\z\b\chromium\chrome-win32\chrome.exe
;>^+l:: fire("%userprofile%\Desktop\bin2\login.html",wb("f")) 
;#^v::run c:\Windows\Speech\Common\sapisvr.exe
;>^b:: run C:\Users\Public\Downloads\boot.iso
;>^v:: run "C:\Program Files\Oracle\VirtualBox\VirtualBox.exe"
;>!r:: run "C:\Users\Grandpa\Desktop\z\a\r31\bin\x64\Rgui.exe"
;>#n:: run notepad 
;run "C:\Users\Grandpa\Desktop\z\a\netw\64-bit\networx.exe"
>#+a:: run G:\chess\arena_3.5.1\arena
!lbutton::send ^{lbutton}^{tab}
Capslock::send ^{tab}
!^s:: send {#s}{!m}{s}{^s} 
;run C:\Windows\System32\SoundRecorder.exe
>#\::send {Media_Next}
>#-::send {Media_Play_Pause}
>#=::run  "%userprofile%\Music\Playlists\all.wpl"
>!=::run "%userprofile%\Music\Playlists\a.wpl"
;#!z::run C:\Users\Grandpa\Desktop\z
f12::mouseclick right
>!/:: run C:\windows\system32\snippingtool 
>!,:: run C:\windows\system32\snippingtool /clip
>!.:: 
   FormatTime, CurrentDateTime,, yyyyMMddhhmmss
run %predir%nircmd-x64\nircmd savescreenshot z:\%CurrentDateTime%.png
run cmd /k "copy z:\%CurrentDateTime%.png n:\screenshots\%CurrentDateTime%.png && dir n:\screenshots\%CurrentDateTime%.png "
;run cmd /c move z:\shot.png z:\%CurrentDateTime%.png
;run cmd /c "pause && copy z:\%CurrentDateTime%.png   n:\screenshots\%CurrentDateTime%.png "  
; run cmd /k "dir n:\screenshots\%CurrentDateTime%.png" 
 run z:\%CurrentDateTime%.png 
   return
>!?:: 
 run C:\windows\system32\snippingtool
 send {#s}
;pause 2 
 send {!m}
; pause 2
send {s}
;pause 2
send {^s} 
return 
>#.::run G:\fileman\qd63\Q-Dir\q-dir.exe
>#z:: run g:\fileman\7z\7zfm
;#v:: run "C:\Program Files\Hewlett-Packard\HP MediaSmart\SmartMenu.exe"
;#!7:: run C:\Users\Public\Downloads\7z\7zFM.exe
>!>#>^+g:: run  %predir%vim82\gvim.exe -u c:\cmd\vimkeys.vim   c:\grub2\grub.cfg
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

>!>^0::run shutdown /r
>!>^`::run shutdown /r /t 1800
>!>^-::
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
;<#<^q::
; FormatTime, TimeString
;msgbox,,,  %TimeString%,30
; run netstat -e
; run shutdown /s
;return
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

;#!r::run \Users\Grandpa\Desktop\z\feeddaemon\FeedDemon.exe
f4:: send ^+r 
;send { wheeldown 1.5}
;f3:: send { pgup }
;:: send {home}
>^backspace:: send {Browser_Back}
>+backspace:: send  {Browser_Forward}
#f7:: 
 send ^c 
 
 fff="%clipboard%"
 ;msgbox %fff%
 
 run   %predir%vim82\gvim.exe -u c:\cmd\vimkeys.vim   -f %fff% 
 clipboard =
return
;;f2:: send { pgup }
;;f5:: send { wheeldown }

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
; Send {Volume_Down 3} 
;f8:: send !{esc}
printscreen:: winminimize, A
;send #^{tab}
f10:: send !{tab}					
; winmaximize, A
;;f1 f1:: msgbox hi q
;^f9:: winmove,a,,%wpx%,%wpy%,1450,%wph%
f2:: wmoveminus(-2,0,0,-5)
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
>#SPACE:: Winset, Alwaysontop, , A
>^f8::
Winset, Alwaysontop, , A
winmove,A,,940,600,772,476
return 
>^f7::
Winset, Alwaysontop, , A
winmove,A,,940,-215,772,476
return 
>^f6::
Winset, Alwaysontop, , A
winmove,A,,-170,-215,772,476
return 
;>!>#f7:: winmove,A,,0,531,772,376
wpw :=500 
>!f5:: wmove(0,0,.7,1) 


>#f6:: wmove(0,0.54,.32,.7) 
;>#f6:: wmove(0,0.5,1,.7) 
>!f6:: wmove(0,0,1,.7) 
;>!f6::WinMove,A,,%wpx%,%wpy%,%A_ScreenWidth%,700
>!f8:: wmove(0,.3,1,.7)
;>!f7::WinMove,A,,415,0,1050,%wph%
>!f7:: wmove(0.37,0,.63,1)

>!+f5:: wmove(0.67,0,.3,1)

;WinMove,A,,960,0,390,%wph%
>!+f6:: wmove(0,0.37,.32,.66)
>!+f8:: wmove(0,-.15,.3,.52)
;WinMove,A,,-100,0,390,700
;inMove,A,,0,430,300,500
>!+f7:: wmove(0,0,.3,.5)
;WinMove,A,,0,-260,390,500

>+f5:: winmove,A,,-140,570,772,376
>+f6:: winmove,A,,-150,-190,772,376
>+f7:: winmove,A,,970,-190,772,376
>+f8:: winmove,A,,970,531,772,376

;>^>#f6:: winmove,A,,%wpx%,%wpy%,%A_ScreenWidth%,730
>!>#f6:: winmove,A,,%wpx%,%wpy%,%A_ScreenWidth%,730
>!>#f5:: winmove,A,,%wpx%,%wpy%,1140,%wph%
>!>#f8:: winmove,A,,0,180,%A_ScreenWidth%,730
>!>#f7:: winmove,A,,300,0,1140,%wph%


;>^>#f7:: winmove,A,,%wpx%,%wpy%,%A_ScreenWidth%,733
;>^>#f5:: winmove,A,,%wpx%,%wpy%,1140,%wph%
;>^>#f8:: winmove,A,,%wpx%,%wpy%,%A_ScreenWidth%,680
;>!>#f8:: winmove,A,,0,431,772,476
;>!>#f8:: winmove,A,,0,351,720,555
;>!>#f7:: winmove,A,,755,337,720,555
;>^>#f5:: winmove,A,,%wpx%,%wpy%,%A_ScreenWidth%,570
;>!>#f11:: winmove,A,,0,400,650,650
;>!>#f12:: winmove,A,,0,400,650,650
;>^#+f6:: winmove,A,,0,400,650,650
;>^#+f7::WinMove,A,,0,350,700,650
;>#^+f7:: winmove,A,,400,290,650,650
;>#^+f8:: winmove,A,,640,290,650,650
;>#^+f5:: winmove,A,,0,290,650,650
;>!^#+f7::WinMove,A,,400,350,700,650
;>!^#+f8:: winmove,A,,700,400,650,650
;>!#^+f8::WinMove,A,,700,350,700,650
;<^f10::WinMove,A,,%wpx%,%wpy%,900,650 
;>!+f8::winmove,A,,0,500,%wph44%,%wph%
;>!>+f9::winmove,A,,0,500,%wph44%,%wph%
;>!+f7::WinMove,A,,700,0,750,%wph% 
;>!>^f5::WinMove,A,,%wpx%,%wpy%,900,%wph%
;>!^+f5::WinMove,A,,%wpx%,%wpy%,950,%wph%
;>!+f5::WinMove,A,,%wpx%,%wpy%,700,%wph%
;>!+f6::WinMove,A,,600,0,900,%wph%
;>!f2::WinMove,A,,%wpx%,%wpy%,850,%wph%
;>!^+f8::WinMove,A,,%wpx%,%wpy%,1100,%wph%
;>!^+f5::WinMove,A,,%wpx%,%wpy%,1100,%wph%
;>!f8::WinMove,A,,550,0,900,%wph%
;>!+f6::WinMove,A,,940,0,480,%wph%
;>!^f1::run  "G:\a\ahk\AU3_Spy.exe"
;>!^f6::WinMove,A,,735,0,711,626
;>!^f7::WinMove,A,,735,0,711,%wph%
;>!+f7::WinMove,A,,800,0,650,%wph%
;>#^f5::WinMove,A,,0,250,900,500
;>#^f7::WinMove,A,,550,250,900,500
;>#^f6::WinMove,A,,300,250,900,500
;>^>#>+f5::WinMove,A,,550,0,900,%wph%
;>^>!f7::WinMove,A,,750,0,700,%wph%    
;>!>^+f5::WinMove,A,,%wpx%,%wpy%,750,%wph% 
;>!>#+f6::winmove,a,,%wpx%,%wpy%,%wph44%,%wph%
f1:: winclose, A
;>#q:: run "%predir%Q-Dir_Portable_x64\Q-Dir\Q-Dir.exe"
;f2:: Send {Volume_Up 10}
>^p:: run  powershell
>^+p:: run  runas /user:hd\a powershell
;<^>^k:: run  powershell
>!+t:: fire("www.wtharvey.com")
>!+c:: fire("www.chessbase.com",woch)
>!c:: fire("www.chessbase.com",wech)
>!+g:: run %woch% www.chessgames.com,, max 
>!g:: fire("www.chessgames.com",wech)
;>!r:: fire("www.twitter.com")i--------------------
>#>!r:: run "G:\math\rs\bin\rstudio.exe"
>#>!+r:: run "G:\math\r33\bin\R.exe"
>^e:: fire("https://login.live.com/login.srf?wa=wsignin1.0&rpsnv=13&ct=1564777376&rver=7.0.6737.0&wp=MBI_SSL&wreply=https%3a%2f%2foutlook.live.com%2fowa%2f%3fnlp%3d1%26RpsCsrfState%3d2defb976-9a4e-fc2c-3a19-234384fb20cb&id=292841&aadredir=1&CBCXT=out&lw=1&fl=dob%2cflname%2cwld&cobrandid=90015",wb("f"))
;>#+y:: fire("https://duckduckgo.com/?q=&iax=videos&ia=videos#",wb("o"))
>!y:: fire("www.youtube.com",woy)
>^y:: fire("www.youtube.com",wep1y)
>^>#+y:: fire("https://epicsearch.in/search?",wb("e"))
>^>!+y:: fire("https://startpage.com/sp/search",wb("e"))
>#+y:: fire("https://duckduckgo.com/?q=&iax=videos&ia=videos",wb("e"))
>!+y:: fire("https://video.search.yahoo.com/search/video;_ylt=Awr9ImYt9lNfrkAAoiFXNyoA;_ylu=Y29sbwNncTEEcG9zAzEEdnRpZANBMDYxNV8xBHNlYwNwaXZz?p=&action=view",wb("e"))
;>^>+y:: fire("https://www.bing.com/videos/search?q=",wb("e"))
>^>+y:: fire("https://www.bing.com/videos/browsing?q=",wb("e"))
;>^y:: fire("www.youtube.com")
;>#y:: fire("www.youtube.com")
>!f:: run  %ffox%  %ffpriv% 
>!+f:: run  %ffox% 
;fire("", ffwb ," -newtab -fullscreen ")
>#+f:: run "C:\Program Files\Mozilla Firefox\firefox.exe"
;>!k:: fire("http://www.k4it.de/index.php?topic=egtb&lang=en")
>#i:: run iexplore
>#c:: run control
>#!c:: run calc
>^j:: run %predir%cmdrmini\Cmder.exe
>^+j:: run runas /user:aio\a "%predir%cmdrmini\Cmder.exe"
;>^j:: run runas /user:aio\a "cmd "
>#[:: run runas /user:aio\a "netsh interface ip set dns name='Local Area Connection' static 208.67.222.222 "
;>!+j:: run runas /user:aio\a "cmd /k cd /d %userprofile%\desktop  "
;>^+j:: run runas /user:aio\a /savecred  "cmd  \"/k cd /d %userprofile%\desktop ""
>#>!>^k:: run taskkill /f /fi "status eq not responding"
>^+k:: run powershell.exe -Command "Start-Process cmd \"/k cd /d m:\a\" -Verb RunAs"
>^;:: run c:\a\clink\clink.bat   
>^k:: run cmd "/k cd /d %userprofile%\desktop "
>^i:: run %windir%\system32\WindowsPowerShell\v1.0\PowerShell_ISE.exe
>^+i:: run runas /user:aio\a "%windir%\system32\WindowsPowerShell\v1.0\PowerShell_ISE.exe "
>!t:: run %twb%,, max 
>!b:: fire("https://www.google.ca/search?q=busty+granny&ie=utf-8&oe=utf-8&gws_rd=cr&ei=t0pDWOaGLunZjwSa1LXYAw")
>#^n:: run notepad
>#!n:: run "%predir%npp\notepad++.exe"
;>#+c:: run calc
;!\:: run "%ProgramFiles(x86)%\Windows Media Player\wmplayer.exe /prefetch:1"
;#^e:: run explorer

>^+f9::  run  %ev% "%predir%AHKCommandPicker-1.3.1\AHKCommandPicker-1.3.1\src\Commands\urls.ahk"
>^#f9::  run  %ev% "%predir%AHKCommandPicker-1.3.1\AHKCommandPicker-1.3.1\src\Commands\urllauncher.ahk"
>^+f10:: run %ev% %cmddir%keymenu.ahk
>^f10:: run %cmddir%keymenu.ahk
>^#!f11:: edit
>^+f11:: run %ev% %A_ScriptFullPath%
; %cmddir%autohotkey.ahk 
>^f11:: reload
>^#+f11:: run %ev% %cmddir%autohotkey.ahk 
>^#f11:: run %ev% %cmddir%aioahk.ahk 
>#f11:: exit

#\:: run %userprofile%Music\Playlists\m7.wpl
>!>#>^+v:: run  %predir%vim82\gvim.exe -u c:\cmd\vimkeys.vim   %cmddir%vimkeys.vim
;>!>#>^+v:: run  %predir%vim82\gvim.exe -u c:\cmd\vimkeys.vim   %userprofile%\_vimperatorrc
;FormatTime, bootDateTime,, ddd MMM ddk yyyy Fri Feb 22 2019 20190222FebFriday
>+e::
   FormatTime, CurrentDateTime,, hhmm
   SendInput %CurrentDateTime%eat
return
>+o::
   FormatTime, CurrentDateTime,, hhmm
   SendInput %CurrentDateTime%pisfl
return
>+l::
   FormatTime, CurrentDateTime,, hhmm
   SendInput %CurrentDateTime%loudfridgoff
return
>+c::
   FormatTime, CurrentDateTime,, hhmm
   SendInput %CurrentDateTime%closup
return
>+n::
   FormatTime, CurrentDateTime,, hhmm
   SendInput %CurrentDateTime%noisup
return
>+g::
   FormatTime, CurrentDateTime,, hhmm
   SendInput %CurrentDateTime%grumbling
return
>+p::
   FormatTime, CurrentDateTime,, hhmm
   SendInput %CurrentDateTime%polsiren
return

>+s::
   FormatTime, CurrentDateTime,, hhmm
   SendInput %CurrentDateTime%smbarkup
return
>+d::
   FormatTime, CurrentDateTime,, hhmm
   SendInput %CurrentDateTime%drbangsl
return
>+3::
   FormatTime, CurrentDateTime,, hhmm
   SendInput %CurrentDateTime%drbang303
return
>+4::
   FormatTime, CurrentDateTime,, hhmm
   SendInput %CurrentDateTime%drbang304
return
>+f::
   FormatTime, CurrentDateTime,, hhmm
   SendInput %CurrentDateTime%drflap
return

>+b::
   FormatTime, CurrentDateTime,, hhmm
   SendInput %CurrentDateTime%bigbarku
return
>+v::
   FormatTime, CurrentDateTime,, hhmm
   SendInput %CurrentDateTime%vroom
return
>+k::

   FormatTime, CurrentDateTime,, hhmm
   SendInput %CurrentDateTime%loudup
return
>+t::
   FormatTime, CurrentDateTime,, hhmm
   SendInput %CurrentDateTime%hwaytalk
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
once := 0
;;IfWinNotExist,  firefox
if (once < 1)
{
run ffwb
run C:\Users\Grandpa\Desktop\z\a\ditto\Ditto\Ditto.exe
run C:\Users\Grandpa\Desktop\skype.lnk
once = 1
}
>^>#f:: fire("http://www.espn.com/nfl/statistics/team/_/stat/total",wb("f"))
>^>#+f:: fire("https://www.teamrankings.com/nfl/stat/touchdowns-per-game",wb("f"))
;>^+f:: fire("https://www.covers.com/sports/nfl/matchups",wb("f"))
;>^+b:: fire("https://www.covers.com/sports/nba/matchups",wb("f"))
>^>#b:: fire("https://www.covers.com/pageLoader/pageLoader.aspx?page=/data/nba/statistics/2018-2019/offense_pt_regular.html",wb("f"))
>^>#+b:: fire("https://www.covers.com/pageLoader/pageLoader.aspx?page=/data/nba/statistics/2018-2019/statistics_regular.html",wb("f"))
;>^>#b:: fire("https://www.covers.com/pageLoader/pageLoader.aspx?page=/data/nba/statistics/2018-2019/defense_pt_regular.html",wb("f"))
;>^+h:: fire("https://www.covers.com/sports/nhl/matchups",wb("f"))
>^>#h:: fire("https://www.covers.com/sport/hockey/nhl/2018-2019/statistics/team-scoring",wb("f"))
;>^>#h:: fire("https://www.covers.com/sport/hockey/nhl/2018-2019/statistics/team-defense",wb("f"))
>^>#+h:: fire("https://www.covers.com/sport/hockey/nhl/statistics",wb("f"))
;>^>#+h:: fire("https://www.covers.com/sport/hockey/nhl/standings",wb("f"))
>#q:: run  %predir%emacs\bin\runemacs.exe -fg black -bg white -fs  -g 1450x725
>#!q:: run  %predir%emacs\bin\emacs.exe -fg black -bg white -fs  -g 1450x725
>#+q:: run  %predir%emacs\bin\runemacs.exe -fg black -bg white -fs  -g 1450x725
;>!e:: run %predir%emacs\bin\runemacs.exe -fg black -bg white -fs  -g 1450x725 
;>#!+e:: run %predir%emacs\bin\runemacs.exe -fg black -bg white -fs  -g 1450x725 --load "%cmddir%evilinit.el"
;>#+e:: run %predir%emacs\bin\runemacs.exe -fg black -bg white -fs  -g 1450x725 --load "%cmddir%minevil.el"
>#s:: run %predir%emacs\bin\runemacs.exe -fg black -bg white -fs  -g 1450x725 --load "%cmddir%spaceinit.el"
>!+b:: run %userprofile%\VirtualBox\VirtualBox.exe
>#d:: run %predir%freedler\fdm.exe 
>!v:: run %predir%vim82\gvim.exe -u c:\cmd\vimkeys.vim  -R
>#v:: run %predir%vim82\gvim.exe -u c:\cmd\vimkeys.vim  
>#+v::run %predir%vim82\gvim.exe -u c:\cmd\vimkeys.vim  --noplugin 
>#>^v::run %predir%vim82\gvim.exe --noplugin -u "%predir%vim82\pack\SpaceVim-master\init.vim"
>#n::run "%predir%\Neovim\bin\nvim-qt.exe" 
>#+n::run "%predir%\Neovim\bin\nvim.exe" 
>!o:: fire("",wo)
>!^d:: run %predir%ditto.exe
>#b:: run %userprofile%\VirtualBox VMs\deb95l\deb95l.vbox
>^n:: fire("https://ndb.nal.usda.gov/ndb/nutrients/index")
;fire("https://ndb.nal.usda.gov/ndb/search/list") 
;>^+m:: fire("https://www.google.ca/maps/?hl=en") 
;>^i:: fire("https://www.google.ca/search?q=&tbm=isch")
;>^b:: fire("https://www.google.ca/search?q=&tbm=bks")
>^x:: fire("http://forum.chesstalk.com/forumdisplay.php?f=2&mode=linear",wb("o"))
;>^+s:: fire("https://scholar.google.com/scholar_lookup?")
;>!t:: fire("http://tactics.chessbase.com/",wb("o"))
;>^q:: run %predir%Q-Dir_Portable_x64\Q-Dir\Q-Dir.exe
>^!+c::
{
 Send, ^c
 Sleep 50
 fire("https://www.startpage.com/search?q=%clipboard%",wb("t"))
 Return
}
;appskey & /:: msgbox hi
;hotkey, appskey, win,


>!+q:: run h:\red.exe 
f3:: Send, ^+!f

