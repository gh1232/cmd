#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.uytu
#SingleInstance Force ; Allow only one running instance of script.
SendMode Input  ;ew scripts due to its superior speed and reliability.
;global wf := "firefox.exe"

;global wbdir := "i:\wb\"
;%userprofile%; begin added 20220615Jun15Wed-0942PM aa
envget windir, windir
envget userprofile, userprofile
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
exec0(cmd,cargs:="",pre:="")
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

getwb0(wb,num,wp)
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
global wff0 := "C:\Program Files\Mozilla Firefox\firefox.exe"
global ffprivpuser :=    " --private -profile puser "
global wff2 := "c:\program files\mozilla firefox\firefox"
;global wff2 := "c:\program files\mozilla firefox\firefox"
global wep1 := wb("ep",1,"ep1")

global wep2 := wb("ep",2,"ep2")
global wep3 := wb("ep",3,"ep3")
global wep4 := wb("ep",4,"ep4")
global wop1 := wb("op",1,"op1")
global wop2 := wb("op",2,"op2")
global wop3 := wb("op",3,"op3")
global wop4r := wb("op",4,"op4r")
global wop1t := wb("op",1,"op1t")

global wtb1c  :=  wb("tb",1,"tbc")
global wtb1med  := wb("tb",1,"tbmed")
global ffox := wff0
global wff0privpuser := ffox . " " . ffprivpuser
global wff0pwf := "%wff0%  -P pwf --allow-remote  -new-tab"
global wtb1 := wb("tb",1,"") 
global wt := wtb1
global wop0 :=   wb("op",0,"op0") 


global wop1g:=  wb("op",1,"op1g")
global wop1t:=  wb("op",1,"op1t")
global wep0 :=   wb("ep",0,"ep0")
global wop1y :=  wb("op",1,"op1y") 
global wme := "MicrosoftEdge"
global par := ""
global priv  := " -private "
global k :=">!"
global ev := "v.bat"  
global eg := "g.bat"  
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
        wbr = wff0 
    } else { 
      wbr = wff0 . " -P %wp%  -new-tab"
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
    return %wme%
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

;; end added @0220615Jun15Wed-0942Pm aa





global wbdir := "c:\a\wb\"
global wbprofdir := "c:\a\wb\prof\"
global predir := "c:\a\"
global cmddir := "c:\cmd\"
global showMenuEnable := 1

getwb(wb,num,wp)
{
  if (wb = "ep"){

    if (wp = ""){
      wbr = %predir%wb\ep%num%\application\epic.exe
        return wbr
    } else {

      wbr = %predir%wb\ep%num%\application\epic.exe --user-data-dir=%profdir%%wp%
        return wbr
    }



  } else if (wb = "op"){

    if (wp = ""){
      wbr =  %predir%wb\op%num%\opera.exe 
        return wbr

    } else {
      wbr =  %predir%wb\op%num%\opera.exe --user-data-dir=%profdir%%wp%
        return wbr
    }
  } else if (wb = "tb"){

    if (wp = ""){
      wbr =  %predir%wb\tb%num%\Browser\firefox --no-remote  -new-tab
        return wbr

    } else {
      wbr =  %predir%wb\tb%num%\Browser\firefox -P %wp%  --no-remote -new-tab 

        return wbr
    }
  } else if (wb = "mf"){
    if (wp = ""){
      wbr =  %wff0% --allow-remote  -new-tab
        return wbr

    } else {
      wbr =  %wff0% -P %wp%  --allow-remote -new-tab 
        return wbr
    }	
  } else if (wb = "ff"){
    if (wp = ""){
      wbr =  %predir%wb\ff%num%\firefox --allow-remote  -new-tab
        return wbr

    } else {
      wbr =  %predir%wb\ff%num%\firefox -P %wp%  --allow-remote -new-tab 
        return wbr
    }	
  } else if (wb = "me"){

    if (wp = ""){
      wbr = "microsoftedge" 
        return wbr

    } else {
      wbr = microsoftedge --user-data-dir=%profdir%%wp%
        return wbr
    }
  } else {
    return "getwb nowb" 
  }

}
global wep1r := getwb("ep","1","ep1r")  
global wep1t := getwb("ep","1","ep1t")  
global wep1y := getwb("ep","1","ep1y")

global wop1g := getwb("op","1","op1g")  
global wop1r := getwb("op","1","op1r")  
global wop1t := getwb("op","1","op1t")  
global wop1y := getwb("op","1","op1y")  

;correcthisprof
global wff1puser := getwb("mf",1,"puser")  
global wff1panon := getwb("mf",1,"panon")  
global wtb1 := getwb("tb",1,"")  
global wm := "MicrosoftEdge"

global wop4r := getwb("op","4","op4r")  
global wop4r := getwb("op","4","op4r") 



global wop1t := getwb("op","1","op1t") 
global wop3r := getwb("op","3","op3r") 
global wop4 := getwb("op","4","op4") 
global wop3 := getwb("op","3","op3") 
global wop2 := getwb("op","2","op2") 
global wop1 := getwb("op","1","op1")

global wep1 := getwb("ep","1","ep1")  
global wep2 := getwb("ep","2","ep2")  
global wep3 := getwb("ep","3","ep3")  
global wep4 := getwb("ep","4","ep4")  

; [ep1][ep4 ff1[op1][op4]
;[opa][opgx1][prof [tb1]            

;[aop1t][aop1y] [ep1r]  [ep1std]
;[ep1t][ep1y]  [ep4][op1] [op1g] [op1r]
;[op1std][op1stdbu] [op1t][op1y] [op4] [op4p][op4r]     
global pchess := getwb("op","1","op1g")
global psara := getwb("op","1","op1r")
global psport := getwb("mf","","")
global ppor := getwb("op","4","op4p")
global prad := getwb("me","","")
global psearch  := getwb("tb","1","")
global pmail  := getwb("ff","1","puser")
global  psearchtor := getwb("ff","1","puser")
global  pnewstor := getwb("me","","")
global  pspeed := getwb("ff","1","")
global pres  := getwb("tb","1","")



global ext1 := []
global ext2 := []
global ext3 := []
global apps1 := []
global apps7 := []
global apps2 := []
global os1 := []
global os2 := []
global ahkcmds := [] 
global dirs1 := []
global dirs2 := []
global lvl1 := []
global lvl2 := []
global tvs1 := []
global games1 := []
global sports1 := []
global urls1 := []
global cons1 := []
global km :=[] 
global mb := "msgbox hi"
global mab2 := ""
global mabx := ""
global allmabx := ""
global allmab2 := ""
global mab1 := ""
global allmab1 := ""
global wincmds := []
global wincmds1 := []
global wincmds2 := []
global wincmds3 := []




varExists(ByRef v) { ; Requires 1.0.46+
  return &v = &n ? 0 : v = "" ? 2 : 1 
}
VarExist(Var="")        {       ; * * * Determines a variable existence. * * *
  ;
  IfEqual, Var,,Return, 0         ; If no parameter, return 0
    ;
  VrAddr = % & %Var%             ; Obtain pointer to the variable
    ;
x := "Var" . Chr(160)           ; x will contain a non-existing variable name
     NonExistent := &%x%             ; Obtain pointer to the non-existing variable
     ;
   if ( VarAddr = NonExistent ) {  ; Compare both the pointers and
     Return, 0                    ; if equal, Return 0 to indicate tha
   }  ; the variable does not exist 
   else                            ;
   If ( %Var% = "" )         {  ; If Var is empty Return 2
     Return, 2                 ;  
   }  ;
   Return 1                        ; If above conditions do not apply, Return 1
}

showMenu(m){
  if (m=[]){

    return 
  } else {
    if (showMenuEnable = 1){
s := ""
     llll := m.Length()
     if (llll <= 1 ){
       for k,v in m
         s .= k "     " v "`n"
           gui new 
           gui font ,s20
           Gui, Add, Text,, %s% 
           Gui, Show
     }
     else {

       for k,v in m
         s .= k "  " v  "`n"
           gui new 
           gui font ,s20
           Gui, Add, Text,, %s% 
           Gui, Show

     }

    }
  }
  return 
}
addMenuy(m,r,a*){
  m[a*] := r
    return m
}
addMenuz(m,r,a*){
l := a.Length() - 1
     loop l  {
aa := l - 1 
      m[aa] := r
     }
   return m
}
addMenux(m,r,a*){
  tempm := []
  tempm := r 
  for index, param in a* {

    tempm[param] := tempm 
      msgbox %tempm%
  }
  for index, param in tempm {

    m[param] := tempm[param]  
  }

  return m
}
hideMenu(m){
  gui, destroy 
}
addMenu1(m,a,r){
  if m[a] {
mab1 := m[a]
        ; Transform, mab , Deref,  %kkk%
        allmab1 := allmab1 . " " . a . " - " . mab1 . " = " . r . " `n"   
        return m 
  } 
  m[a] := r
    ;msgbox , m=%m% - a=%a% - r=%r% %m[a]%

    return m
}
addMenu2(m,a,b,r){
  if m[a,b] {
mab2 := m[a,b]
        ; Transform, mab , Deref,  %kkk%
        allmab2 := allmab2 . " " . a . " - " . b . " - " . mab2 . " = " . r . " `n"   
        return m 
  } 
  m[a,b] := r
    return m
}
winkeymenu1(mm,wb="")
{
  showMenu(mm)
    Input, kk, L1 c
    ; msg     input,kk2, L1 c 
    ;msgbox, %kk%     
    kkk :=  mm[kk]
    hideMenu("")
    ;thisworksfrom,so
    ;msgbox, %kkk%     

    ;  Transform, kkk, Deref,  %kkk%
    runcmd(kkk)
    soundbeep
    return ; 
}


keymenu1(mm,wb="")
{
  if (wb =""){

wf1 :=  wff0
       wt1 :=  wtb1
       wo1 :=  wop1
       we1 :=  wep1y
       wm1 :=  wme
  }
  else
  {
wb1 := wb  
       wt1 := wb  
       wo1 := wb  
       we1 := wb  
       wm1 := wb  

  }
  showMenu(mm)
    Input, kk, L1 c
    ;      input,kk2, L1 c 
    ;msgbox, %k
    if (kk ="["){
      hideMenu("")
        keymenu2(dirs1)
    }   
    else if (kk ="0"){
      hideMenu("")
        keymenu2(cons1)
    }   
    else if (kk ="."){
      hideMenu("")
        keymenu2(tvs1)
    }   
    else if (kk =";"){
      hideMenu("")
        keymenu2(apps1)
    }   
    else if (kk ="'"){
      hideMenu("")
        keymenu2(apps2)
    }   
    else if (kk ="-"){
      hideMenu("")
        winkeymenu1(wincmds)
    } 
    else if (kk ="="){
      hideMenu("")
        winkeymenu1(wincmds2)
    } 
    else if (kk ="\\"){
      hideMenu("")
        keymenu1(wincmds3)
    } 
    else if (kk ="]"){
      hideMenu("")
        keymenu2(apps7)
    } 
    else if (kk =","){
      hideMenu("")
        keymenu2(urls1)
    } 
    else if (kk ="/"){
      hideMenu("")
        keymenu1(ext3)
    } 
    else {

      ;  keymenu1(mm[kk],wb)

        kkk :=  mm[kk]
        ;thisworksfrom,so
        ;msgbox, %kkk%
        hideMenu("")
        ;/nmsgbox %kkk% 
        Transform, kkk, Deref,  %kkk%
        run %kkk%
        soundbeep
        return ; 
    }
}



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
keymenu1o(mm,wb="")
{
  if (wb =""){

wf1 :=  wff0
       wt1 :=  wtb1
       wo1 :=  wop1
       we1 :=  wep1y
       wm1 :=  wme
  }
  else
  {
wb1 := wb  
       wt1 := wb  
       wo1 := wb  
       we1 := wb  
       wm1 := wb  

  }
  showMenu(mm)
    Input, kk, L1 c
    ;      input,kk2, L1 c 
    ;msgbox, %k
    if (kk ="["){
      keymenu1(os1)
    }   
    else if (kk ="]"){
      keymenu2(tvs1)
    }   
    else if (kk =";"){
      keymenu2(apps1)
    }   
    else if (kk ="'"){
      keymenu2(apps2)
    }   
    else if (kk ="-"){
      winkeymenu1(wincmds)
    } 
    else if (kk ="="){
      winkeymenu1(wincmds2)
    } 
    else if (kk ="\\"){
      keymenu1(wincmds3)
    } 
    else if (kk =","){
      keymenu2(apps7)
    } 
    else if (kk ="."){
      keymenu2(urls1)
    } 
    else if (kk ="/"){
      keymenu1(ext3)
    } 
    else {

      ;  keymenu1(mm[kk],wb)

        kkk :=  mm[kk]
        ;thisworksfrom,so
        ;msgbox, %kkk%
        hideMenu("")
        Transform, kkk, Deref,  %kkk%
        run %kkk%
        soundbeep
        return ; 
    }
}
keymenu2(mm,wb="",mn:="")
{
  if (mn=""){
    showMenu(mm)
  } else {
    showMenu(mn)
  }
  soundbeep
    Input, kk, L1 c
    ;msgbox, %kk%     
    ;      input,kk2, L1 c 
    hideMenu("")
    if (kk ="["){
      keymenu1(os1)
    }   
    else if (kk ="]"){
      keymenu2(tvs1)
    }   
    else if (kk =";"){
      keymenu2(apps1)
    }   
    else if (kk ="'"){
      keymenu2(apps2)
    }   
    else if (kk ="-"){
      winkeymenu1(wincmds)
    } 
    else if (kk ="="){
      winkeymenu1(wincmds2)
    } 
    else if (kk ="\\"){
      keymenu1(wincmds3)
    } 
    else if (kk =","){
      keymenu2(apps7)
    } 
    else if (kk ="."){
      keymenu2(urls1)
    } 
    else if (kk ="/"){
      keymenu1(ext3)
    } 
    else {

      keymenu1(mm[kk],wb)
    } 
  return ; 

}
runcmd(c)
{
  if (c = "wc") {

    winclose, A  
  } else if (c = "wm")
  {
    winmaximize,A

  }

  else if c = "wn"
  {
    winminimize,A

  }

  else if c = "wd"
  {
    winminimizeall,A

  }

  else if c = "wh"
  {
    winhide,A

  }
  else if c = "wk"
  {
    winkill,A

  }


  else if c = "w,"
  {
    winmove,A
  }
  else if c = "wa"
  {
    winactivate,A
  }
  else if c = "wb"
  {
    winactivate,A
  }
  else if c = "ws"
  {
    winshow,A
  }

  else {

  }

}
varIsArray(variabl)
{
	if !(variabl[1])
	{
		Return 0
	}
	Return 1
}

global kkkkk := ""
global lll := -3
keymenux(mm,wb="",mn:="")
{
if (!mm){
 return 
}
       if (mn=""){
    showMenu(mm)
  } else {
    showMenu(mn)
  }
  soundbeep
    Input, kk, L1 c

    hideMenu("")
       kkkkk :=  mm[kk]
       if (kkkkk is string) {

    
         Transform, kkkkk, Deref,  %kkkkk%
        ; msgbox %kkkkk% %wme%

           run, % kkkkk
        soundbeep
        return ; 
       }
       else {
           keymenux(mm[kk],wb)
           return
       }
  return  

}
keymenuy(mm,wb="",mn:="")
{
if (!mm){
 return 
}
       if (mn=""){
    showMenu(mm)
  } else {
    showMenu(mn)
  }
  soundbeep
    Input, kk, L1 c

    hideMenu("")
       kkkkk :=  mm[kk]
       if (kkkkk is string) {
           keymenu1(mm[kk],wb)
         return 
       }
       else {
           keymenuy(mm[kk],wb)
           return
       }
  return  

}
global menu2 := []

menu2["n"] := "news"
menu2["y"] := "youtube"
menu2["r"] := "radio"
menu2["t"] := "tv"
menu2["m"] := "mail"
menu2["c"] := "chess"
menu2["p"] := "news2"
menu2["f"] := "football"
menu2["s"] := "socialmedia"
menu2["b"] := "science2/comp"
menu2["q"] := "search"
menu2["h"] := "hockey"



menu2["o"] := "other"
menu2["-"] := "wincmd1"
menu2["="] := "wincmd2"
menu2["\"] := "wincmd3"
menu2["["] := "os1"
menu2["]"] := "tvs1"
menu2[";"] := "apps1"
menu2["'"] := "apps2"
menu2[","] := "apps7"
menu2["."] := "tvs1"
menu2["/"] := "extra3"

global menu22 := []

menu22["n"] := "news"

lvl1["0"] := cons1
lvl1["-"] := wincmd1
lvl1["="] := wincmd2
lvl1["\"] := games1
lvl1["["] := dirs1
lvl1[","] := urls1
lvl1[";"] := apps1
lvl1["'"] := apps2
lvl1["]"] := apps7
lvl1["."] := tvs1
lvl1["/"] := extra3

global mmmm := []





mmmm["c"] := cons1
mmmm["-"] := wincmd1
mmmm["="] := wincmd2
mmmm["g"] := games1
mmmm["f"] := dirs1
mmmm["u"] := urls1
mmmm["i"] := urls2
mmmm["a"] := apps1
mmmm["s"] := apps2
mmmm["d"] := apps7
mmmm["t"] := tvs1
mmmm["y"] := tvs2
mmmm["e"] := extra3
mmmm["q"] := extra1
mmmm["w"] := extra2

;tempyy:= ""
;tempzz :=" % getexec(""Tight\tvnviewer.exe"") "

addMenu2(lvl2,"'","1" ,"PowerShell.exe -NoProfile -Command ""& {Start-Process PowerShell.exe -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File """"%~dpn0.ps1""""' -Verb RunAs}""")
addMenu2(lvl2,"'","2" ,"PowerShell.exe -NoProfile -Command ""& {Start-Process PowerShell.exe -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File """"%~dpn0.ps1""""' -Verb RunAs}""")
addMenu2(lvl2,"'","3" ,"PowerShell.exe -Command ""& {Start-Process PowerShell.exe -ArgumentList '-ExecutionPolicy Bypass -File """"%~dpn0.ps1""""' -Verb RunAs}""")
 addMenu2(lvl2,"'","4" ,"PowerShell.exe -ExecutionPolicy Bypass -Command ""& '%~dpn0.ps1'""")


addMenu2(lvl2,"'","5" ,"PowerShell.exe -Command ""& '%~dpn0.ps1'""")
addMenu2(lvl2,"'","6" ,"start-process powershell -verb runas")
addMenu2(lvl2,"'","7" ,"RunAs ""c:\windows\system\cmd.exe""")
addMenu2(lvl2,"'","8" ,"runas /user:Administrator ""cmd.exe /k echo admin """)
addMenu2(lvl2,"'","9" ,"C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -command Start-Process -verb RunAs ")
addMenu2(lvl2,"'","0" ,"runas /profile /user:administrator ""cmd""")
addMenu2(lvl2,"'","-" ,"runas /profile /user:AAA ""cmd""")
addMenu2(lvl2,"'","=" ,"runas.exe /savecred /user:administrator cmd")
addMenu2(lvl2,"'","\" ,"C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -command Start-Process cmd  -verb RunAs ")
addMenu2(lvl2,"x","x" ,"getexec(""Tight\tvnviewer.exe"")")

addMenu2(lvl2,"'","p" ,"C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -command Start-Process powershell  -verb RunAs ")
addMenu2(lvl2,"'","i" ,"C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -command Start-Process %windir%\system32\WindowsPowerShell\v1.0\PowerShell_ISE.exe -verb RunAs ")

addMenu2(lvl2,"'","o" ,"C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -command Start-Process C:\a\PowerShell\7-preview\pwsh.exe -verb RunAs ")
addMenu2(lvl2,"'","t" ,"C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -command Start-Process taskmgr  -verb RunAs ")
addMenu2(lvl2,"'","\" ,"C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -command Start-Process cmd  -verb RunAs ")
addMenu2(lvl2,"'","k" ,"C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -command Start-Process cmd  -verb RunAs ")
;transform, tempyy, Deref, %tempzz% 


;run, %tempyy%
lvl2[","] := mmmm
addMenu2(lvl2,";","x" ,"powershell.exe -Command 'Start-Process cmd /k cd /d c:\a\' -Verb RunAs")
addMenu2(lvl2,";","o" ,"powershell.exe -Command 'Start-Process powershell' -Verb RunAs")
addMenu2(lvl2,";","i" ,"%windir%\system32\WindowsPowerShell\v1.0\PowerShell_ISE.exe")
addMenu2(lvl2,";","e" ,"explorer")
addMenu2(lvl2,";","c" ,"cmd")
addMenu2(lvl2,";","l","%cmddir%login.bat")
addMenu2(lvl2,";","a","%cmddir%ra.bat %cmddir%login.bat")
addMenu2(lvl2,";","k" ,"%predir%clink\clink.bat")
addMenu2(lvl2,";","p" ,"powershell")

;addMenux(lvl2,getwb("op","4","op4r"),"8","p","2","3","4","5","[" )
    
;lvl2["1","r"]:=getexec("mstsc","/v:192.168.1.1 ","x")
addMenu2(lvl2,"2","t", "%predir%tight\tvnviewer.exe -host=192.168.1.2 -password=yo")
addMenu2(lvl2,"7","t", "%predir%tight\tvnviewer.exe -host=192.168.1.7 -password=yo")
addMenu2(lvl2,"6","t", "%predir%tight\tvnviewer.exe -host=192.168.1.6 -password=yo")
addMenu2(lvl2,"8","t", "%predir%tight\tvnviewer.exe -host=192.168.1.8 -password=yo")
addMenu2(lvl2,"4","t", "%predir%tight\tvnviewer.exe -host=192.168.1.4 -password=yo")
addMenu2(lvl2,"3","t", "%predir%tight\tvnviewer.exe -host=192.168.1.3 -password=yo")
addMenu2(lvl2,"5","t", "%predir%tight\tvnviewer.exe -host=192.168.1.5 -password=yo")
addMenu2(lvl2,"7","t", "%predir%tight\tvnviewer.exe -host=192.168.1.7 -password=yo")
addMenu2(lvl2,"9","t", "%predir%tight\tvnviewer.exe -host=192.168.1.9 -password=yo")
;lvl2["1","t"] := "%predir%tight\tvnviewer.exe -host=192.168.1.1 -password=yo"
lvl2["[","o","c"]:=getwb("op","4","op4r")
global tempa := lvl2["[","o","4","r"]
;msgbox %tempa%
lvl2["[","o","p"]:=getwb("op","4","op4p")
lvl2["[","o","g"]:=getwb("op","1","op1g")
lvl2["[","o","r"]:=getwb("op","1","op1r")
lvl2["[","o","t"]:=getwb("op","1","op1t")
lvl2["[","o","y"]:=getwb("op","1","op1y")
lvl2["[","e","r"]:=getwb("ep","1","ep1r")

lvl2["[","e","t"]:=getwb("ep","1","ep1t")
lvl2["[","e","y"]:=getwb("ep","1","ep1y")
;tempa := lvl2["[","e","y"]
;msgbox %tempa%
addMenu2(lvl2,"[","t",getwb("tb","1",""))
addMenu2(lvl2,"[","m",wme)
addMenu2(lvl2,"[","f",wff1puser)
addMenu2(lvl2,"[","d" ,wff1panon)
addMenu2(lvl2,"[","a" ,wff1panon . " --url  about:about")

addMenu2(lvl2,"]","e",ee271)
addMenu2(lvl2,"]","g",eg)
addMenu2(lvl2,"]","n",env)
addMenu2(lvl2,"]","b",envq)
addMenu2(lvl2,"]","v",ev)
addMenu2(lvl2,"[","y" ,"%predir%wb\ep1\application\epic.exe --user-data-dir=%profdir%ep1y https://youtube.com")
addMenu1(lvl1,"w" ,"C:\Program Files\Everything\Everything.exe -connect z@192.168.1.2")
addMenu1(lvl1,"q" ,"C:\Program Files\Everything\Everything.exe")
addMenu2(lvl2,".","e" ,"explorer")
addMenu2(lvl2,".","n" ,"notepad")
addMenu2(lvl2,".","c" ,"calc")
addMenu2(lvl2,".","b" ,"c:\a\virtualbox\virtualbox")
addMenu2(lvl2,".","x" ,"xcmd")
addMenu2(lvl2,".","d" ,"C:\a\Free Download Manager\fdm.exe")
addMenu2(lvl2,"/","/" ,"C:\Program Files\Everything\Everything.exe")
addMenu2(lvl2,".","v" ,"C:\a\vifm\vifm")
addMenu2(lvl2,"/","2" ,"C:\Program Files\Everything\Everything.exe -connect z@192.168.1.2")
addMenu1(lvl1,"g" ,eg)
addMenu1(lvl1,"n" ,env)
addMenu1(lvl1,"b" ,envq)
addMenu1(lvl1,"v" ,ev)
addMenu1(lvl1,"t" ,getwb("tb","1",""))
wep1y = %predir%wb\ep1\application\epic.exe --user-data-dir=%profdir%ep1y
addMenu1(lvl1,"y" ,"%predir%wb\ep1\application\epic.exe --user-data-dir=%profdir%ep1y https://youtube.com")

addMenu1(lvl1,"f" ,wff1puser)
addMenu1(lvl1,"d" ,wff1panon . " --url  about:about")
addMenu1(lvl1,"x" ,"powershell.exe -Command 'Start-Process cmd /k cd /d c:\a\' -Verb RunAs")
addMenu1(lvl1,"o" ,"powershell.exe -Command 'Start-Process powershell' -Verb RunAs")
addMenu1(lvl1,"i" ,"%windir%\system32\WindowsPowerShell\v1.0\PowerShell_ISE.exe")
addMenu1(lvl1,"e" ,"explorer")
addMenu1(lvl1,"c" ,"cmd")
addMenu1(lvl1,"l","%cmddir%login.bat")
addMenu1(lvl1,"a","%cmddir%ra.bat %cmddir%login.bat")
addMenu1(lvl1,"k" ,"%predir%clink\clink.bat")
addMenu1(lvl1,"p" ,"powershell")

addMenu1(lvl1,"m" ,wme)

;addMenu1(os2,"c" ,"cmd")
addMenu1(apps1,"c" ,"cmd")

;addMenu1(ext1,"c" ,"cmd")
addMenu1(wincmds,"c" ,"wclose")

addMenu1(wincmds,"k" ,"wkill")
addMenu1(wincmds,"n" ,"wminz")
addMenu1(wincmds,"m" ,"wmaxz")
addMenu1(wincmds,"s" ,"wshow")
addMenu1(wincmds,"r" ,"wresize")
addMenu1(wincmds,"a" ,"wactivate")
addMenu1(wincmds,"b" ,"wb")
addMenu1(wincmds,"d" ,"wminzall")
addMenu1(wincmds,"," ,"wmove")


addMenu2(tvs1,"g", "t" ,"%wt% https://www.tvtv.ca/on/toronto/m5t1c2/luCAN-OTAM5T1C2 ")
addMenu2(tvs1,"g", "p" ,"%wt% https://www.tvpassport.com/tv-listings ")
addMenu2(tvs1,"g", "n" ,"%wt% https://www.nocable.org/tv-guide/")
addMenu2(tvs1,"g", "o" ,"%wt% https://www.ontvtonight.com/ca/guide/listings/TorontoNight.html")
addMenu2(tvs1,"g", "c" ,"%wt% http://www.remotecentral.com/hdtv/")
addMenu2(tvs1,"n", "r" ,"%wt% https://time.com")
addMenu2(tvs1,"n", "a" ,"%wt% https://slate.com")
addMenu2(tvs1,"b", "s" ,"%wt% https://science.com")
addMenu2(tvs1,"b", "a" ,"%wt% https://scientificamerican.com")
addMenu2(tvs1,"b", "p" ,"%wt% https://pcmag.com")
addMenu2(tvs1,"b", "m" ,"%wt% https://medium.com")
addMenu2(tvs1,"n", "c" ,"%wt% https://canada.com")
addMenu2(tvs1,"n", "o" ,"%wt% https://ottwawsun.com")
addMenu2(tvs1,"n", "n" ,"%wt% https://nationalpost.com")
addMenu2(tvs1,"n", "y" ,"%wt% https://news.yahoo.com")
addMenu2(tvs1,"n", "b" ,"%wt% https://news.bing.com")
addMenu2(tvs1,"n", "g" ,"%wt% https://news.google.com")
addMenu2(tvs1,"n", "s" ,"%wt% https://torontosun.com")
addMenu2(tvs1,"n", "d" ,"%wt% https://torontostar.com")
addMenu2(tvs1,"n", "l" ,"%wt% https://latimes.com")
addMenu2(tvs1,"n", "t" ,"%wt% https://newyorktimes.com")
addMenu2(tvs1,"n", "p" ,"%wt% https://newyorkpost.com")
addMenu2(tvs1,"n", "w" ,"%wt% https://washingtonpost.com")
addMenu2(tvs1,"n", "q" ,"%wt% https://washingtontime.com")
addMenu2(apps1,"x", "a" ,"C:\Program Files (x86)\Adobe\Acrobat Reader DC\Reader\AcroRd32.exe")
addMenu2(tvs1,"o", "w" ,"%wt% https://westonaprice.org")
addMenu2(tvs1,"c", "w" ,"%wo% https://theweekinchess.com")
addMenu2(tvs1,"c", "c" ,"%wo% https://chess.com")
addMenu2(tvs1,"c", "x" ,"%wo% https://chess.ca")
addMenu2(tvs1,"c", "t" ,"%wo% https://chesstalk.com")
addMenu2(tvs1,"c", "y" ,"%wo% https://talkchess.com")
addMenu2(tvs1,"c", "l" ,"%wo% https://lichess.org")
addMenu2(tvs1,"c", "i" ,"%wo% https://ichess.com")

addMenu2(tvs1,"c", "2" ,"%wo% https://chess24.com")
addMenu2(tvs1,"r","r","%wop1t% http://renseradio.com/")
addMenu2(tvs1,"p","h","%wt1% https://thehill.com/")
addMenu2(tvs1,"p","j","%wt1% https://www.hilltimes.com/")
addMenu2(tvs1,"f","p","%wf1% https://www.covers.com/sport/football/nfl/printsheet")
addMenu1(ext3,"w","%wt1% https://walmart.ca/search/")
addMenu1(ext3,"l","%wep1y% https://www.youtube.com/results?search_query=news+live")
addMenu1(ext3,"q","%wt1% https://en.wikipedia.org/wiki/")
addMenu2(tvs1,"t","g","%wop1t% https://www.tvguide.com/listings/")
addMenu2(tvs1,"v","v","%wt1% https://frproxy.vpnbook.com/browse.php?u=PKnM7p4uPmM0fPpc2eVzXEyWnHwnlzaw9It1mqgH&b=0")
addMenu2(tvs1,"t","f","%wop1t% https://www.ontvtonight.com/guide/")
addMenu1(ext3,"k","%wt1% https://www.kijiji.ca/h-city-of-toronto/1700273")
addMenu2(tvs1,"t","z","%wop1t% https://ustvgo.tv/amc-live/")
addMenu2(tvs1,"t","a","%wop1t% https://ustvgo.tv/abc/")
addMenu2(tvs1,"t","c","%wop1t% https://ustvgo.tv/cbs/")
addMenu2(tvs1,"t","C","%wop1t% https://www.cbsnews.com/live/")
addMenu2(tvs1,"t","u","%wop1t% https://ustvgo.tv/usa-network-live/")
addMenu2(tvs1,"t","w","%wop1t% https://ustvgo.tv/we-tv")
addMenu2(tvs1,"t","b","%wop1t% https://ustvgo.tv/bbc-america-live/")
addMenu2(tvs1,"t","d","%wop1t% https://ustvgo.tv/syfy-channel-live/")
addMenu2(tvs1,"t","s","%wop1t% https://ustvgo.tv/sundance-tv/")
addMenu2(tvs1,"v","c","%wop1t% https://www.cp24.com/video?clipId=1921747")
addMenu2(tvs1,"t","e","%wop1t% https://www.euronews.com/live")
addMenu2(tvs1,"t","r","%wop1t% http://www.live-tv-radio.com/tv/europe.shtml")
addMenu2(tvs1,"t","i","%wop1t% https://www.squidtv.net/europe/")
addMenu2(tvs1,"t","l","%wop1t% https://abcnews.go.com/Live/")
addMenu2(tvs1,"t","h","%wop1t% https://ustv247.tv/guide/index.html")
addMenu2(tvs1,"t","q","%wop1t% https://usatodaynews.live/us-news/")
addMenu2(tvs1,"t","y","%wep1y% https://www.youtube.com")
addMenu2(tvs1,"s","r","%wt1% https://www.twitch.tv/directory")
addMenu2(tvs1,"r","N","%wop1t% https://onlineradiobox.com/us/genre/news/")
;addMenu2(tvs1,"t","n","%wop1t% https://www.cbsnews.com/live/video/")
addMenu2(tvs1,"r","n","%wf1% https://www.iheart.com/live/country/US/city/newyork-ny-159/?genreId=9")
addMenu2(tvs1,"s","t","%wt1% https://twitter.com/search-home")
addMenu2(tvs1,"t","k","%wop1t% https://www.kezi.com/livestream/")
addMenu2(tvs1,"t","v","%wop1t% https://www.cbsnews.com/video/#x")
addMenu2(tvs1,"m","r","%wf1% https://mail.rediff.com/cgi-bin/login.cgi")
addMenu2(tvs1,"m","g","%wf1% https://accounts.google.com/signin/v2/identifier?service=mail&passive=true&rm=false&continue=https://mail.google.com/mail/&ss=1&scc=1&ltmpl=default&ltmplcache=2&emr=1&osid=1&flowName=GlifWebSignIn&flowEntry=ServiceLogin")
addMenu2(tvs1,"m","d","%wf1% http://dropbox.com")
addMenu2(tvs1,"m","t","%wf1% https://authentication.td.com/uap-ui/index.html?consumer=easyweb&locale=en_CA#/login/easyweb-getting-started")
addMenu2(tvs1,"m","b","%wf1 %https://account.box.com/login ")
addMenu2(tvs1,"m","s","%wf1% https://cp.sync.com/login")
addMenu2(tvs1,"m","p","%wf1% https://my.pcloud.com/")
addMenu2(tvs1,"m","m","%wf1% https://mega.nz/login")
addMenu1(ext3,"f","%wt1% C:\Users\z\Desktop\bin2\finance.html")
addMenu1(ext3,"S","%wt1% https://gh1232.github.io/search.html")
addMenu1(ext3,"s","%wt1% file:///c:/users/z/desktop/bin2/search.html")
addMenu1(ext3,"n","%wt1% c:\users\z\desktop\bin2\news.html")
addMenu1(ext3,"l","%wt1% file:///u:\d\newslinks.html")
addMenu1(ext3,"w","%wt1% C:\Users\z\Desktop\bin2\surf.html")
addMenu1(ext3,"e","%wt1% C:\Users\z\Desktop\bin2\email.html")
addMenu2(tvs1,"=","d","%wf1% https://www.draftkings.com/")
addMenu2(tvs1,"=","s","%wf1% https://speedof.me/")
addMenu2(tvs1,"=","f","%wf1% https://fast.com/")
addMenu2(tvs1,"=","x","%wf1% http://speedtest.xfinity.com/")
addMenu2(tvs1,"=","n","%wf1% http://www.speedtest.net/")
addMenu2(tvs1,"=","b","%wf1% https://www.bandwidthplace.com/")
addMenu1(ext3,"p","%wt1% https://patents.google.com/?q=")
addMenu2(apps1,"l","3","cmd /c 'ssh root@192.168.1.3'" )
addMenu2(tvs1,"w","m","%wt1% https://www.makeuseof.com/")
addMenu2(tvs1,"w","h","%wt1% https://www.howtogeek.com/")
addMenu2(tvs1,"=","p","%wf1% https://pcoptimum.ca")
addMenu2(tvs1,"t","o","%wop1t% https://ustvgo.tv/one-america-news-network/")
addMenu2(tvs1,"t","m","%wop1t% https://www.tvguide.com/listings/#movies")
addMenu2(tvs1,"r","6","%wop1t% http://player.680news.com/")
addMenu2(tvs1,"r","2","%wme% https://www.iheart.com/live/cp24-7796/")
addMenu2(tvs1,"r","1","%wme% https://www.iheart.com/live/ctv-news-7798/")
addMenu2(tvs1,"r","t","%wme% https://www.iheart.com/live/country/CA/city/toronto-on-584/")
addMenu2(tvs1,"r","5","%wme% https://www.cbc.ca/player/news/tv``%20shows/the``%20national/latest``%20broadcast")
addMenu2(tvs1,"t","1","%wme% https://www.ctvnews.ca/live?autoPlay=true") 
addMenu2(tvs1,"r","9","%wt1% https://www.iheart.com/podcast/962-ctv-news-toronto-at-six-po-53782987/episode/ctv-news-at-six-for-april-61894489/")
addMenu2(tvs1,"r","w","%wop1t% http://worldradiomap.com/list/")
addMenu2(tvs1,"r","y","%wop1t% http://worldradiomap.com/ca/toronto")
addMenu2(tvs1,"n","c","%wme% https://www.cbc.ca/news")
addMenu2(urls1,"n","5","%wme% https://www.cbc.ca/player/news/tv``%20shows/the``%20national/latest``%20broadcast")

addMenu2(tvs1,"t","8","%wme% https://toronto.ctvnews.ca/video?clipId=1899996")
addMenu2(tvs1,"t","0","%wme% https://www.ctvnews.ca/video?binId=1.810415")
addMenu2(tvs1,"r","8","%wme% https://www.iheart.com/live/iheart80s-radio-5060/")
addMenu2(tvs1,"r","1","%wme% https://www.iheart.com/live/2010s-the-decade-8465/")
addMenu2(tvs1,"r","2","%wme% https://www.iheart.com/live/iheart2010s-radio-8478/")
addMenu2(tvs1,"r","l","%wme% https://www.iheart.com/live/b-1073-6731/")
;addMenu2(tvs1,"t","","%wme% https://www.ctvnews.ca/live?autoPlay=true")
addMenu2(tvs1,"t","7","%wme% https://www.ctvnews.ca/ctv-national-news")
;addMenu2(tvs1,"t","","%wme% https://toronto.ctvnews.ca/video?clipId=1899996")
;addMenu2(tvs1,"","","%wme% https://toronto.ctvnews.ca/video?clipId=1899996")
;addMenu2(tvs1,"","","%wme% https://www.iheart.com/live/2010s-the-decade-8465/")
addMenu1(ext3,"g","%wt1% https://www.google.ca/")
addMenu1(ext3,"m","%wt1% https://www.google.ca/maps/@43.6314075,-79.3941305,14z")
addMenu1(ext3,"w","%wt1% https://www.wikipedia.org/")
addMenu1(ext3,"p","%wt1% http://www.pof.com/basicsearch.aspx?iama=m&minage=18&maxage=24&seekinga=f&ethnicity=0&sorting=0&miles=35&country=17&imagesetting=0&page=1&count=600")
addMenu1(ext3,"o","%wt1% http://www.pof.com/basicsearch.aspx?iama=m&minage=44&maxage=74&z_code=M5T3A4&body=4_5&seekinga=f&ethnicity=0&sorting=0&miles=35&country=17&imagesetting=0&page=1&count=600")
;addMenu1(ext3,"","%wt1% https://toronto.craigslist.ca/search/w4m")
;addMenu2(tvs1,"","","%wt1% https://toronto.craigslist.ca/search/cas/?query=w4m")
addMenu1(ext3,"f","%wt1% https://toronto.craigslist.org/d/free-stuff/search/zip")
addMenu1(ext3,"c","%wt1% https://toronto.craigslist.org/d/computers/search/sya")
addMenu1(ext3,"s","%wt1% https://toronto.craigslist.org/search/sss/")
addMenu2(tvs1,"y","m","%wop1t% https://www.youtube.com/user/dayflirts/videos")
addMenu2(tvs1,"y","s","%wop1t% https://www.twitch.tv/saracantaloupes/videos")
;addMenu2(tvs1,"","","%wop1t% https://www.instagram.com/saraparah/")
;addMenu2(tvs1,"","","%wop1t% https://twitter.com/sara_parah")
addMenu2(tvs1,"y","2","%wop1t% https://www.youtube.com/channel/UC2lIa5vJrEx8nBOA90hfIMA/videos")
addMenu2(tvs1,"y","j","%wop1t% https://www.youtube.com/user/JustinWayneDating/videos")
addMenu2(tvs1,"y","s","%wop1t% https://www.youtube.com/user/SimplySaranade/videos")
addMenu2(tvs1,"y","a","%wop1t% https://www.youtube.com/user/itsmeSTEPANKA/videos")
;addMenu2(tvs1,"","","%wop1t% https://www.younow.com/StepankaMatto",vwb)
addMenu2(tvs1,"y","o","%wop1t% https://www.youtube.com/user/OGpuzik/videos")
addMenu1(ext3,"a","%wt1% http://www.wolframalpha.com/")
addMenu2(tvs1,"y","t","%wop1t% https://www.youtube.com/user/ThunderboltsProject/videos")
;addMenu1(ext3,"i","%wt1% https://www.igdb.com/discover")
addMenu2(tvs1,"y","h","%wop1t% https://www.instagram.com/heatherjrock/?hl=en")
addMenu1(ext3,"","%wt1% https://duckduckgo.com/")
addMenu2(tvs1,"s","s","%wme% http://thesocial.ca/")
;addMenu2(tvs1,"","","%wt1% https://duckduckgo.com/?t=ffab&q=weather+&ia=weather")
;addMenu2(tvs1,"","","%wt1% https://www.startpage.com/#q=toronto+weather&*")
addMenu2(tvs1,"m","y","%wf1% https://mail.yahoo.com")
addMenu2(tvs1,"m","t","%wf1% https://easyweb.td.com")
addMenu2(tvs1,"m","i","%wf1% https://github.com/login")
addMenu2(tvs1,"m","h","%wf1% https://hotmail.com")
addMenu2(tvs1,"m","r","%wf1% https://mail.rediff.com/cgi-bin/login.cgi")
addMenu2(tvs1,"m","g","%wf1% https://www.gmail.com")
addMenu1(ext3,"p","%wt1% https://www.ncbi.nlm.nih.gov/pubmed/")
addMenu2(tvs1,"m","d","%wf1% https://www.dropbox.com/login")
addMenu1(ext3,"x","%wt1% https://xhamster.com/search.php?from=&q=busty+&qcat=video")
;addMenu1(ext3,"d","duckduckgo.com")
addMenu1(ext3,"l","C:\Users\z\Desktop\bin2\login.html") 
addMenu2(tvs1,"c","h","%wop1g% http://www.wtharvey.com")
addMenu2(tvs1,"c","b","%wop1g% http://www.chessbase.com")
addMenu2(tvs1,"c","g","%wop1g% http://www.chessgames.com")
addMenu2(tvs1,"s","y","%wop1t% http://www.twitter.com")
addMenu2(tvs1,"m","l","%wf1% https://login.live.com/login.srf?wa=wsignin1.0&rpsnv=13&ct=1564777376&rver=7.0.6737.0&wp=MBI_SSL&wreply=https://outlook.live.com/owa/%3fnlp%3d1%26RpsCsrfState%3d2defb976-9a4e-fc2c-3a19-234384fb20cb&id=292841&aadredir=1&CBCXT=out&lw=1&fl=dob%2cflname%2cwld&cobrandid=90015")
addMenu1(ext3,"v","%wt1% https://duckduckgo.com/?q=&iax=videos&ia=videos#")
addMenu2(tvs1,"y","y","%wop1t% http://www.youtube.com")
addMenu1(ext3,"e","%wt1% https://epicsearch.in/search?")
addMenu1(ext3,"s","%wt1% https://startpage.com/sp/search")
addMenu2(tvs1,"v","u","%wop1t% https://video.search.yahoo.com/search/video;_ylt=Awr9ImYt9lNfrkAAoiFXNyoA;_ylu=Y29sbwNncTEEcG9zAzEEdnRpZANBMDYxNV8xBHNlYwNwaXZz?p=&action=view")
addMenu2(tvs1,"v","v","%wt1% https://www.bing.com/videos/search?q=")
addMenu2(tvs1,"v","b","%wop1t% https://www.bing.com/videos/browsing?q=")
addMenu2(tvs1,"c","k","%wop1t% http://www.k4it.de/index.php?topic=egtb&lang=en")
addMenu2(tvs1,"f","s","%wme% http://www.espn.com/nfl/statistics/team/_/stat/total")
addMenu2(tvs1,"f","t","%wme% https://www.teamrankings.com/nfl/stat/touchdowns-per-game")
addMenu2(tvs1,"f","m","%wme% https://www.covers.com/sports/nfl/matchups")
addMenu2(tvs1,"b","m","%wme% https://www.covers.com/sports/nba/matchups")
addMenu2(tvs1,"b","o","%wme% https://www.covers.com/pageLoader/pageLoader.aspx?page=/data/nba/statistics/2018-2019/offense_pt_regular.html")
addMenu2(tvs1,"b","s","%wme% https://www.covers.com/pageLoader/pageLoader.aspx?page=/data/nba/statistics/2018-2019/statistics_regular.html")
addMenu2(tvs1,"b","d","%wme% https://www.covers.com/pageLoader/pageLoader.aspx?page=/data/nba/statistics/2018-2019/defense_pt_regular.html")
addMenu2(tvs1,"h","m","%wme% https://www.covers.com/sports/nhl/matchups")
addMenu2(tvs1,"h","o","%wme% https://www.covers.com/sport/hockey/nhl/2018-2019/statistics/team-scoring")
addMenu2(tvs1,"h","d","%wme% https://www.covers.com/sport/hockey/nhl/2018-2019/statistics/team-defense")
addMenu2(tvs1,"h","s","%wme% https://www.covers.com/sport/hockey/nhl/statistics")
addMenu2(tvs1,"h","r","%wme% https://www.covers.com/sport/hockey/nhl/standings")
addMenu1(ext3,"n","%wt1% https://ndb.nal.usda.gov/ndb/nutrients/index")
;addMenu2("/","","%wt1% https://ndb.nal.usda.gov/ndb/search/list") 
;addMenu2("","","%wt1% https://www.google.ca/maps/?hl=en") 
;addMenu2("","","%wt1% https://www.google.ca/search?q=&tbm=isch")
;addMenu2("","","%wt1% https://www.google.ca/search?q=&tbm=bks")
addMenu2(tvs1,"c","t","%wop1t% http://forum.chesstalk.com/forumdisplay.php?f=2&mode=linear")
;addMenu2(tvs1,"","","%wt1% https://scholar.google.com/scholar_lookup?")
;addMenu2(tvs1,"","","%wop1t% http://tactics.chessbase.com/")
;addMenu2("","", "G:\appdl\fileman\Q-Dir_Portable_x64\Q-Dir\Q-Dir.exe")
;addMenu2(tvs1,"","","%wt1% https://www.startpage.com/search?q=%clipboard%")
addMenu2(apps1,"w","o",  "C:\Users\z\AppData\Local\Programs\Opera\launcher.exe")
;addMenu2(apps1,".","e", "C:\Users\z\AppData\Local\Epic Privacy Browser\Application\epic.exe -width 942 -height 500")
addMenu1(wincmds3,"h", "h:\a\")
;wincmds3["h"]= "h:\a\"
addMenu2(apps1,"w","t", "G:\webbr\Tor Browser\Browser\firefox.exe")
;addMenu2(apps1,"","", "C:\Users\z\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\alockkeyboard.lnk") 
addMenu2(apps1,"w","m", "microsoft-edge:")
;addMenu2(tvs1,"","", microsoft-edge: https://www.youtube.com/")
;addMenu2(apps1,"","", G:\game\PokerStars\PokerStarsUpdate.exe")
;addMenu2(apps1,"","", "%preddir%uvnc bvba\UltraVNC\vncviewer.exe -dsmplugin SecureVNCPlugin.dsm -listen 5500")
;addMenu2(apps1,"","", "%preddir%uvnc bvba\UltraVNC\vncviewer.exe")
addMenu2(apps1,"'","a", "%preddir%AHK-Studio.ahk")
;addMenu2(apps1,"","", "%preddir%AutoIt3\SciTE\SciTE.exe")
addMenu2(apps1,"p","p", "C:\Users\Public\Desktop\Advanced Port Scanner.lnk")
;addMenu2(apps1,"h","z", "G:\a\ahk\AutoHotkey.chm")
addMenu2(lvl2,"\","h", "%predir%ahk\AutoHotkey.chm")
addMenu2(lvl2,"\","i", "%predir%AutoIt\AutoIt.chm")
addMenu2(lvl2,".","p", "%predir%sumatra\SumatraPDF-3.3-64.exe")
addMenu2(lvl2,".","s", "%predir%sumatrapdf\SumatraPDF-3.3-64.exe")
addMenu2(apps1,"h","h", "%predir%sumatra\SumatraPDF-3.3-64.exe C:\Users\z\AutoHotkey.chm")
addMenu2(apps1,"h","a", "%predir%sumatra\SumatraPDF-3.3-64.exe %preddir%AutoIt3\AutoIt.chm")
addMenu2(apps1,"h","d", "C:\Users\z\AppData\Local\documentalist\Documentalist.exe")
;addMenu2(apps1,"","", "%preddir%console\Console2\Console.exe")
;addMenu2(apps1,"","",  "%preddir%cmdrmini\Cmder.exe")
;addMenu2(apps1,"","", "%preddir%tight\tvnviewer.exe")
addMenu1(lvl1,"1", "%predir%tight\tvnviewer.exe -host=192.168.1.1 -password=yo")
addMenu1(lvl1,"2", "%predir%tight\tvnviewer.exe -host=192.168.1.2 -password=yo")
addMenu1(lvl1,"3", "%predir%tight\tvnviewer.exe -host=192.168.1.3 -password=yo")
addMenu1(lvl1,"4", "%predir%tight\tvnviewer.exe -host=192.168.1.4 -password=yo")

addMenu1(lvl1,"5", "%predir%tight\tvnviewer.exe -host=192.168.1.5 -password=yo")
addMenu1(lvl1,"6", "%predir%tight\tvnviewer.exe -host=192.168.1.6 -password=yo")
addMenu1(lvl1,"7", "%predir%tight\tvnviewer.exe -host=192.168.1.7 -password=yo")
addMenu1(lvl1,"8", "%predir%tight\tvnviewer.exe -host=192.168.1.8 -password=yo")
addMenu1(lvl1,"9", "%predir%tight\tvnviewer.exe -host=192.168.1.9 -password=yo")
addMenu1(lvl1,"0", "%predir%tight\tvnviewer.exe -host=192.168.1.0 -password=yo")
addMenu2(apps1,"l","7", "%predir%tight\tvnviewer.exe -host=192.168.1.7 -password=yo")
addMenu2(apps1,"l","3", "putty user@192.168.1.3 -pw live")
;addMenu2(apps1,"","", "%preddir%tight\tvnviewer.exe -optionsfile='C:\Users\z\Desktop\w4.vnc'")
;addMenu2(apps1,"","", "%preddir%tight\tvnviewer.exe -optionsfile='C:\Users\z\Desktop\w5.vnc'
    ;addMenu2(apps1,"","", %preddir%tight\tvnviewer.exe -optionsfile='C:\Users\z\Desktop\w6.vnc'")
    ;addMenu2(apps1,"","", '%preddir%tight\tvnviewer.exe -optionsfile='C:\Users\z\Desktop\w7.vnc'")
    ;addMenu2(apps1,"","", "%preddir%tight\tvnviewer.exe -listen 5000")
    ;addMenu2(apps1,"","", "cmd /c 'ssh root@192.168.1.3'")
    ;addMenu2(apps1,"","", ""%windir%\System32\cmd.exe /c start shell:AppsFolder\Microsoft.MicrosoftEdge_8wekyb3d8bbwe!MicrosoftEdge -private")
    ;addMenu2(apps1,"","", "mstsc /f") 
    addMenu1(wincmds3,"b", "g:\bin")
    addMenu1(wincmds3,"x", "c:\windows\temp")
    addMenu1(wincmds3,"z", "c:\users\z\appdata\local\temp")
    ;addMenu2(apps1,"","", "G:\a\wifiscan\WifiInfoView.exe")
    ;addMenu2(apps1,"","", "G:\a\wlman\WirelessNetView.exe")
    ;addMenu2(apps1,"","", "G:\view\Wireshark\wireshark")
    addMenu1(wincmds3,"j", "J:\elec")  
    addMenu1(wincmds3,"i", "I:\upl")
    addMenu1(wincmds3,"g", "G:\")
    addMenu1(wincmds3,"m", "m:\a")
    addMenu1(wincmds3,"u", "u:\d")
    addMenu1(wincmds3,"c", "c:\")
    addMenu1(wincmds3,"d", "c:\users\z\desktop\bin2")
    addMenu1(wincmds3,"t", "m:\tftp")
addMenu1(wincmds3,"a", "G:\appdl")
;addMenu1(wincmds3,"f", "c:\users\z")
addMenu1(wincmds3,"f", "F:\iso")
;addMenu2(apps1,"","", C:\users\z\desktop") 
addMenu1(wincmds3,"v", "g:\edtr\vim8")
addMenu1(wincmds3,"e", "C:\Users\z\AppData\Roaming\.emacs.d")
addMenu2(apps1,"i","i", "g:\edtr\vim8\vim81\gvim C:\Users\z\AppData\Roaming\.emacs.d\init.el")
addMenu2(apps1,"i","e", "G:\edtr\vim8\vim81\gvim.exe  'C:\Users\z\AppData\Roaming\.emacs'")
addMenu2(apps1,"i","s", "G:\edtr\vim8\vim81\gvim.exe  'C:\Users\z\AppData\Roaming\.emacs.d\.spacemacs.d\init.el'")
addMenu1(wincmds3,"w", "C:\Users\z\AppData\Roaming\Microsoft\Windows")
addMenu1(wincmds3,"s", "C:\Users\z\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup")
;addMenu2(apps1,"","", "G:\game\PokerStars\PokerStars.exe")
;addMenu2(apps1,"","", "g:\webbr\pale moon\Palemoon.exe")
addMenu2(apps1,"e","4", "emacs.exe -fg white -bg black -fs  -g 700x240+0+0")
;addMenu2(apps1,"","", "C:\Users\z\AppData\Local\Epic Privacy Browser\Application\epic.exe")
;addMenu2(apps1,"","",x86)\Microsoft Visual Stu1dio 10.0\Common7\IDE\VCExpress.exe")
addMenu2(apps1,"f","i", "iexplore")
;addMenu2(apps1,"","",  "C:\Users\Grandpa\Desktop\z\b\chromium\chrome-win32\chrome.exe")
;addMenu2(apps1,"","", "c:\Windows\Speech\Common\sapisvr.exe")
;addMenu2(apps1,"","", "C:\Users\Public\Downloads\boot.iso")
;addMenu2(apps1,"","", "C:\Program Files\Oracle\VirtualBox\VirtualBox.exe")
;addMenu2(apps1,"","", "C:\Users\Grandpa\Desktop\z\a\r31\bin\x64\Rgui.exe")
;addMenu2(apps1,"","", "notepad")
;addMenu2(apps1,"","", "C:\Users\Grandpa\Desktop\z\a\netw\64-bit\networx.exe")
addMenu2(apps1,"c","a", "G:\chess\arena_3.5.1\arena")
;addMenu2(apps1,"","", "C:\Windows\System32\SoundRecorder.exe")
;addMenu2(apps1,"","",  "C:\Users\z\Music\Playlists\all.wpl")
;addMenu2(apps1,"","", "C:\Users\z\Music\Playlists\a.wpl")
;addMenu2(apps1,"","", "C:\Users\Grandpa\Desktop\z")
;addMenu2(apps1,"","", "C:\windows\system32\snippingtool")
;addMenu2(apps1,"","", "C:\windows\system32\snippingtool /clip")
;addMenu2(apps1,"","", "%preddir%nircmd-x64\nircmd savescreenshot z:\%CurrentDateTime%.png")
;addMenu2(apps1,"","", "cmd /k 'copy z:\%CurrentDateTime%.png n:\screenshots\%CurrentDateTime%.png && dir n:\screenshots\%CurrentDateTime%.png'")
;addMenu2(apps1,"","", "cmd /c move z:\shot.png z:\%CurrentDateTime%.png")
;addMenu2(apps1,"","", "cmd /c 'pause && copy z:\%CurrentDateTime%.png   n:\screenshots\%CurrentDateTime%.png'")  
;addMenu2(apps1,"","", "cmd /k "dir n:\screenshots\%CurrentDateTime%.png") 
;addMenu2(apps1,"","", "z:\%CurrentDateTime%.png")
;addMenu2(apps1,"","", "C:\windows\system32\snippingtool")
;addMenu2(apps1,"","", "G:\fileman\qd63\Q-Dir\q-dir.exe")
addMenu2(apps1,"f","7", "g:\fileman\7z\7zfm")
;addMenu2(apps1,"","", "C:\Program Files\Hewlett-Packard\HP MediaSmart\SmartMenu.exe")
;addMenu2(apps1,"","", "C:\Users\Public\Downloads\7z\7zFM.exe")
addMenu2(apps1,"i","g",  "G:\edtr\vim8\vim81\gvim.exe  c:\grub2\grub.cfg")
;addMenu2(apps1,"","", "shutdown /s /t 1")
;addMenu2(apps1,"","", "shutdown /r")
;addMenu2(apps1,"","", "shutdown /r /t 1800")
;addMenu2(apps1,"","", "shutdown /a")
;addMenu2(apps1,"","", "netstat -e")
;addMenu2(apps1,"","", "shutdown /s")
addMenu2(apps1,"d","f", "g:\dler\freedler\fdm %clipboard%")
;addMenu2(apps1,"","", "\Users\Grandpa\Desktop\z\feeddaemon\FeedDemon.exe")
;addMenu2(apps1,"","",   "G:\edtr\vim8\vim81\gvim.exe  -f %fff%") 
;addMenu2(apps1,"","",  "G:\a\ahk\AU3_Spy.exe")
;addMenu2(apps1,"","", "G:\appdl\fileman\Q-Dir_Portable_x64\Q-Dir\Q-Dir.exe")
;addMenu2(apps1,"","",  "powershell")
addMenu2(apps1,"c","p","runas /user:aio\a powershell")
;addMenu2(apps1,"","", "G:\math\rs\bin\rstudio.exe")
;addMenu2(apps1,"","", "G:\math\r33\bin\R.exe")
addMenu2(apps1,"w","f", "C:\Program Files\Mozilla Firefox\firefox.exe")
;addMenu2(apps1,"","", "iexplore")
addMenu2(apps1,"o","c", "control")
addMenu2(apps1,"o","k", "calc")
;addMenu2(apps1,"","", "%preddir%cmdrmini\Cmder.exe")
;addMenu2(apps1,"","","runas /user:aio\a '%preddir%cmdrmini\Cmder.exe'")
;addMenu2(apps1,"","","runas /user:aio\a 'cmd'")
;addMenu2(apps1,"","","runas /user:aio\a \"netsh interface ip set dns name='Local Area Connection' static 208.67.222.222\"")
;addMenu2(apps1,"","","runas /user:aio\a 'cmd /k cd /d %userprofile%\desktop'")
;addMenu2(apps1,"","","runas /user:aio\a /savecred  'cmd  /k \"cd /d %userprofile%\desktop\"'")
;addMenu2(apps1,"","", "taskkill /f /fi 'status eq not responding'")
;addMenu2(apps1,"","", "%preddir%clink\clink_0.4.9\clink.bat")
;addMenu2(apps1,"","", "cmd /k 'cd /d %userprofile%\desktop'")
;addMenu2(apps1,"","", "%windir%\system32\WindowsPowerShell\v1.0\PowerShell_ISE.exe")
;addMenu2(apps1,"","","runas /user:aio\a '%windir%\system32\WindowsPowerShell\v1.0\PowerShell_ISE.exe'")
;addMenu2(apps1,"","", "notepad")
;addMenu2(apps1,"","", "G:\edtr\npp\notepad++.exe")
;addMenu2(apps1,"","", "calc")
;addMenu2(apps1,"","","c:\program\Windows Media Player\wmplayer.exe /prefetch:1")
addMenu2(apps1,"f","e", "explorer")
addMenu2(apps1,"m","7", "C:\Users\Grandpa\Music\Playlists\m7.wpl")
addMenu2(apps1,"i","v",  "G:\edtr\vim8\vim81\gvim.exe  g:\bin\vimkeys.vim")
;addMenu2(apps1,"","",  "G:\edtr\vim8\vim81\gvim.exe  C:\Users\z\_vimperatorrc")
addMenu2(apps1,"o","d", "C:\Users\Grandpa\Desktop\z\a\ditto\Ditto\Ditto.exe")
addMenu2(apps1,"o","s", "C:\Users\Grandpa\Desktop\skype.lnk")
;addMenu2(apps1,"","","emacs.exe -fg black -bg white -fs  -g 1450x725")
;addMenu2(apps1,"","",  "i:\apps\x86_64\bin\emacs.exe -fg black -bg white -fs  -g 1450x725")
;addMenu2(apps1,"","","emacs.exe -fg black -bg white -fs  -g 1450x725")
;addMenu2(apps1,"","","emacs.exe -fg black -bg white -fs  -g 1450x725")
;addMenu2(apps1,"","","emacs.exe -fg black -bg white -fs  -g 1450x725 --load "g:\bin\evilinit.el")
;addMenu2(apps1,"","","emacs.exe -fg black -bg white -fs  -g 1450x725 --load "g:\bin\minevil.el")
;addMenu2(apps1,"","","emacs.exe -fg black -bg white -fs  -g 1450x725 --load "g:\bin\spaceinit.el")
addMenu2(apps1,"v","b", "C:\Users\z\VirtualBox\VirtualBox.exe")
;addMenu2(apps1,"","", "G:\dler\freedler\fdm.exe")
;addMenu2(apps1,"","", "G:\edtr\vim8\vim81\gvim.exe -R")
;addMenu2(apps1,"","", "G:\edtr\vim8\vim81\gvim.exe")
;addMenu2(apps1,"","", "G:\edtr\Vim8\vim81\gvim.exe --noplugin")
;addMenu2(apps1,"","", "G:\edtr\Vim8\vim81\gvim.exe --noplugin -u '\edtr\Vim8\vim81\pack\SpaceVim-master\init.vim'")
;addMenu2(apps1,"","", "G:\edtr\nvim\Neovim\bin\nvim-qt.exe") 
;addMenu2(apps1,"","", "g:\clipb\ditto.exe")
;addMenu2(apps1,"","", "C:\Users\z\VirtualBox VMs\deb95l\deb95l.vbox")
;addMenu2(apps1,"","", "G:\appdl\fileman\Q-Dir_Portable_x64\Q-Dir\Q-Dir.exe")
addMenu2(apps1,"c","r", "h:\red.exe") 
addMenu2(apps1,"f","e", "explorer")
addMenu2(apps1,"e","v", "g:\edtr\vim8\vim81\vim")
addMenu2(apps1,"g","g", "g:\edtr\vim8\vim81\gvim")
addMenu2(apps1,"k","c", "c:\a\clink\clink.bat")
addMenu2(apps1,"c","c", "cmd /k 'cd c:\a'")
addMenu2(apps1,"c","p", "powershell" )
addMenu2(apps1,"c","i", "C:\a\PowerShell\7-preview\pwsh.exe") 
addMenu2(apps1,"o","t", "c:\windows\system32\taskmgr.exe" )
addMenu2(apps1,"k","n", "c:\\Windows\\System32\\taskkill.exe /im nginx.exe /f")
addMenu2(apps1,";","n", "c:\cmd\nginx.bat")
addMenu2(apps1,";","p", "c:\cmd\phpcgi.bat")
addMenu2(apps1,";","c", "cmd /k start /b c:\a\nginx-1.18.0\nginx-1.18.0\nginx.exe -c c:\\a\\nginx-1.18.0\\nginx-1.18.0\\conf\nginx.conf")
addMenu2(apps1,";","k", "cmd /k cd c:\a\nginx-1.18.0\nginx-1.18.0\")
addMenu2(apps1,";","m", "c:\a\vim\vim82\vim c:\a\nginx-1.18.0\nginx-1.18.0\conf\nginx.conf")
addMenu2(apps1,";","o", "c:\a\vim\vim82\vim c:\a\php8\php.ini")
addMenu2(apps1,";","w", "c:\a\vim\vim82\vim c:\a\wordpress\wp-config.php")
addMenu2(apps1,"i","K", "c:\a\vim\vim82\vim c:\cmd\keymenu.ahk")
addMenu2(apps1,"i","e", "c:\a\vim\vim82\vim c:\cmd\.emacs")
addMenu2(apps1,"w","o", "c:\a\opera\launcher.exe")
addMenu2(apps1,"w","4", "C:\Program Files\Mozilla Firefox\firefox.exe http://192.168.1.4:100/")
addMenu2(apps1,"w","f", "C:\Program Files\Mozilla Firefox\firefox.exe")
addMenu2(apps1,"e","q", "c:\a\emacs\bin\runemacs --debug-init")
addMenu2(apps1,"e","a", "c:\a\emacs\bin\runemacs")
addMenu2(apps1,"e","d", "cmd /k start /b c:\a\emacs\bin\emacs.exe -daemon")
addMenu2(apps1,"e","w", "c:\a\emacs\bin\emacsclientw -c")
addMenu2(apps1,"e","s", "c:\a\emacs\bin\emacs -nw")

addMenu2(apps1,"o","l", "C:\Users\z\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\alockkeyboard.lnk") 

addMenu2(apps1,"e","r","emacs.exe -fg black -bg white -fs  -g 1450x725 --load 'g:\bin\evilinit.el'")
addMenu2(apps1,"e","m","emacs.exe -fg black -bg white -fs  -g 1450x725 --load 'g:\bin\minevil.el'")
addMenu2(apps1,"e","d","emacs.exe -fg black -bg white -fs  -g 1450x725 --load 'g:\bin\spaceinit.el'")
addMenu2(apps1,"i","b", "G:\edtr\Vim8\vim81\gvim.exe --noplugin -u 'G:\edtr\Vim8\vim81\pack\SpaceVim-master\init.vim'")
addMenu2(apps1,"e","q", "G:\edtr\nvim\Neovim\bin\nvim-qt.exe")

addMenu2(apps1,"c","x","runas /user:aio\a %preddir%cmdrmini\Cmder.exe'")
addMenu2(apps1,"k","c","runas /user:aio\a 'cmd'")
addMenu2(apps1,"o","d","runas /user:aio\a 'netsh interface ip set dns name='Local Area Connection' static 208.67.222.222'")
;addMenu2(apps1,"[","","runas /user:aio\a 'cmd /k cd /d %userprofile%\desktop'")
;addMenu2(apps1,"","","runas /user:aio\a /savecred  'cmd  \"/k cd /d %userprofile%\desktop\"'")
;addMenu2(apps1,"","", "taskkill /f /fi 'status eq not responding'")
addMenu2(apps1,"c","l", "%preddir%clink\clink_0.4.9\clink.bat")
;addMenu2(apps1,"","", "cmd /k 'cd /d %userprofile%\desktop'")
addMenu2(apps1,"k","i","runas /user:aio\a ''%windir%\system32\WindowsPowerShell\v1.0\PowerShell_ISE.exe'")
addMenu2(tvs1,"i","g","%wt1% https://www.google.ca/search?q=busty+granny&ie=utf-8&oe=utf-8&gws_rd=cr&ei=t0pDWOaGLunZjwSa1LXYAw")
addMenu2(apps1,"e","p", "G:\edtr\npp\notepad++.exe")
addMenu2(apps1,"m","m","\Windows Media Player\wmplayer.exe /prefetch:1")
addMenu2(apps1,"w","f", "C:\Program Files\Mozilla Firefox\firefox.exe")
addMenu2(apps1,"d","r", "G:\math\rs\bin\rstudio.exe")
addMenu2(apps1,"c","T", "G:\math\r33\bin\R.exe")
addMenu2(apps1,"v","b", "C:\Program Files\Oracle\VirtualBox\VirtualBox.exe")
addMenu2(apps1,"d","t", "C:\Users\Grandpa\Desktop\z\a\r31\bin\x64\Rgui.exe")
addMenu2(apps1,"n","n", "C:\Users\Grandpa\Desktop\z\a\netw\64-bit\networx.exe")
addMenu2(apps1,"m","a",  "C:\Users\z\Music\Playlists\all.wpl")
addMenu2(apps1,"m","z", "C:\Users\z\Music\Playlists\a.wpl")
addMenu2(apps1,"i","s",  "G:\a\ahk\AU3_Spy.exe")
addMenu2(apps1,"f","q", "G:\appdl\fileman\Q-Dir_Portable_x64\Q-Dir\Q-Dir.exe")
addMenu2(tvs1,"w","e", "C:\Users\z\AppData\Local\Epic Privacy Browser\Application\epic.exe")
;addMenu1(ext3,"d","duckduckgo.com")
addMenu2(tvs1,"d","v","\Microsoft Visual Stu1dio 10.0\Common7\IDE\VCExpress.exe")

addMenu2(apps1,"i","w", "G:\a\wifiscan\WifiInfoView.exe")
addMenu2(apps1,"i","n", "G:\a\wlman\WirelessNetView.exe")
addMenu2(apps1,"c","j", "%preddir%cmdrmini\Cmder.exe")
addMenu2(apps1,"c","h", "%preddir%console\Console2\Console.exe")
addMenu2(apps1,"c","a", "%preddir%AHKCommandPicker-1.3.1\AHKCommandPicker-1.3.1\src\AHKCommandPicker.ahk")
;addMenu2(apps1,"i","a", "G:\edtr\Vim8\vim81\gvim.exe --noplugin '%A_ScriptFullPath%'")
addMenu2(apps1,"i","a","G:\edtr\Vim8\vim81\gvim.exe --noplugin '%preddir%AHKCommandPicker-1.3.1\AHKCommandPicker-1.3.1\src\Commands\MyCommands.ahk'")
addMenu2(apps1,"i","e", "G:\edtr\vim8\vim81\gvim.exe  'C:\Users\z\AppData\Roaming\.emacs'") 
addMenu2(apps1,"i","s", "G:\edtr\vim8\vim81\gvim.exe  'C:\Users\z\AppData\Roaming\.emacs.d\.spacemacs.d\init.el'")

addMenu2(apps1,"c","v", "%preddir%console\Console2\Console.exe")
addMenu2(apps1,"c","k",  "%preddir%cmdrmini\Cmder.exe")
addMenu2(apps1,"l","3","%preddir%tight\tvnviewer.exe -optionsfile='C:\Users\z\Desktop\w3.vnc'")

addMenu2(apps1,"l","6", "%preddir%tight\tvnviewer.exe -optionsfile='C:\Users\z\Desktop\w6.vnc'")
addMenu2(apps1,"l","7", "%preddir%tight\tvnviewer.exe -optionsfile='C:\Users\z\Desktop\w7.vnc'")
addMenu2(apps1,"p","p", "C:\Users\Public\Desktop\Advanced Port Scanner.lnk")

addMenu2(apps1,"h","a", "G:\a\ahk\AutoHotkey.chm")
addMenu2(apps1,"l","v", "%preddir%uvnc bvba\UltraVNC\vncviewer.exe -dsmplugin SecureVNCPlugin.dsm -listen 5500")
addMenu2(apps1,"l","b", "%preddir%uvnc bvba\UltraVNC\vncviewer.exe")

addMenu2(apps1,"e","v", "g:\edtr\vim8\vim81\vim")
addMenu2(apps1,"e","g", "g:\edtr\vim8\vim81\gvim")
addMenu2(apps1,"c","l", "c:\a\clink\clink.bat")
addMenu2(apps1,"c","x", "cmd /k 'cd c:\a'")
addMenu2(apps1,"c","p", "powershell" )
addMenu2(apps1,"c","i", "C:\a\PowerShell\7-preview\pwsh.exe") 
addMenu2(apps1,"o","t", "c:\windows\system32\taskmgr.exe" )
addMenu2(apps1,"w","o", "c:\a\opera\launcher.exe")
addMenu2(apps1,"w","4", "C:\Program Files\Mozilla Firefox\firefox.exe http://192.168.1.4:100/")

addMenu2(apps1,"w","f", "C:\Program Files\Mozilla Firefox\firefox.exe")
addMenu2(apps1,"e","q", "c:\a\emacs\bin\runemacs --debug-init")
addMenu2(apps1,"e","a", "c:\a\emacs\bin\runemacs")
addMenu2(apps1,"e","d", "cmd /k start /b c:\a\emacs\bin\emacs.exe -daemon")
addMenu2(apps1,"e","w", "c:\a\emacs\bin\emacsclientw -c")
addMenu2(apps1,"e","s", "c:\a\emacs\bin\emacs -nw")

addMenu2(apps1,"o","l", "C:\Users\z\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\alockkeyboard.lnk") 
addMenu2(tvs1,"z", "e", "%ev% %cmddir%.emacs")
addMenu2(tvs1,"z", "v","%ev% %cmddir%vimkeys.vim")
addMenu2(tvs1,"z", "u","%ev% %predir%AHKCommandPicker-1.3.1\AHKCommandPicker-1.3.1\src\Commands\urls.ahk")
addMenu2(tvs1,"z", "l", "%ev% %predir%AHKCommandPicker-1.3.1\AHKCommandPicker-1.3.1\src\Commands\urllauncher.ahk")
addMenu2(tvs1,"z", "k","%ev% %cmddir%keymenu.ahk")
addMenu2(tvs1,"z", "a","%ev% %cmddir%ahk.ahk" )
addMenu2(tvs1,"z", "r","%ev% %cmddir%rkeys.ahk")
addMenu2(tvs1,"z", "s","%ev% %A_ScriptFullPath%")
addMenu2(tvs1,"z", "i","%ev% %cmddir%aioahk.ahk")


;; begin added  20220615Jun15Wed-0941PM
global uvncp:=5500
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
getexec(cmd,cargs:="",pre:="")
{
  if (pre=""){
pre :=predir
  } else {

pre :=""
  }
  tttt = %pre%%cmd% %cargs%
    return  tttt
}

addMenu2(apps7,"0","0","%wo0%")
addMenu2(apps7,"1","0","%wt0%")
addMenu2(apps7,"3","0","%we0%")

addMenu2(apps7,"0","1","%awop1%")
addMenu2(apps7,"0","2","%awop2%")
addMenu2(apps7,"0","3","%awop3%")
addMenu2(apps7,"0","4","%awop4%")

addMenu2(apps7,"1","1","%awtb1%")
addMenu2(apps7,"1","2","%awtb2%")
addMenu2(apps7,"1","3","%awtb3%")
addMenu2(apps7,"1","4","%awtb4%")

addMenu2(apps7,"3","1","%awep1%")
addMenu2(apps7,"3","2","%awep2%")
addMenu2(apps7,"3","3","%awep3%")
addMenu2(apps7,"3","4","%awep4%")


addMenu2(apps7,"4","1","%wep1%")
addMenu2(apps7,"4","2","%wep2%")
addMenu2(apps7,"4","3","%wep3%")
addMenu2(apps7,"4","3","%wep4%")

addMenu2(apps7,"9","1","%wop1%")
addMenu2(apps7,"9","2","%wop2%")
addMenu2(apps7,"9","3","%wop3%")
addMenu2(apps7,"9","4","%wop4%")

addMenu2(apps7,"9","m","%wopm0%")
addMenu2(apps7,"7","4","%predir%wb\opm0\opera.exe --user-data-dir=%profdir%opm04")
addMenu2(apps7,"7","5","%predir%wb\opm0\opera.exe --user-data-dir=%profdir%opm05")
addMenu2(apps7,"7","6","%predir%wb\opm0\opera.exe --user-data-dir=%profdir%opm06")
addMenu2(apps7,"5","7","%predir%wb\ep2\Application\epic.exe --user-data-dir=%profdir%ep27  ")
addMenu2(apps7,"5","8","%predir%wb\ep2\Application\epic.exe --user-data-dir=%profdir%ep28  ")
addMenu2(apps7,"5","9","%predir%wb\ep2\Application\epic.exe --user-data-dir=%profdir%ep29  ")
addMenu2(apps7,"f","v","%predir%vifm\vifm.exe")
addMenu2(apps7,"s","l","%ffox% %ffpriv% loblaws.ca")
addMenu2(apps7,"s","e","%ffox% %ffpriv% essenceoflifeorganics.com ")
addMenu2(apps7,"f","e","C:\Program Files\Everything\Everything.exe")
addMenu2(apps2,"q","",getexec(ee27re, "--load %cmddir%.emacs")) 
addMenu2(apps7,"s","i","%ee27re% --load %cmddir%init.el")
addMenu2(apps2,"","",getexec("tight\tvnviewer"))
addMenu2(apps7,"l","l","%cmddir%login.bat")
addMenu2(apps7,"l","k","%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\alockkeyboard.lnk")
addMenu2(dirs1,"a","l","%userprofile%\AppData\local")
addMenu2(dirs1,"a","r","%userprofile%\AppData\roaming")
addMenu2(dirs1,"a","p","%userprofile%\AppData\local\programs")
addMenu2(dirs,"o","p","c:\program files ")

addMenu2(dirs,"b","g","c:\grub2")
addMenu2(dirs,"o","w","c:\windows")
addMenu2(apps7,"w","m","microsoft-edge:")
addMenu2(urls1,"p","r","%wtb1% http://www.renseradio.com/")
addMenu2(urls1,"p","h","%wtb1% https://thehill.com/")
addMenu2(urls1,"p","y","%wtb1% https://www.hilltimes.com/")
addMenu2(tvs1,"y","m","microsoft-edge:https://www.youtube.com/")
addMenu2(apps7,"g","p","G:\game\PokerStars\PokerStarsUpdate.exe")
addMenu2(urls1,"s","n","%psport% https://www.covers.com/sport/football/nfl/printsheet")
addMenu2(apps2,"u","l",getexec("UltraVNC\vncviewer.exe", "-dsmplugin SecureVNCPlugin.dsm -listen" . %uvncp%))
addMenu2(apps2,"u","v",getexec("UltraVNC\vncviewer.exe"))
;gourl("walmart.ca/search/")
addMenu2(urls1,"n","l","%wep1y% https://www.youtube.com/results?search_query=news+live")
addMenu2(apps7,"h","s","%predir%AHK-Studio.ahk")
addMenu2(apps7,"e","s","%predir%AutoIt3\SciTE\SciTE.exe")
addMenu2(apps7,"/","s","%ev% c:/cmd/search.html ")
addMenu2(apps7,"p","s","C:\Users\Public\Desktop\Advanced Port Scanner.lnk")
addMenu2(apps7,"h","h","G:\a\ahk\AutoHotkey.chm")
addMenu2(urls1,"g","t","%wop1t% https://www.tvguide.com/listings/")
addMenu2(urls1,"g","v","%wop1t% https://www.ontvtonight.com/guide/")
addMenu2(urls1,"a","k","%wop1t% https://www.kijiji.ca/h-city-of-toronto/1700273")
addMenu2(urls1,"m","a","%wop1t% https://ustvgo.tv/amc-live/")
addMenu2(urls1,"t","a","%wop1t% https://ustvgo.tv/abc/")
addMenu2(urls1,"t","c","%wop1t% https://ustvgo.tv/cbs/")
addMenu2(urls1,"n","c","%wop1t% https://www.cbsnews.com/live/")
addMenu2(urls1,"t","u","%wop1t% https://ustvgo.tv/usa-network-live/")
addMenu2(urls1,"t","w","%wop1t% https://ustvgo.tv/we-tv")
addMenu2(urls1,"t","b","%wop1t% https://ustvgo.tv/bbc-america-live/")
addMenu2(urls1,"m","s","%wop1t% https://ustvgo.tv/syfy-channel-live/")
addMenu2(urls1,"t","s","%wop1t% https://ustvgo.tv/sundance-tv/")
addMenu2(urls1,"t","2","%wme% https://www.cp24.com/video?")
;addMenu2(urls1,"t","2","%wt% https://www.cp24.com/video?clipId=1921747")
addMenu2(urls1,"n","e","%wop1t% https://www.euronews.com/live")
addMenu2(urls1,"n","w","%wop1t% http://www.live-tv-radio.com/tv/europe.shtml")
addMenu2(urls1,"n","q","%wop1t% https://www.squidtv.net/europe/")
addMenu2(urls1,"n","a","%wop1t% https://abcnews.go.com/Live/")
addMenu2(urls1,"g","g","%wop1t% https://ustv247.tv/guide/index.html")
addMenu2(urls1,"n","u","%wop1t% https://usatodaynews.live/us-news/")
addMenu2(urls1,"j","w","%wop1t% https://www.twitch.tv/directory")
addMenu2(urls1,"n","o","%wop1t% https://onlineradiobox.com/us/genre/news/")
addMenu2(urls1,"n","b","%wop1t% https://www.cbsnews.com/live/video/")
addMenu2(urls1,"l","n","%prad% https://www.iheart.com/live/country/US/city/newyork-ny-159/?genreId=9")
addMenu2(urls1,"/","t","%wop1t% https://twitter.com/search-home")
addMenu2(urls1,"l","k","%wop1t% https://www.kezi.com/livestream/")
addMenu2(urls1,"n","C","%wop1t% https://www.cbsnews.com/video/#x")
addMenu2(apps7,"p","s","%predir%sumatra\SumatraPDF-3.3-64.exe %userprofile%\AutoHotkey.chm")
addMenu2(apps7,"h","i","%predir%sumatra\SumatraPDF-3.3-64.exe %predir%AutoIt3\AutoIt.chm")
addMenu2(apps7,"h","d","%userprofile%\AppData\Local\documentalist\Documentalist.exe")
addMenu2(apps2,";","c",getexec("console\Console2\Console.exe"))
addMenu2(apps2,";","x",getexec( "cmdrmini\Cmder.exe"))
addMenu2(apps2,"l","q",getexec("Tight\tvnviewer.exe"))
addMenu2(apps2,"l","6",getexec("Tight\tvnviewer.exe" . " -host=192.168.1.6 -password=yo "))
addMenu2(urls1,"'","1","192.168.1.1")
addMenu2(urls1,"'","0","192.168.0.1")
addMenu2(apps2,"[","2",getexec("putty\putty","user@192.168.1.2 -pw live"))
addMenu2(apps2,"[","3",getexec("putty\putty","user@192.168.1.3 -pw live"))
addMenu2(apps2,"[","4",getexec("putty\putty","user@192.168.1.4 -pw live"))
addMenu2(apps2,"[","5",getexec("putty\putty","user@192.168.1.5 -pw live"))
addMenu2(apps2,"[","6",getexec("putty\putty","user@192.168.1.6 -pw live"))
addMenu2(apps2,"[","7",getexec("putty\putty","user@192.168.1.7 -pw live"))
addMenu2(apps2,"[","8",getexec("putty\putty","user@192.168.1.8 -pw live"))
addMenu2(apps2,"[","9",getexec("putty\putty","user@192.168.1.9 -pw live"))
addMenu2(apps2,"]","m",getexec("mstsc","","x"))
addMenu2(apps2,"]","2",getexec("mstsc","/v:192.168.1.2  ","x"))
addMenu2(apps2,"]","3",getexec("mstsc","/v:192.168.1.3  ","x"))
addMenu2(apps2,"]","4",getexec("mstsc","/v:192.168.1.4  ","x"))
addMenu2(apps2,"]","5",getexec("mstsc","/v:192.168.1.5  ","x"))
addMenu2(apps2,"]","6",getexec("mstsc","/v:192.168.1.6  ","x"))
addMenu2(apps2,"]","7",getexec("mstsc","/v:192.168.1.7  ","x"))
addMenu2(apps2,"]","8",getexec("mstsc","/v:192.168.1.8  ","x"))
addMenu2(apps2,"]","9",getexec("mstsc","/v:192.168.1.9  ","x"))

addMenu2(apps2,",","6",getexec("Tight\tvnviewer.exe" . " -host=192.168.1.6 -password=yo "))
addMenu2(apps2,",","7",getexec("Tight\tvnviewer.exe" . " -host=192.168.1.7 -password=yo "))
addMenu2(apps2,",","8",getexec("Tight\tvnviewer.exe" . " -host=192.168.1.8 -password=yo "))
addMenu2(apps2,",","9",getexec("Tight\tvnviewer.exe" . " -host=192.168.1.9 -password=yo "))
addMenu2(apps2,",","2",getexec("Tight\tvnviewer.exe" . " -host=192.168.1.2 -password=yo "))
addMenu2(apps2,",","3",getexec("Tight\tvnviewer.exe" . " -host=192.168.1.3 -password=yo "))
addMenu2(apps2,",","4",getexec("Tight\tvnviewer.exe" . " -host=192.168.1.4 -password=yo "))
addMenu2(apps2,",","5",getexec("Tight\tvnviewer.exe" . " -host=192.168.1.5 -password=yo "))
addMenu2(apps7,".","2","%predir%tight\tvnviewer.exe -optionsfile='%userprofile%\Desktop\w2.vnc'")
addMenu2(apps7,".","3","%predir%tight\tvnviewer.exe -optionsfile='%userprofile%\Desktop\w3.vnc'")
addMenu2(apps7,".","4","%predir%tight\tvnviewer.exe -optionsfile='%userprofile%\Desktop\w4.vnc'")
addMenu2(apps7,".","5","%predir%tight\tvnviewer.exe -optionsfile='%userprofile%\Desktop\w5.vnc'")
addMenu2(apps7,".","6","%predir%tight\tvnviewer.exe -optionsfile='%userprofile%\Desktop\w6.vnc'")
addMenu2(apps7,".","7","%predir%tight\tvnviewer.exe -optionsfile='%userprofile%\Desktop\w7.vnc'")
addMenu2(apps7,".","8","%predir%tight\tvnviewer.exe -optionsfile='%userprofile%\Desktop\w8.vnc'")
addMenu2(apps7,".","9","%predir%tight\tvnviewer.exe -optionsfile='%userprofile%\Desktop\w9.vnc'")
addMenu2(apps7,".","l","%predir%tight\tvnviewer.exe -listen 5000")
;addMenu2(urls1,"-","r","%wt% https://mail.rediff.com/cgi-bin/login.cgi")
addMenu2(urls1,"-","g","%pmail% https://accounts.google.com/signin/v2/identifier?service=mail&passive=true&rm=false&continue=https://mail.google.com/mail/&ss=1&scc=1&ltmpl=default&ltmplcache=2&emr=1&osid=1&flowName=GlifWebSignIn&flowEntry=ServiceLogin")
addMenu2(urls1,"-","d","%pmail% http://dropbox.com")
addMenu2(urls1,"-","t","%pmail% https://authentication.td.com/uap-ui/index.html?consumer=easyweb&locale=en_CA#/login/easyweb-getting-started")
addMenu2(urls1,"-","b","%pmail% ")
addMenu2(urls1,"-","s","%pmail% http://sync.com")
addMenu2(urls1,"-","p","%pmail% http://pcloud.com")
addMenu2(urls1,"-","m","%pmail% http://mega.nz")
addMenu2(urls1,"=","f","%userprofile%\Desktop\bin2\finance.html")
addMenu2(urls1,"/","g","%psearch% https://gh1232.github.io/search.html")
addMenu2(urls1,"/","s","%psearch% file:///c:/cmd/search.html")
addMenu2(urls1,"/","n","%userprofile%\desktop\bin2\news.html")
addMenu2(urls1,"/","l","%psearch% file:///u:\d\newslinks.html")
addMenu2(urls1,"/","u","file:///c:\cmd\surf.html")
addMenu2(urls1,"/","m","%userprofile%\Desktop\bin2\email.html")
addMenu2(urls1,"g","d"," %ffox%  %ffpriv% https://www.draftkings.com/mycontests")
addMenu2(urls1,"=","s","%pspeed% https://speedof.me/")
addMenu2(urls1,"=","d","%pspeed% https://fast.com/")
addMenu2(urls1,"=","x","%pspeed% http://speedtest.xfinity.com/")
addMenu2(urls1,"=","n","%pspeed% http://www.speedtest.net/")
addMenu2(urls1,"=","b","%pspeed% https://www.bandwidthplace.com/")
addMenu2(urls1,"/","p","%psearch% https://patents.google.com/?q=")
addMenu2(apps2,"o","3",getexec( "ssh"," root@192.168.1.3 "))
addMenu2(apps2,"p","3",getexec( "putty\putty"," root@192.168.1.3 "))
addMenu2(dirs1,"w","m","%windir%\System32\cmd.exe /c start shell:AppsFolder\Microsoft.MicrosoftEdge_8wekyb3d8bbwe!MicrosoftEdge -private")
addMenu2(apps7,"l","p","C:\Users\Public\Desktop\PuTTY (64-bit).lnk")
addMenu2(apps2,"t","x",getexec("mstsc","/f ","x"))
addMenu2(dirs1,"o","a","%cmddir%")
addMenu2(dirs1,"o","t","c:\windows\temp")
addMenu2(dirs1,"a","t","%userprofile%\appdata\local\temp")
addMenu2(urls1,"h","m","%plearn% https://www.makeuseof.com/")
addMenu2(urls1,"h","g","%plearn% https://www.howtogeek.com/")
addMenu2(urls1,"s","o","%pshop% https://pcoptimum.ca")
addMenu2(apps7,"n","i","G:\a\wifiscan\WifiInfoView.exe")
addMenu2(apps7,"n","v","G:\a\wlman\WirelessNetView.exe")
addMenu2(apps7,"n","w","G:\view\Wireshark\wireshark")
addMenu2(dirs1,"o","e","J:\elec  ")
addMenu2(apps7,"o","u","%predir%upl")
addMenu2(apps7,"o","g","G:\")
addMenu2(apps7,"o","m","m:\a")
addMenu2(apps2,";","z",getexec("cmdrmini\Cmder.exe"))
addMenu2(apps2,";","a",getexec("console\Console2\Console.exe"))
addMenu2(apps2,"a","c",getexec("AHKCommandPicker-1.3.1\AHKCommandPicker-1.3.1\src\AHKCommandPicker.ahk"))
addMenu2(apps7,"s","v","%predir%vim82\gvim.exe -u c:\cmd\vimkeys.vim  --noplugin '%A_ScriptFullPath%'")
addMenu2(apps7,"s","r","%predir%vim82\gvim.exe -u c:\cmd\vimkeys.vim  --noplugin '%userprofile%\desktop\bin2\myruns.ahk'")
addMenu2(apps7,"s","c","%predir%vim82\gvim.exe -u c:\cmd\vimkeys.vim  --noplugin '%predir%AHKCommandPicker-1.3.1\AHKCommandPicker-1.3.1\src\Commands\MyCommands.ahk'")
addMenu2(dirs1,"o","u","u:\d")
addMenu2(dirs1,"o","c","c:\")
addMenu2(dirs1,"o","b","%userprofile%\desktop\bin2")
addMenu2(dirs1,"o","t","m:\tftp")
addMenu2(dirs1,"o","a","G:\appdl")
addMenu2(dirs1,"o","h","H:\dl")
addMenu2(dirs1,"o","z","%userprofile%")
addMenu2(dirs1,"o","f","F:\iso")

addMenu2(dirs1,"o","d","%userprofile%\desktop ")
addMenu2(dirs1,"e","v","%predir%vim8")
addMenu2(dirs1,"e","e","%userprofile%\AppData\Roaming\.emacs.d")
addMenu2(apps7,"s","j","%predir%vim82\gvim.exe -u c:\cmd\vimnkeys.vim %userprofile%\AppData\Roaming\.emacs.d\init.el")
addMenu2(apps7,"s","r","%predir%vim82\gvim.exe -u c:\cmd\vimkeys.vim   %userprofile%\AppData\Roaming\.emacs")
addMenu2(apps7,"s","s","%predir%vim82\gvim.exe -u c:\cmd\vimkeys.vim   '%userprofile%\AppData\Roaming\.emacs.d\.spacemacs.d\init.el'")
addMenu2(dirs1,"o","w","%userprofile%\AppData\Roaming\Microsoft\Windows")
addMenu2(dirs1,"o","x","%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup")
addMenu2(urls1,"n","o","%wop1t% https://ustvgo.tv/one-america-news-network/")
addMenu2(urls1,"g","m","%wop1t% https://www.tvguide.com/listings/#movies")

addMenu2(urls1,"n","6","%wop1t% http://player.680news.com/")
addMenu2(urls1,"l","g","%pnewstor% https://gem.cbc.ca/live/1961983043633")
addMenu2(urls1,"t","g","%pnewstor% https://gem.cbc.ca/")
addMenu2(urls1,"n","5","%pnewstor% https://www.cbc.ca/player/news/tv shows/the 0national")
addMenu2(urls1,"n","2","%pnewstor% https://www.iheart.com/live/cp24-7796/")
addMenu2(urls1,"n","1","%pnewstor% https://www.iheart.com/live/ctv-news-7798/")
addMenu2(urls1,"l","t","%pnewstor% https://www.iheart.com/live/country/CA/city/toronto-on-584/")
addMenu2(urls1,"n","%","%pnewstor% https://www.cbc.ca/player/play/2670346028")
addMenu2(urls1,"n","9","%pnewstor% https://www.ctvnews.ca/live?autoPlay=true") 
addMenu2(urls1,"r","w","%wop1t% http://worldradiomap.com/list/")
addMenu2(urls1,"r","t","%wop1t% worldradiomap.com/ca/toronto")
;addMenu2(urls1,"n","$","%wt% https://www.cbc.ca/player/play/1711321155969")
addMenu2(urls1,"n","4","%pnewstor% https://www.cbc.ca/")
addMenu2(urls1,"n","5","%pnewstor% https://www.cbc.ca/player/news/tv``%20shows/the``%20national/latest``%20broadcast")
addMenu2(urls1,"m","8","%pnewstor% https://www.iheart.com/live/iheart80s-radio-5060/")
addMenu2(urls1,"m","1","%pnewstor% https://www.iheart.com/live/2010s-the-decade-8465/")
addMenu2(urls1,"m","2","%pnewstor% https://www.iheart.com/live/iheart2010s-radio-8478/")
addMenu2(urls1,"m","7","%pnewstor% https://www.iheart.com/live/b-1073-6731/")

addMenu2(urls1,"n","(","%pnewstor% https://www.ctvnews.ca/live?autoPlay=true")
addMenu2(urls1,"n","!","%pnewstor% https://www.ctvnews.ca/ctv-national-news")
addMenu2(urls1,"/","h","%psearch% https://www.google.ca/")
addMenu2(urls1,"/","m","%psearch% https://www.google.ca/maps/@43.6314075,-79.3941305,14z")
addMenu2(urls1,"/","p","%psearch% https://www.wikipedia.org/")
addMenu2(urls1,"/","2","%psearch% http://www.pof.com/basicsearch.aspx?iama=m&minage=18&maxage=24&seekinga=f&ethnicity=0&sorting=0&miles=35&country=17&imagesetting=0&page=1&count=600")
addMenu2(urls1,"","7","%psearch% http://www.pof.com/basicsearch.aspx?iama=m&minage=44&maxage=74&z_code=M5T3A4&body=4_5&seekinga=f&ethnicity=0&sorting=0&miles=35&country=17&imagesetting=0&page=1&count=600")
addMenu2(urls1,"/","3","%psearchtor% https://toronto.craigslist.ca/search/w4m")
addMenu2(urls1,"/","5","%psearchtor% https://toronto.craigslist.ca/search/cas/?query=w4m")
addMenu2(urls1,"/","z","%psearchtor% https://toronto.craigslist.org/d/free-stuff/search/zip")
addMenu2(urls1,"/","8","%psearchtor% https://toronto.craigslist.org/d/computers/search/sya")
addMenu2(urls1,"/","9","%psearchtor% https://toronto.craigslist.org/search/sss/")
addMenu2(urls1,"/","6","%psara% https://www.youtube.com/user/dayflirts/videos")
addMenu2(urls1,"/","^","%psara% https://www.twitch.tv/saracantaloupes/videos")
addMenu2(urls1,"/","&","%psara% https://www.instagram.com/saraparah/")
addMenu2(urls1,"/","(","%psara% https://twitter.com/sara_parah")
;addMenu2(urls1,"/","%","%wt% https://www.youtube.com/channel/UC2lIa5vJrEx8nBOA90hfIMA/videos")
addMenu2(urls1,"/","#","%psara% https://www.youtube.com/user/JustinWayneDating/videos")
addMenu2(urls1,"/","!","%psara% https://www.youtube.com/user/SimplySaranade/videos")
addMenu2(urls1,"/","@","%psara% https://www.youtube.com/user/itsmeSTEPANKA/videos")
addMenu2(urls1,"/","$","%psara% https://www.younow.com/StepankaMatto")
addMenu2(urls1,"/","~","%psara% https://www.youtube.com/user/OGpuzik/videos")
addMenu2(urls1,"/","a","%psearch% http://www.wolframalpha.com/")
addMenu2(urls1,"=","t","%plearn% https://www.youtube.com/user/ThunderboltsProject/videos")
addMenu2(urls1,"/","o","%psearch% https://www.igdb.com/discover")
addMenu2(urls1,"/",")","%psara% https://www.instagram.com/heatherjrock/?hl=en")
addMenu2(urls1,"f","d","%psearch% https://duckduckgo.com/")
addMenu2(urls1,"f","s","%psoc% thesocial.ca/")
addMenu2(urls1,"f","w","%psearch% https://duckduckgo.com/?t=ffab&q=weather+&ia=weather")
;addMenu2(urls1,"f","p","%wt% https://www.startpage.com/#q=toronto+weather&*")
addMenu2(urls1,"m","y","%pmail% https://login.yahoo.com/m?.src=ym&.lang=en-US&.intl=us&.done=https://mail.yahoo.com/d")
addMenu2(urls1,"m","r","%pmail% https://mail.rediff.com/cgi-bin/login.cgi")
addMenu2(urls1,"m","g","%pmail% https://www.gmail.com")
addMenu2(urls1,"/","[","%psearch% https://www.ncbi.nlm.nih.gov/pubmed/")
addMenu2(urls1,"m","d","%pmail% https://www.dropbox.com/login")
addMenu2(apps7,"w","p","g:\webbr\pale moon\Palemoon.exe")
addMenu2(urls1,"f","x","%ppor% https://xhamster.com/search.php?from=&q=busty+&qcat=video")
;>^e::addMenu2(apps7,"e","r","C:\Users\Grandpa\Desktop\z\b\emacs\emacs\bin\runemacs.exe -fg white -bg black -fs  -g 700x240+0+0")
addMenu2(apps7,"w","r","%userprofile%\AppData\Local\Epic Privacy Browser\Application\epic.exe")
addMenu2(apps7,"i","e","C:\Program Files (x86)\Microsoft Visual Stu1dio 10.0\Common7\IDE\VCExpress.exe")
addMenu2(apps7,"w","i","iexplore")
addMenu2(apps7,"w","g"," C:\Users\Grandpa\Desktop\z\b\chromium\chrome-win32\chrome.exe")
addMenu2(urls1,"l","z","%userprofile%\Desktop\bin2\login.html") 
;#^v::addMenu2(apps7,"v","s","c:\Windows\Speech\Common\sapisvr.exe")
addMenu2(apps7,"b","i","C:\Users\Public\Downloads\boot.iso")
addMenu2(apps7,"v","b","C:\Program Files\Oracle\VirtualBox\VirtualBox.exe")
addMenu2(apps7,"m","r","C:\Users\Grandpa\Desktop\z\a\r31\bin\x64\Rgui.exe")
addMenu2(apps7,"e","n","notepad ")
addMenu2(apps7,"n","m","C:\Users\Grandpa\Desktop\z\a\netw\64-bit\networx.exe")
addMenu2(apps7,"c","a","G:\chess\arena_3.5.1\arena")
addMenu2(apps7,"m","a","%userprofile%\Music\Playlists\all.wpl")
addMenu2(apps7,"m","z","%userprofile%\Music\Playlists\a.wpl")
addMenu2(apps7,"x","s","C:\windows\system32\snippingtool ")
addMenu2(apps7,"x","c","C:\windows\system32\snippingtool /clip")

addMenu2(apps7,"x","z","%predir%nircmd-x64\nircmd savescreenshot z:\%CurrentDateTime%.png")
addMenu2(apps7,"x","x","cmd /k 'copy z:\%CurrentDateTime%.png n:\screenshots\%CurrentDateTime%.png && dir n:\screenshots\%CurrentDateTime%.png'")
;addMenu2(apps7,"x","d","cmd /c move z:\shot.png z:\%CurrentDateTime%.png")
;addMenu2(apps7,"x","n","cmd /c 'pause && copy z:\%CurrentDateTime%.png   n:\screenshots\%CurrentDateTime%.png'")
; addMenu2(apps7,"x","o","cmd /k 'dir n:\screenshots\%CurrentDateTime%.png'")
addMenu2(apps7,"x","p","z:\%CurrentDateTime%.png")

addMenu2(apps7,"f","q","G:\fileman\qd63\Q-Dir\q-dir.exe")
addMenu2(apps7,"f","7","g:\fileman\7z\7zfm")
addMenu2(apps7,"f","s","C:\Program Files\Hewlett-Packard\HP MediaSmart\SmartMenu.exe")
addMenu2(apps7,"f","8","C:\Users\Public\Downloads\7z\7zFM.exe")
addMenu2(apps7,"s","g"," %predir%vim82\gvim.exe -u c:\cmd\vimkeys.vim   c:\grub2\grub.cfg")
addMenu2(apps7,"k","p"," powershell")
addMenu2(apps7,"k","o"," %cmddir%ra.bat powershell")
addMenu2(urls1,"c","h","%pchess% www.wtharvey.com")
addMenu2(urls1,"c","b","%pchess% www.chessbase.com")
addMenu2(apps7,"c","g","%pchess% www.chessgames.com,, max ")
addMenu2(apps7,"m","t","G:\math\rs\bin\rstudio.exe")
addMenu2(apps7,"m","e","G:\math\r33\bin\R.exe")
addMenu2(urls1,"m","l","%pmail% https://login.live.com/login.srf?wa=wsignin1.0&rpsnv=13&ct=1564777376&rver=7.0.6737.0&wp=MBI_SSL&wreply=https://outlook.live.com/owa/%3fnlp%3d1%26RpsCsrfState%3d2defb976-9a4e-fc2c-3a19-234384fb20cb&id=292841&aadredir=1&CBCXT=out&lw=1&fl=dob%2cflname%2cwld&cobrandid=90015")
addMenu2(urls1,"v","d","%psearch% https://duckduckgo.com/?q=&iax=videos&ia=videos#")
addMenu2(urls1,"v","y","%pvid% www.youtube.com")
addMenu2(urls1,"f","e","%psearch% https://epicsearch.in/search?")
addMenu2(urls1,"f","p","%psearch% https://startpage.com/sp/search")
addMenu2(urls1,"v","d","%psearch% https://duckduckgo.com/?q=&iax=videos&ia=videos")
addMenu2(urls1,"v","y","%psearch% https://video.search.yahoo.com/search/video;_ylt=Awr9ImYt9lNfrkAAoiFXNyoA;_ylu=Y29sbwNncTEEcG9zAzEEdnRpZANBMDYxNV8xBHNlYwNwaXZz?p=&action=view")
addMenu2(urls1,"v","b","%psearch% https://www.bing.com/videos/search?q=")
addMenu2(urls1,"v","v","%psearch% https://www.bing.com/videos/browsing?q=")
addMenu2(apps7,"w","f"," %ffox%  %ffpriv% ")
addMenu2(apps7,"w","g"," %ffox% ")
;addMenu2(urls1,"w","F", ffwb ," -newtab -fullscreen ")
addMenu2(apps7,"w","h","C:\Program Files\Mozilla Firefox\firefox.exe")
addMenu2(urls1,"c","k","%pchess% http://www.k4it.de/index.php?topic=egtb&lang=en")
addMenu2(apps7,"w","i","iexplore")
addMenu2(apps7,"o","c","control")
addMenu2(apps7,"o","m","calc")
addMenu2(apps7,"k","v","%predir%cmdrmini\Cmder.exe")
addMenu2(apps7,"k","b","%cmddir%ra.bat %predir%cmdrmini\Cmder.exe")
addMenu2(apps7,"k","x","%cmddir%ra.bat cmd")
addMenu2(apps7,"k","n","%cmddir%ra.bat  \'netsh interface ip set dns name='Local Area Connection' static 208.67.222.222 \'")
addMenu2(apps7,"j","d","runas /user:aio\a 'cmd /k cd /d %userprofile%\desktop  '")
addMenu2(apps7,"j","f","runas /user:aio\a /savecred  'cmd /k cd /d %userprofile%\desktop '")
addMenu2(apps7,";","r","taskkill /f /fi 'status eq not responding'")
addMenu2(apps7,"k","o","powershell.exe -Command 'Start-Process cmd /k cd /d m:\a\' -Verb RunAs")
addMenu2(apps7,"k","l","c:\a\clink\clink.bat")
addMenu2(apps7,"k","i","%windir%\system32\WindowsPowerShell\v1.0\PowerShell_ISE.exe")
addMenu2(apps7,"k","u","%cmddir%ra.bat '%windir%\system32\WindowsPowerShell\v1.0\PowerShell_ISE.exe'")
addMenu2(apps7,"w","t","%twb%,, max")
addMenu2(urls1,"f","X","%ppor% https://www.google.ca/search?q=busty+granny&ie=utf-8&oe=utf-8&gws_rd=cr&ei=t0pDWOaGLunZjwSa1LXYAw")
addMenu2(apps2,"e","p",getexec("npp\notepad++.exe"))
addMenu2(urls1,"s","e","%psport% http://www.espn.com/nfl/statistics/team/_/stat/total")
addMenu2(urls1,"s","g","%psport% https://www.teamrankings.com/nfl/stat/touchdowns-per-game")
addMenu2(urls1,"s","c","%psport% https://www.covers.com/sports/nfl/matchups")
addMenu2(urls1,"s","z","%psport% https://www.covers.com/sports/nba/matchups")
addMenu2(urls1,"s","o","%psport% https://www.covers.com/pageLoader/pageLoader.aspx?page=/data/nba/statistics/2018-2019/offense_pt_regular.html")
addMenu2(urls1,"S","n","%psport% https://www.covers.com/pageLoader/pageLoader.aspx?page=/data/nba/statistics/2018-2019/statistics_regular.html")
addMenu2(urls1,"S","d","%psport% https://www.covers.com/pageLoader/pageLoader.aspx?page=/data/nba/statistics/2018-2019/defense_pt_regular.html")
addMenu2(urls1,"S","h","%psport% https://www.covers.com/sports/nhl/matchups")
addMenu2(urls1,"S","j","%psport% https://www.covers.com/sport/hockey/nhl/2018-2019/statistics/team-scoring")
addMenu2(urls1,"S","k","%psport% https://www.covers.com/sport/hockey/nhl/2018-2019/statistics/team-defense")
addMenu2(urls1,"S","s","%psport% https://www.covers.com/sport/hockey/nhl/statistics")
addMenu2(urls1,"S","t","%psport% https://www.covers.com/sport/hockey/nhl/standings")
addMenu2(apps7,"e","w"," %predir%emacs\bin\runemacs.exe -fg black -bg white -fs  -g 1450x725")
addMenu2(apps7,"e","q"," %predir%emacs\bin\emacs.exe -fg black -bg white -fs  -g 1450x725")
addMenu2(apps7,"e","z","%predir%emacs\bin\runemacs.exe -fg black -bg white -fs  -g 1450x725 --load '%cmddir%evilinit.el'")
addMenu2(apps7,"e","m","%predir%emacs\bin\runemacs.exe -fg black -bg white -fs  -g 1450x725 --load '%cmddir%minevil.el'")
addMenu2(apps7,"e","a","%predir%emacs\bin\runemacs.exe -fg black -bg white -fs  -g 1450x725 --load '%cmddir%spaceinit.el'")
addMenu2(apps7,"f","d","%predir%freedler\fdm.exe")
addMenu2(apps7,"e","b","%predir%vim82\gvim.exe -u c:\cmd\vimkeys.vim  -R")
addMenu2(apps7,"e","g"," %predir%vim82\gvim.exe -u  c:\cmd\vimkeys.vim")
addMenu2(apps7,"e","m","%predir%vim82\gvim.exe -u c:\cmd\vimkeys.vim  --noplugin ")
addMenu2(apps7,"e","j","%predir%vim82\gvim.exe --noplugin -u '%predir%vim82\pack\SpaceVim-master\init.vim'")
addMenu2(apps2,"e","B",getexec("Neovim\bin\nvim-qt.exe")) 
addMenu2(apps2,"e","b",getexec("Neovim\bin\nvim.exe -u c:\cmd\vimkeys.vim "))
addMenu2(apps7,"v","d","%predir%ditto.exe")
addMenu2(apps7,"b","d","%userprofile%\VirtualBox VMs\deb95l\deb95l.vbox")
addMenu2(urls1,"/","N","%psearch% https://ndb.nal.usda.gov/ndb/nutrients/index")
;addMenu2(urls1,"/","n","%wt% https://ndb.nal.usda.gov/ndb/search/list") 
addMenu2(urls1,"/","M","%psearch% https://www.google.ca/maps/?hl=en") 
addMenu2(urls1,"/","S","%psearch% https://www.google.ca/search?q=&tbm=isch")
addMenu2(urls1,"/","B","%psearch% https://www.google.ca/search?q=&tbm=bks")
addMenu2(urls1,"c","t","%pchess% http://forum.chesstalk.com/forumdisplay.php?f=2&mode=linear")
addMenu2(urls1,"/","A","%pres% https://scholar.google.com/scholar_lookup?")
addMenu2(urls1,"c","B","%pchess% http://tactics.chessbase.com/")
addMenu2(apps7,"i","r","h:\red.exe ")

addMenu2(apps7,"s","E","%ev% %cmddir%.emacs")
addMenu2(apps7,"s","V","%ev% %cmddir%vimkeys.vim")

addMenu2(urls1,"\\","u","  %ev% %predir%AHKCommandPicker-1.3.1\AHKCommandPicker-1.3.1\src\Commands\urls.ahk")
addMenu2(urls1,"\\","l","  %ev% %predir%AHKCommandPicker-1.3.1\AHKCommandPicker-1.3.1\src\Commands\urllauncher.ahk")
addMenu2(urls1,"\\","k"," %ev% %cmddir%keymenu.ahk")
addMenu2(urls1,"\\","a"," %ev% c:\cmd\ahk.ahk")

addMenu2(urls1,"\\","A"," %ev% c:\cmd\aioahk.ahk")
addMenu2(urls1,"\\","r"," %ev% c:\cmd\rkeys.ahk")

addMenu2(urls1,"\\","s"," %ev% %A_ScriptFullPath%")
addMenu2(urls1,"\\","h"," %ev% %cmddir%autohotkey.ahk")
addMenu2(urls1,"\\","q"," %ev% %cmddir%aioahk.ahk")
;; end added 20220615Jun15Wed-0941PM
;;20220622Jun22Wed-0301PM-
addMenu2(cons,"v","c","%wt% https://www.bitchute.com")
addMenu2(cons,"n","p","%wt% http://www.thepeoplesvoice.org/TPV3/index.php ")

addMenu2(cons,"v","b","%wt% https://www.brighteon.com/ ")
addMenu2(cons,"n","f","%wt% https://blog.nomorefakenews.com/ ")

addMenu2(cons,"n","y","%wt% https://carolynyeager.net/ ")






addMenu2(cons1,"d","a","%wt% http://ciadotgov4sjwlzihbbgxnqg3xiyrg7so2r2o3lt5wz5ypk4sxyjstad.onion ")
addMenu2(cons1,"j","f","%wt% https://forward.com/")
addMenu2(cons1,"d","b","%wt% http://fncuwbiisyh6ak3i.onion/     ")
addMenu2(cons1,"d","c","%wt% http://76qugh5bey5gum7l.onion/     ")
addMenu2(cons1,"d","d","%wt% http://62gs2n5ydnyffzfy.onion/     ")
addMenu2(cons1,"d","e","%wt% http://r6rfy5zlifbsiiym.onion/     ")
addMenu2(cons1,"d","f","%wt% http://xfmro77i3lixucja.onion/     ")
addMenu2(cons1,"d","g","%wt% http://wasabiukrxmkdgve5kynjztuovbg43uxcbcxn6y2okcrsg7gb6jdmbad.onion     ")
addMenu2(cons1,"d","h","%wt% http://zerobinqmdqd236y.onion/   ")
addMenu2(cons1,"d","i","%wt% http://blockchainbdgpzk.onion     ")
addMenu2(cons1,"d","j","%wt% http://clgs64523yi2bkhz.onion/     ")
addMenu2(cons1,"d","p","%wt% https://protonirockerxow.onion/     ")
addMenu2(cons1,"d","n","%wt% http://bbcnewsv2vjtpsuy.onion/     ")
addMenu2(cons1,"d","k","%wt% http://rougmnvswfsmd4dq.onion/     ")
addMenu2(cons1,"d","l","%wt% http://nzh3fv6jc6jskki3.onion/     ")
addMenu2(cons1,"d","m","%wt% http://archivecaslytosk.onion/     ")
addMenu2(cons1,"d","o","%wt% http://secmailw453j7piv.onion/ ")
addMenu2(cons1,"m","h","%wt% https://www.hollywoodreporter.com/")
addMenu2(cons1,"d","q","%wt% https://www.facebookcorewwwi.onion/")
addMenu2(cons1,"n","b","%wt% https://fast.bao.ac.cn ")
addMenu2(cons1,"d","r","%wt% http://ulrn6sryqaifefld.onion/     ")
addMenu2(cons1,"d","s","%wt% http://answerszuvs3gg2l64e6hmnryudl5zgrmwm3vh65hzszdghblddvfiqd.onion/     ")
addMenu2(cons1,"d","t","%wt% http://scihub22266oqcxt.onion/     ")
addMenu2(cons1,"d","u","%wt% https://p53lf57qovyuvwsc6xnrppyply3vtqm7l6pcobkmyqsiofyeznfu5uqd.onion/     ")
addMenu2(cons1,"d","v","%wt% http://danschat356lctri3zavzh6fbxg2a7lo6z3etgkctzzpspewu7zdsaqd.onion/     ")
addMenu2(cons1,"d","w","%wt% http://zqktlwi4fecvo6ri.onion/wiki/index.php/Main_Page")
addMenu2(cons1,"c","y","%wt% https://whowhatwhy.com/")
addMenu2(cons1,"c","j","%wt% https://jimstone.is/")
addMenu2(cons1,"c","l","%wt% https://thelastpsychiatrist.com/")
addMenu2(cons1,"c","d","%wt% http://www.drudgereport.com/")
addMenu2(cons1,"c","r","%wt% https://rense.com")
addMenu2(cons1,"c","b","%wt% https://benswann.com ")
addMenu2(cons1,"c","i","%wt% https://imo.com")
addMenu2(cons1,"c","e","%wt% https://www.earthfiles.com/")
addMenu2(cons1,"c","z","%wt% https://zerohedge.com")
addMenu2(cons1,"c","h","%wt% https:/Whatreallyhappened.com")
addMenu2(cons1,"c","t","%wt% https://redd.it/1v8rmg ")


addMenu2(cons1,"c","u","%wt% http://www.ibtimes.co.uk/")


addMenu2(cons1,"c","a","%wt% http://www.abreureport.com/")


addMenu2(cons1,"c","g","%wt% http://www.cryptogon.com/")
addMenu2(cons1,"c","s","%wt% http://www.thetruthseeker.co.uk/")
addMenu2(cons1,"x","d","%wt% http://www.disclose.tv/")
addMenu2(cons1,"c","k","%wt% http://www.wanttoknow.info/")
addMenu2(cons1,"c","n","%wt% http://beforeitsnews.com/")
addMenu2(cons1,"x","c","%wt% http://www.cabaltimes.com/")
addMenu2(cons1,"x","k","%wt% http://news.conspiracy.co/")
addMenu2(cons1,"x","e","%wt% http://enenews.com/")
addMenu2(cons1,"c","p","%wt% http://www.theepochtimes.com/")
addMenu2(cons1,"c","v","%wt% http://www.thepeoplesvoice.org/TPV3/")
addMenu2(cons1,"x","a","%wt% http://www.allgov.com/")
addMenu2(cons1,"x","s","%wt% http://stratrisks.com/")
addMenu2(cons1,"x","i","%wt% http://www.informationliberation.com/")
addMenu2(cons1,"c","3","%wt% http://www.1913intel.com/")
addMenu2(cons1,"c","i","%wt% http://intelnews.org/")
addMenu2(cons1,"x","t","%wt% http://www.trueactivist.com/")
addMenu2(cons1,"x","v","%wt% http://dissidentvoice.org/")
addMenu2(cons1,"x","c","%wt% http://www.dailycensored.com/")
addMenu2(cons1,"x","m","%wt% http://truthstreammedia.com/")
addMenu2(cons1,"x","h","%wt% http://www.hangthebankers.com/")
addMenu2(cons1,"x","w","%wt% http://thewatchers.adorraeli.com/")
addMenu2(cons1,"x","q","%wt% http://www.damagedearth.com/")
addMenu2(cons1,"x","h","%wt% http://hisz.rsoe.hu/alertmap/index2.php")
addMenu2(cons1,"x","p","%wt% http://preventdsease.com/")
addMenu2(cons1,"x","f","%wt% http://foodfreedomgroup.com/")
addMenu2(cons1,"x","w","%wt% http://www.wired.com/category/dangerroom")
addMenu2(cons1,"x","n","%wt% http://motherboard.vice.com/en_us")
addMenu2(cons1,"s","a","%wt% http://www.scientificamerican.com/")
addMenu2(cons1,"s","h","%wt% http://singularityhub.com/")
addMenu2(cons1,"s","p","%wt% http://phys.org/")
addMenu2(cons1,"s","d","%wt% http://scitechdaily.com/")
addMenu2(cons1,"s","k","%wt% http://earthsky.org/space")
addMenu2(cons1,"s","g","%wt% http://www.dailygalaxy.com/")
addMenu2(cons1,"c","w","%wt% http://www.whale.to")
addMenu2(cons1,"c","6","%wt% http://www.bibliotecapleyades.net/")
addMenu2(cons1,"c","2","%wt% http://cryptome.org/")
addMenu2(cons1,"c","0","%wt% http://www.paulcraigroberts.org/")
addMenu2(cons1,"c","1","%wt% http://www.veteranstoday.com/")
addMenu2(cons1,"c","4","%wt% http://www.veteransnewsnow.com/")
addMenu2(cons1,"x","4","%wt% http://therundownlive.com/")
addMenu2(cons1,"x","7","%wt% http://www.thenation.com/")
addMenu2(cons1,"x","5","%wt% http://dailysignal.com/")
addMenu2(cons1,"x","6","%wt% http://tarpley.net/")
addMenu2(cons1,"x","3","%wt% http://electronicintifada.net/")
addMenu2(cons1,"x","1","%wt% http://vigilantcitizen.com/")
addMenu2(cons1,"x","2","%wt% http://www.truthcontrol.com/")
addMenu2(cons1,"x","6","%wt% http://www.newdawnmagazine.com")
addMenu2(cons1,"x","8","%wt% http://ultraculture.org/")
addMenu2(cons1,"x","9","%wt% http://www.crowdfreedom.com/")
addMenu2(cons1,"y","m","%wt% http://news.mongabay.com/")
addMenu2(cons1,"y","e","%wt% http://www.theecologist.org/")
addMenu2(cons1,"y","i","%wt% http://www.publicintegrity.org/")
addMenu2(cons1,"y","a","%wt% http://news.antiwar.com/")
addMenu2(cons1,"y","d","%wt% http://desertpeace.wordpress.com/")
addMenu2(cons1,"y","j","%wt% http://www.thesleuthjournal.com/")
addMenu2(cons1,"y","t","%wt% http://nontelevisedtruth.com/")
addMenu2(cons1,"y","n","%wt% http://www.naturalnews.com/")
addMenu2(cons1,"y","l","%wt% http://www.liveleak.com/")
addMenu2(cons1,"y","b","%wt% http://www.batr.org/")
addMenu2(cons1,"y","a","%wt% http://www.activistpost.com/")
addMenu2(cons1,"y","d","%wt% http://adst.org/")
addMenu2(cons1,"y","c","%wt% http://clouverse.com/")
addMenu2(cons1,"y","f","%wt% http://www.truthdig.com/")
addMenu2(cons1,"y","o","%wt% http://thinkprogress.org/")
addMenu2(cons1,"y","q","%wt% http://policestatedaily.com/")
addMenu2(cons1,"y","r","%wt% http://www.realcleardefense.com/")
addMenu2(cons1,"y","[","%wt% http://www.globalpost.com/")
addMenu2(cons1,"y","g","%wt% http://www.globalresearch.ca/")
addMenu2(cons1,"y","v","%wt% http://www.voltairenet.org/spip.php?page=mot-groupe&id_groupe=19&lang=en")
addMenu2(cons1,"y","k","%wt% http://topinfopost.com/")
addMenu2(cons1,"y","m","%wt% http://www.paranoiamagazine.com/feed/")
addMenu2(cons1,"y","z","%wt% https://conspiracypsychology.com/feed/")
addMenu2(cons1,"y","w","%wt% https://static6.businessinsider.com/category/conspiracy-theory.rss")
addMenu2(cons1,"q","a","%wt% http://feeds.feedburner.com/atlanteanconspiracy/VAhj")
addMenu2(cons1,"q","s","%wt% https://stillnessinthestorm.com/feed")
addMenu2(cons1,"q","c","%wt% https://www.conspiracy-cafe.com/apps/blog/entries/feed/rss")
addMenu2(cons1,"q","9","%wt% https://911truth.org/feed/")
addMenu2(cons1,"q","z","%wt% https://www.conspiracyarchive.com/feed/")
addMenu2(cons1,"q","g","%wt% https://www.dailygrail.com/category/conspiranoia/feed/")
addMenu2(cons1,"q","r","%wt% https://www.corbettreport.com/category/articles/feed/")
addMenu2(cons1,"q","u","%wt% https://www.thesun.co.uk/topic/conspiracy-theories/feed/")
addMenu2(cons1,"q","e","%wt% https://www.express.co.uk/latest/conspiracy-theory/rss")
addMenu2(cons1,"q","v","%wt% https://reason.com/category/volokh/feed/atom/%3Fx%3D1")
addMenu2(cons1,"q","n","%wt% https://www.conspiracies.net/")
addMenu2(cons1,"q","y","%wt% https://www.youtube.com/user/AlltimeConspiracies")
addMenu2(cons1,"q","f","%wt% https://www.theflatearthsociety.org/home/index.php/about-the-society")
addMenu2(cons1,"q","o","%wt% https://www.reddit.com/r/actualconspiracies/")
addMenu2(cons1,"q","k","%wt% https://www.reddit.com/r/conspiracy/")
addMenu2(cons1,"q","x","%wt% http://www.abovetopsecret.com/")
addMenu2(cons1,"q","l","%wt% https://www.godlikeproductions.com/")
addMenu2(cons1,"q",";","%wt% http://www.conspiracyarchive.com/")
addMenu2(cons1,"q","m","%wt% https://decryptedmatrix.com/")
addMenu2(cons1,"q","h","%wt% http://www.ourhollowearth.com/ourhollo/index.html")
addMenu2(cons1,"q","j","%wt% https://www.state.gov/remarks-at-the-conference-of-presidents-of-major-american-jewish-organizations-antisemitism-the-interconnected-hatred/")
addMenu2(cons1,";","w","%wt% https://www.ncjw.org/news/jewish-organization-sign-on-letter-join-ruths-revolution/")
addMenu2(cons1,";","i","%wt% https://www.israelnationalnews.com/news/323332")
addMenu2(cons1,";","b","%wt% https://www.bostonglobe.com/2022/06/15/metro/jewish-hit-list-massachusetts-groups-promote-map-vilifying-jewish-organizations/")
addMenu2(cons1,";","k","%wt% https://www.kosherdelight.com/GermanyJewishOrganizations.shtml")
addMenu2(cons1,";","s","%wt% https://www.splcenter.org/fighting-hate/extremist-files/group/jewish-defense-league")
addMenu2(cons1,";","f","%wt% https://jewishfed.org/how-we-help/what-we-fund/grantees")
addMenu2(cons1,";","r","%wt% https://reformjudaism.org/who-we-are/organizations-reform-movement")
addMenu2(cons1,";","c","%wt% https://www.commentary.org/articles/seth-mandel/alexandria-ocasio-cortez-anti-semitism-jewish-organizations/")
addMenu2(cons1,";","a","%wt% https://www.bendthearc.us/")
addMenu2(cons1,";","b","%wt% https://birthrightisrael.foundation/blog/how-to-prioritize-the-jewish-organizations-you-support/")
addMenu2(cons1,";","q","%wt% https://www.jqyouth.org/lgbtq-jewish-orgs/")
addMenu2(cons1,";","w","%wt% https://jewishwomensfed.org/Organizations.html")
addMenu2(cons1,";","h","%wt% https://www.hillel.org/")
addMenu2(cons1,"'","l","%wt% https://library.columbia.edu/libraries/global/jewishstudies/guides/subjects/organizations.html")
addMenu2(cons1,"'","u","%wt% https://www.unitedjewish.org/contact.php")
addMenu2(cons1,"'","h","%wt% http://ijso.huc.edu/SynOrg/JewishLGBT/")
addMenu2(cons1,"'","t","%wt% https://www.timesofisrael.com/adl-publishes-list-of-top-10-anti-israel-groups/")
addMenu2(cons1,"'","j","%wt% https://jgsny.org/searchable-databases/indexes-to-jewish-organizations/jewish-communal-register")
addMenu2(cons1,"'","t","%wt% http://www.myjewishtown.com/Organizations.html")
addMenu2(cons1,"'","d","%wt% https://www.jewishdallas.org/")
addMenu2(cons1,"'","b","%wt% https://bbyo.org/")
addMenu2(cons1,"'","h","%wt% https://www.hias.org/")
addMenu2(cons1,"'","a","%wt% https://www.aipac.org/")
addMenu2(cons1,"'","i","%wt% https://www.ifcj.org/")
addMenu2(cons1,"'","p","%wt% https://jewishphilly.org/")
addMenu2(cons1,"'","u","%wt% https://www.jewishtucson.org/community-organizations/")
addMenu2(cons1,"'","g","%wt% https://gatherdc.org/resources/dc-jewish-organizations/")
addMenu2(cons1,"'","o","%wt% https://ortamerica.org/")
addMenu2(cons1,"'","g","%wt% https://www.guidestar.org/NonprofitDirectory.aspx?cat=8&subcat=47&p=1")
addMenu2(cons1,"'","a","%wt% https://www.ajc.org/")
addMenu2(cons1,"'","f","%wt% https://www.jnf.org/")
addMenu2(cons1,"'","n","%wt% https://nonprofitpoint.com/jewish-charities-to-donate-t")
addMenu2(cons1,"'","c","%wt% https://www.jewishcharities.org/o/")
addMenu2(cons1,"'","w","%wt% https://ajws.org/")
addMenu2(cons1,"'","q","%wt% https://www.ajwnews.com/jewish-organizations")
addMenu2(cons1,"'","o","%wt% https://www.ou.org/")
addMenu2(cons1,",","j","%wt% https://www.jdc.org")
addMenu2(cons1,",","a","%wt% https://www.adl.org/")
addMenu2(cons1,",","f","%wt% https://www.jfla.org/")
addMenu2(cons1,",","j","%wt% https://jewishjournal.com/culture/philanthropy/73629/")
addMenu2(cons1,",","u","%wt% https://www.unitedjewish.org/")
addMenu2(cons1,",","d","%wt% https://www.jewishfederations.org/")
addMenu2(cons1,",","v","%wt% https://www.jewishvirtuallibrary.org/american-jewish-organizations/")
addMenu2(cons1,"]","w","%wt% https://www.washingtonpost.com/news/volokh-conspiracy/wp/2015/05/04/mondoweiss-is-a-hate-site")
addMenu2(cons1,"]","b","%wt% https://mediabiasfactcheck.com/mondoweiss/")
addMenu2(cons1,"]","c","%wt% https://canarymission.org/organization/Mondoweiss")
addMenu2(cons1,"]","p","%wt% https://myparnasa.com/top-jewish-news-sites/")
addMenu2(cons1,".","s","%wt% https://socaljewishnews.com/")
addMenu2(cons1,".","c","%wt% https://thecjn.ca")
addMenu2(cons1,".","p","%wt% https://www.jewishpress.com/news/us-news/")
addMenu2(cons1,".","j","%wt% https://njjewishnews.timesofisrael.com/")
addMenu2(cons1,".","w","%wt% https://www.washingtonjewishweek.com/")
addMenu2(cons1,".","b","%wt% https://boulderjewishnews.org/")
addMenu2(cons1,".","e","%wt% https://washtenawjewishnews.org/")
addMenu2(cons1,".","l","%wt% https://www.timesofisrael.com/topic/london-jewish-news/")
addMenu2(cons1,".","m","%wt% https://www.sun-sentinel.com/florida-jewish-journal/news/miami-dade/")
addMenu2(cons1,".","a","%wt% https://albertajewishnews.com/")
addMenu2(cons1,".","i","%wt% https://aish.com")
addMenu2(cons1,"/","t","%wt% https://www.jewishtimes.com/")
addMenu2(cons1,"/","j","%wt% https://jewishjournal.org/")
addMenu2(cons1,"/","a","%wt% https://www.akronjewishnews.com/")
addMenu2(cons1,"/","h","%wt% https://www.heritagefl.com/")
addMenu2(cons1,"/","c","%wt% http://www.jewishcanton.org/sjn.html")
addMenu2(cons1,"/","2","%wt% https://www.yiddish24.com/")
addMenu2(cons1,"/","w","%wt% https://jweekly.com/")
addMenu2(cons1,"/","b","%wt% https://www.chabad.org/news/default_cdo/jewish/News.htm")
addMenu2(cons1,"/","a","%wt% https://www.atlantajewishtimes.com/")
addMenu2(cons1,"/","i","%wt% https://blogs.timesofisrael.com/jewish-news/")
addMenu2(cons1,"/","x","%wt% https://www.crescentcityjewishnews.com")
addMenu2(cons1,"/","z","%wt% https://www.jewishexponent.com/")
addMenu2(cons1,"/","u","%wt% https://www.jewishnews.co.uk/")
addMenu2(cons1,"/","o","%wt% https://www.jewishaz.com/")
addMenu2(cons1,"/","q","%wt% http://www.worldjewishdaily.com/")
addMenu2(cons1,"1","b","%wt% https://jewishbreakingnews.com/")
addMenu2(cons1,"1","j","%wt% https://en.jdn.co.il/")
addMenu2(cons1,"1","i","%wt% https://www.israelnationalnews.com/section/7")
addMenu2(cons1,"1","l","%wt% https://www.localjewishnews.com/")
addMenu2(cons1,"1","f","%wt% https://jfedsrq.org/jewish-news")
addMenu2(cons1,"1","w","%wt% https://thejewishweekly.com/")

addMenu2(cons1,"1","c","%wt% https://www.clevelandjewishnews.com")
addMenu2(cons1,"1","v","%wt% http://www.jewishnewsva.org/")
addMenu2(cons1,"1","h","%wt% https://www.haaretz.com/jewish/")
addMenu2(cons1,"1","p","%wt% https://www.jpost.com/")
addMenu2(cons1,"1","a","%wt% https://www.australianjewishnews.com")
addMenu2(cons1,"1","y","%wt% https://www.jta.org/category/united-states")
addMenu2(cons1,"1","m","%wt% https://thejewishnews.com/")
addMenu2(cons1,"1","o","%wt% https://www.jns.org//")

addMenu2(cons1,"1","t","%wt% https://www.tabletmag.com/sections/news")
addMenu2(cons1,"1","l","%wt% https://jewishnews.com")
addMenu2(cons1,"1","k","%wt% https://mondoweiss.net/")
addMenu2(cons1,"h","p","%wt% https://hpathy.com/materia-medica/")
addMenu2(games1,"c","2","%wt% https://2700chess.com/")
addMenu2(games1,"c","3","%wt% https://2700chess.com/juniors")
addMenu2(cons1,"h","w","%wt% https://www.westonaprice.org/")
addMenu2(cons1,"]","r","%wt% https://rense.com/")
addMenu2(cons1,"]","t","%wt% https://renseradio.com/")
addMenu2(cons1,"]","e","%wt% https://www.erasingtheliberty.com/")

;;20220622Jun22Wed-0301PM-

>!#f10:: run %ev% g:\bin\keymenu.ahk
#f10:: reload  
>!#^f10:: run %ev% %A_ScriptFullPath%
  ; nowork <^f5:: run hi()
  appskey:: keymenux(lvl2,wtb1)
  >^appskey:: keymenux(mmmm,wtb1)
  >#appskey:: keymenux(lvl1,wtb1)
  >!appskey:: keymenu2(lvl1,wtb1)
  >^+appskey:: keymenux(apps7,wt,menu2)
!+appskey:: keymenux(apps1,wt,menu2)
#+appskey:: keymenux(apps2,wt,menu2)
#appskey:: keymenux(urls1,wt,menu2)
  >^!#appskey:: keymenux(tvs1,wt,menu2)
;  >#appskey:: keymenux(tvs1,wt,menu2)
>#!appskey:: keymenux(tvs1,we,menu2)
  ;msgbox %allmab2%
  ;msgbox %allmab1%
