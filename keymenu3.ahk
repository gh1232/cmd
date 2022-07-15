#Nlmart.ca/search/922p 4a- 1143-130p 3-558 703-213½710 tue,sdm50 lobl4x50 toen fnail  



rawbeefmed probio foil psalt chkn suet bok,cabb

1sushi,sat saurkrbf,sat peanutcookie,tue,wed 

iod 



mhrstubask mhwashthu mphhh 

sat  ---

6 3 3 

taskbaratbotm,winupdatechgit?



6a,pis mbk  grumbl bangup



awk1120,evan;napier,whwm,marieke,whmn 

mkitch=conzaybayzuu,nyengdee==prepyrfd,tieupbag=chuu,conlamdoh,dee msit 



1143up pis stdclk,butnuprsid,tightengrncord shorolls10slowly

1151 pkbehmny 4x2s h4x2s6x1s4x1s1s1s2s2s m3x2s1s1s1s2s2s? e2x1 f2x1 nk1s -1rollmny 

nkannoyd 4x2 h4x2s6x1s nk4x1   h 4x1s2s2s lpfkflighton

gbgtiedup smbwlinblkpot rmfkfaucon,usu 



1206 1230 24m 1st litlnosat

2nd 

1249 19m? 3rd washtoprim  wtrflrãtròollerwetùetnowtrfdr

1p  11m 4th 

habovnewless throwchkn,box chknbktbotmrsid,lid suet,inlidctr 

habovnew 15foiláccid,suet psalt,chkn,suetbotmrsid 

decid=habovnew,saurkbfnewblowair mliedn 

habovnew 2x2s h4x2 lsidtoprollbagslvunhook÷ooriedtchrolltr[butnot]

habovnew h1s1s xx2 habovnew stdclk =me==uh?,vuungoo,kwane

=zuutay,tutnuoc,conlam,deedai, mwalkavdwtr,edgefdr,ctr=deetung==nuoc mpis =ngoo,chuusong,nuutieng

==zut==noihomqwazoi,guut 130p pprsflrs -1bigrolllsid 

spit1stwtr wipd,clothes,2s2s,2s frgtpprsearlierflr
bclos3s,4,4 fdr,2x2s,[4,4];4x3s,l1wipdnrwallplasterfall 

spitwtr2nd edge2 over2 mny3 or2 bag2 cbnt2 box2 beh2 

=me==[abov?] =zuu,doc,uoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.uytu
#SingleInstance Force ; Allow only one running instance of script.
SendMode Input  ;ew scripts due to its superior speed and reliability.
;global wf := "firefox.exe"

;global wbdir := "i:\wb\"
;; begin added 20220615Jun15Wed-0942PM aa

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
global wff := "C:\Program Files\Mozilla Firefox\firefox.exe"
global ffprivpuser :=    " --private -profile puser "
global wff2 := "c:\program files\mozilla firefox\firefox"
global wep1 := wb("ep",1,"ep1")

global wep2 := wb("ep",2,"ep2")
global wep3 := wb("ep",3,"ep3")
global wep4 := wb("ep",4,"ep4")
global wep1y := wb("ep",1,"ep1y")
global wop1 := wb("op",1,"op1")
global wop2 := wb("op",2,"op2")
global wop3 := wb("op",3,"op3")
global wop4r := wb("op",4,"op4r")
global wop1t := wb("op",1,"op1t")

global wtb1c  :=  wb("tb",1,"tbc")
global wtb1med  := wb("tb",1,"tbmed")

global wffprivpuser := ffox . " " . ffprivpuser
global wffpwf := "C:\Program` Files\Mozilla` Firefox\firefox.exe -P pwf --allow-remote  -new-tab"
global wtb1 := wb("tb",1,"") 
global wop0 :=   wb("op",0,"op0") 
global wop1g:=  wb("op",1,"op1g")
global wop1t:=  wb("op",1,"op1t")
global wep0 :=   wb("ep",0,"ep0")
global wop1y :=  wb("op",1,"op1y") 
global wme := "MicrosoftEdge"

global par := ""
global priv  := " -private "
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
        wbr = wff 
    } else { 
      wbr = wff . " -P %wp%  -new-tab"
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
      wbr =  %predir%wb\tb%num%\Browser\firefox 
        return wbr

    } else {
      wbr =  %predir%wb\tb%num%\Browser\firefox -P %wp%  --allow-remote -new-tab 
        return wbr
    }
  } else if (wb = "ff"){

    if (wp = ""){
      wbr =  %predir%wb\ff%num%\Browser\firefox 
        return wbr

    } else {
      wbr =  %predir%wb\ff%num%\Browser\firefox -P %wp%  --allow-remote -new-tab 
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
global wff1 := getwb("ff","1","puser")  
global wtb1 := getwb("tb","1","")  


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
global wep1y := getwb("ep","1","ep1y")  

global wm := "MicrosoftEdge"

global ext1 := []
global ext2 := []
global ext3 := []
global apps1 := []
global apps2 := []
global os1 := []
global os2 := []
global ahkcmds := [] 
global urls := []
global km :=[] 
global mb := "msgbox hi"
global mab := ""
global allmab := ""
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

  } else {
    if (showMenuEnable = 1){
s := ""
     for k,v in m
       s .= k "     " v "`n"
         gui new 
         gui font ,s20
         Gui, Add, Text,, %s% 
         Gui, Show
    }
  }
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
mab := m[a,b]
       ; Transform, mab , Deref,  %kkk%
       allmab := allmab . " " . a . " - " . b . " - " . mab . " = " . r . " `n"   
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

wf1 :=  wfr
       wt1 :=  wtr
       wo1 :=  wor
       we1 :=  wer
       wm1 :=  wmr
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
    ;msgbox, %kk%     
    kkk :=  mm[kk]
    ;thisworksfrom,so
    ;msgbox, %kkk%
    hideMenu("")
    Transform, kkk, Deref,  %kkk%
    run %kkk%
    soundbeep
    return ; 

}
keymenu2(mm,wb="",mn:="")
{
  if (mn=""){

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
      keymenu1(os2)
    }   
    else if (kk =";"){
      keymenu1(apps1)
    }   
    else if (kk ="'"){
      keymenu1(apps2)
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
      keymenu1(ext1)
    } 
    else if (kk ="."){
      keymenu1(ext2)
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
menu2["]"] := "os2"
menu2[";"] := "apps1"
menu2["'"] := "apps2"
menu2[","] := "extra1"
menu2["."] := "extra2"
menu2["/"] := "extra3"

addMenu1(os2,"c" ,"cmd")
addMenu1(apps1,"c" ,"cmd")
addMenu1(ext1,"c" ,"cmd")
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


addMenu2(urls,"n", "r" ,"%wt% https://time.com")
addMenu2(urls,"n", "a" ,"%wt% https://slate.com")
addMenu2(urls,"b", "s" ,"%wt% https://science.com")
addMenu2(urls,"b", "a" ,"%wt% https://scientificamerican.com")
addMenu2(urls,"b", "p" ,"%wt% https://pcmag.com")
addMenu2(urls,"b", "m" ,"%wt% https://medium.com")
addMenu2(urls,"n", "c" ,"%wt% https://canada.com")
addMenu2(urls,"n", "o" ,"%wt% https://ottwawsun.com")
addMenu2(urls,"n", "n" ,"%wt% https://nationalpost.com")
addMenu2(urls,"n", "y" ,"%wt% https://news.yahoo.com")
addMenu2(urls,"n", "b" ,"%wt% https://news.bing.com")
addMenu2(urls,"n", "g" ,"%wt% https://news.google.com")
addMenu2(urls,"n", "s" ,"%wt% https://torontosun.com")
addMenu2(urls,"n", "d" ,"%wt% https://torontostar.com")
addMenu2(urls,"n", "l" ,"%wt% https://latimes.com")
addMenu2(urls,"n", "t" ,"%wt% https://newyorktimes.com")
addMenu2(urls,"n", "p" ,"%wt% https://newyorkpost.com")
addMenu2(urls,"n", "w" ,"%wt% https://washingtonpost.com")
addMenu2(urls,"n", "q" ,"%wt% https://washingtontime.com")
addMenu2(apps1,"x", "a" ,"C:\Program Files (x86)\Adobe\Acrobat Reader DC\Reader\AcroRd32.exe")
addMenu2(urls,"o", "w" ,"%wt% https://westonaprice.org")
addMenu2(urls,"c", "w" ,"%wo% https://theweekinchess.com")
addMenu2(urls,"c", "c" ,"%wo% https://chess.com")
addMenu2(urls,"c", "x" ,"%wo% https://chess.ca")
addMenu2(urls,"c", "t" ,"%wo% https://chesstalk.com")
addMenu2(urls,"c", "y" ,"%wo% https://talkchess.com")
addMenu2(urls,"c", "l" ,"%wo% https://lichess.org")
addMenu2(urls,"c", "i" ,"%wo% https://ichess.com")

addMenu2(urls,"c", "2" ,"%wo% https://chess24.com")
addMenu2(urls,"r","r","%wo1% http://renseradioarchives.com/")
addMenu2(urls,"p","h","%wt1% https://thehill.com/")
addMenu2(urls,"p","j","%wt1% https://www.hilltimes.com/")
addMenu2(urls,"f","p","%wf1% https://www.covers.com/sport/football/nfl/printsheet")
addMenu1(ext3,"w","%wt1% https://walmart.ca/search/")
addMenu1(ext3,"l","%we1% https://www.youtube.com/results?search_query=news+live")
addMenu1(ext3,"q","%wt1% https://en.wikipedia.org/wiki/")
addMenu2(urls,"t","g","%wo1% https://www.tvguide.com/listings/")
addMenu2(urls,"v","v","%wt1% https://frproxy.vpnbook.com/browse.php?u=PKnM7p4uPmM0fPpc2eVzXEyWnHwnlzaw9It1mqgH&b=0")
addMenu2(urls,"t","f","%wo1% https://www.ontvtonight.com/guide/")
addMenu1(ext3,"k","%wt1% https://www.kijiji.ca/h-city-of-toronto/1700273")
addMenu2(urls,"t","z","%wo1% https://ustvgo.tv/amc-live/")
addMenu2(urls,"t","a","%wo1% https://ustvgo.tv/abc/")
addMenu2(urls,"t","c","%wo1% https://ustvgo.tv/cbs/")
addMenu2(urls,"t","C","%wo1% https://www.cbsnews.com/live/")
addMenu2(urls,"t","u","%wo1% https://ustvgo.tv/usa-network-live/")
addMenu2(urls,"t","w","%wo1% https://ustvgo.tv/we-tv")
addMenu2(urls,"t","b","%wo1% https://ustvgo.tv/bbc-america-live/")
addMenu2(urls,"t","d","%wo1% https://ustvgo.tv/syfy-channel-live/")
addMenu2(urls,"t","s","%wo1% https://ustvgo.tv/sundance-tv/")
addMenu2(urls,"v","c","%wo1% https://www.cp24.com/video?clipId=1921747")
addMenu2(urls,"t","e","%wo1% https://www.euronews.com/live")
addMenu2(urls,"t","r","%wo1% http://www.live-tv-radio.com/tv/europe.shtml")
addMenu2(urls,"t","i","%wo1% https://www.squidtv.net/europe/")
addMenu2(urls,"t","l","%wo1% https://abcnews.go.com/Live/")
addMenu2(urls,"t","h","%wo1% https://ustv247.tv/guide/index.html")
addMenu2(urls,"t","y","%wo1% https://usatodaynews.live/us-news/")
addMenu2(urls,"s","r","%wt1% https://www.twitch.tv/directory")
addMenu2(urls,"r","N","%wo1% https://onlineradiobox.com/us/genre/news/")
;addMenu2(urls,"t","n","%wo1% https://www.cbsnews.com/live/video/")
addMenu2(urls,"r","n","%wf1% https://www.iheart.com/live/country/US/city/newyork-ny-159/?genreId=9")
addMenu2(urls,"s","t","%wt1% https://twitter.com/search-home")
addMenu2(urls,"t","k","%wo1% https://www.kezi.com/livestream/")
addMenu2(urls,"t","v","%wo1% https://www.cbsnews.com/video/#x")
addMenu2(urls,"m","r","%wf1% https://mail.rediff.com/cgi-bin/login.cgi")
addMenu2(urls,"m","g","%wf1% https://accounts.google.com/signin/v2/identifier?service=mail&passive=true&rm=false&continue=https%3A%2F%2Fmail.google.com%2Fmail%2F&ss=1&scc=1&ltmpl=default&ltmplcache=2&emr=1&osid=1&flowName=GlifWebSignIn&flowEntry=ServiceLogin")
addMenu2(urls,"m","d","%wf1% http://dropbox.com")
addMenu2(urls,"m","t","%wf1% https://authentication.td.com/uap-ui/index.html?consumer=easyweb&locale=en_CA#/login/easyweb-getting-started")
addMenu2(urls,"m","b","%wf1% http://box.com")
addMenu2(urls,"m","s","%wf1% http://sync.com")
addMenu2(urls,"m","p","%wf1% http://pcloud.com")
addMenu2(urls,"m","m","%wf1% http://mega.nz")
addMenu1(ext3,"f","%wt1% C:\Users\z\Desktop\bin2\finance.html")
addMenu1(ext3,"S","%wt1% https://gh1232.github.io/search.html")
addMenu1(ext3,"s","%wt1% file:///c:/users/z/desktop/bin2/search.html")
addMenu1(ext3,"n","%wt1% c:\users\z\desktop\bin2\news.html")
addMenu1(ext3,"l","%wt1% file:///u:\d\newslinks.html")
addMenu1(ext3,"w","%wt1% C:\Users\z\Desktop\bin2\surf.html")
addMenu1(ext3,"e","%wt1% C:\Users\z\Desktop\bin2\email.html")
addMenu2(urls,"=","d","%wf1% https://www.draftkings.com/")
addMenu2(urls,"=","s","%wf1% https://speedof.me/")
addMenu2(urls,"=","f","%wf1% https://fast.com/")
addMenu2(urls,"=","x","%wf1% http://speedtest.xfinity.com/")
addMenu2(urls,"=","n","%wf1% http://www.speedtest.net/")
addMenu2(urls,"=","b","%wf1% https://www.bandwidthplace.com/")
addMenu1(ext3,"p","%wt1% https://patents.google.com/?q=")
addMenu2(apps1,"l","3","cmd /c 'ssh root@192.168.1.3'" )
addMenu2(urls,"w","m","%wt1% https://www.makeuseof.com/")
addMenu2(urls,"w","h","%wt1% https://www.howtogeek.com/")
addMenu2(urls,"=","p","%wf1% https://pcoptimum.ca")
addMenu2(urls,"t","o","%wo1% https://ustvgo.tv/one-america-news-network/")
addMenu2(urls,"t","m","%wo1% https://www.tvguide.com/listings/#movies")
addMenu2(urls,"r","6","%wo1% http://player.680news.com/")
addMenu2(urls,"r","2","%wm1% https://www.iheart.com/live/cp24-7796/")
addMenu2(urls,"r","1","%wm1% https://www.iheart.com/live/ctv-news-7798/")
addMenu2(urls,"r","t","%wm1% https://www.iheart.com/live/country/CA/city/toronto-on-584/")
addMenu2(urls,"r","5","%wm1% https://www.cbc.ca/player/play/2670346028")
addMenu2(urls,"t","1","%wm1% https://www.ctvnews.ca/live?autoPlay=true") 
addMenu2(urls,"r","9","%wt1% https://www.iheart.com/podcast/962-ctv-news-toronto-at-six-po-53782987/episode/ctv-news-at-six-for-april-61894489/")
addMenu2(urls,"r","w","%wo1% http://worldradiomap.com/list/")
addMenu2(urls,"r","y","%wo1% http://worldradiomap.com/ca/toronto")
addMenu2(urls,"r","6","%wm1% https://www.cbc.ca/player/play/1711321155969")
addMenu2(urls,"n","c","%wm1% https://www.cbc.ca/news")
addMenu2(urls,"t","4","%wm1% https://www.cbc.ca/player/play/1761841219930")
addMenu2(urls,"t","8","%wm1% https://toronto.ctvnews.ca/video?clipId=1899996")
addMenu2(urls,"t","0","%wm1% https://www.ctvnews.ca/video?binId=1.810415")
addMenu2(urls,"r","8","%wm1% https://www.iheart.com/live/iheart80s-radio-5060/")
addMenu2(urls,"r","1","%wm1% https://www.iheart.com/live/2010s-the-decade-8465/")
addMenu2(urls,"r","2","%wm1% https://www.iheart.com/live/iheart2010s-radio-8478/")
addMenu2(urls,"r","l","%wm1% https://www.iheart.com/live/b-1073-6731/")
;addMenu2(urls,"t","","%wm1% https://www.ctvnews.ca/live?autoPlay=true")
addMenu2(urls,"t","7","%wm1% https://www.ctvnews.ca/ctv-national-news")
;addMenu2(urls,"t","","%wm1% https://toronto.ctvnews.ca/video?clipId=1899996")
;addMenu2(urls,"","","%wm1% https://toronto.ctvnews.ca/video?clipId=1899996")
;addMenu2(urls,"","","%wm1% https://www.iheart.com/live/2010s-the-decade-8465/")
addMenu1(ext3,"g","%wt1% https://www.google.ca/")
addMenu1(ext3,"m","%wt1% https://www.google.ca/maps/@43.6314075,-79.3941305,14z")
addMenu1(ext3,"w","%wt1% https://www.wikipedia.org/")
addMenu1(ext3,"p","%wt1% http://www.pof.com/basicsearch.aspx?iama=m&minage=18&maxage=24&seekinga=f&ethnicity=0&sorting=0&miles=35&country=17&imagesetting=0&page=1&count=600")
addMenu1(ext3,"o","%wt1% http://www.pof.com/basicsearch.aspx?iama=m&minage=44&maxage=74&z_code=M5T3A4&body=4_5&seekinga=f&ethnicity=0&sorting=0&miles=35&country=17&imagesetting=0&page=1&count=600")
;addMenu1(ext3,"","%wt1% https://toronto.craigslist.ca/search/w4m")
;addMenu2(urls,"","","%wt1% https://toronto.craigslist.ca/search/cas/?query=w4m")
addMenu1(ext3,"f","%wt1% https://toronto.craigslist.org/d/free-stuff/search/zip")
addMenu1(ext3,"c","%wt1% https://toronto.craigslist.org/d/computers/search/sya")
addMenu1(ext3,"s","%wt1% https://toronto.craigslist.org/search/sss/")
addMenu2(urls,"y","m","%wo1% https://www.youtube.com/user/dayflirts/videos")
addMenu2(urls,"y","s","%wo1% https://www.twitch.tv/saracantaloupes/videos")
;addMenu2(urls,"","","%wo1% https://www.instagram.com/saraparah/")
;addMenu2(urls,"","","%wo1% https://twitter.com/sara_parah")
addMenu2(urls,"y","2","%wo1% https://www.youtube.com/channel/UC2lIa5vJrEx8nBOA90hfIMA/videos")
addMenu2(urls,"y","j","%wo1% https://www.youtube.com/user/JustinWayneDating/videos")
addMenu2(urls,"y","s","%wo1% https://www.youtube.com/user/SimplySaranade/videos")
addMenu2(urls,"y","a","%wo1% https://www.youtube.com/user/itsmeSTEPANKA/videos")
;addMenu2(urls,"","","%wo1% https://www.younow.com/StepankaMatto",vwb)
addMenu2(urls,"y","o","%wo1% https://www.youtube.com/user/OGpuzik/videos")
addMenu1(ext3,"a","%wt1% http://www.wolframalpha.com/")
addMenu2(urls,"y","t","%wo1% https://www.youtube.com/user/ThunderboltsProject/videos")
;addMenu1(ext3,"i","%wt1% https://www.igdb.com/discover")
addMenu2(urls,"y","h","%wo1% https://www.instagram.com/heatherjrock/?hl=en")
addMenu1(ext3,"","%wt1% https://duckduckgo.com/")
addMenu2(urls,"s","s","%wm1% http://thesocial.ca/")
;addMenu2(urls,"","","%wt1% https://duckduckgo.com/?t=ffab&q=weather+&ia=weather")
;addMenu2(urls,"","","%wt1% https://www.startpage.com/#q=toronto+weather&*")
addMenu2(urls,"m","y","%wf1% https://login.yahoo.com/m?.src=ym&.lang=en-US&.intl=us&.done=https%3A%2F%2Fmail.yahoo.com%2Fd")
addMenu2(urls,"m","r","%wf1% https://mail.rediff.com/cgi-bin/login.cgi")
addMenu2(urls,"m","g","%wf1% https://www.gmail.com")
addMenu1(ext3,"p","%wt1% https://www.ncbi.nlm.nih.gov/pubmed/")
addMenu2(urls,"m","d","%wf1% https://www.dropbox.com/login")
addMenu1(ext3,"x","%wt1% https://xhamster.com/search.php?from=&q=busty+&qcat=video")
;addMenu1(ext3,"d","duckduckgo.com")
addMenu1(ext3,"l","C:\Users\z\Desktop\bin2\login.html") 
addMenu2(urls,"c","h","%wop1g% http://www.wtharvey.com")
addMenu2(urls,"c","b","%wop1g% http://www.chessbase.com")
addMenu2(urls,"c","g","%wop1g% http://www.chessgames.com")
addMenu2(urls,"s","y","%wo1% http://www.twitter.com")
addMenu2(urls,"m","l","%wf1% https://login.live.com/login.srf?wa=wsignin1.0&rpsnv=13&ct=1564777376&rver=7.0.6737.0&wp=MBI_SSL&wreply=https%3a%2f%2foutlook.live.com%2fowa%2f%3fnlp%3d1%26RpsCsrfState%3d2defb976-9a4e-fc2c-3a19-234384fb20cb&id=292841&aadredir=1&CBCXT=out&lw=1&fl=dob%2cflname%2cwld&cobrandid=90015")
addMenu1(ext3,"v","%wt1% https://duckduckgo.com/?q=&iax=videos&ia=videos#")
addMenu2(urls,"y","y","%wo1% http://www.youtube.com")
addMenu1(ext3,"e","%wt1% https://epicsearch.in/search?")
addMenu1(ext3,"s","%wt1% https://startpage.com/sp/search")
addMenu2(urls,"v","u","%wo1% https://video.search.yahoo.com/search/video;_ylt=Awr9ImYt9lNfrkAAoiFXNyoA;_ylu=Y29sbwNncTEEcG9zAzEEdnRpZANBMDYxNV8xBHNlYwNwaXZz?p=&action=view")
addMenu2(urls,"v","v","%wt1% https://www.bing.com/videos/search?q=")
addMenu2(urls,"v","b","%wo1% https://www.bing.com/videos/browsing?q=")
addMenu2(urls,"c","k","%wo1% http://www.k4it.de/index.php?topic=egtb&lang=en")
addMenu2(urls,"f","s","%wm1% http://www.espn.com/nfl/statistics/team/_/stat/total")
addMenu2(urls,"f","t","%wm1% https://www.teamrankings.com/nfl/stat/touchdowns-per-game")
addMenu2(urls,"f","m","%wm1% https://www.covers.com/sports/nfl/matchups")
addMenu2(urls,"b","m","%wm1% https://www.covers.com/sports/nba/matchups")
addMenu2(urls,"b","o","%wm1% https://www.covers.com/pageLoader/pageLoader.aspx?page=/data/nba/statistics/2018-2019/offense_pt_regular.html")
addMenu2(urls,"b","s","%wm1% https://www.covers.com/pageLoader/pageLoader.aspx?page=/data/nba/statistics/2018-2019/statistics_regular.html")
addMenu2(urls,"b","d","%wm1% https://www.covers.com/pageLoader/pageLoader.aspx?page=/data/nba/statistics/2018-2019/defense_pt_regular.html")
addMenu2(urls,"h","m","%wm1% https://www.covers.com/sports/nhl/matchups")
addMenu2(urls,"h","o","%wm1% https://www.covers.com/sport/hockey/nhl/2018-2019/statistics/team-scoring")
addMenu2(urls,"h","d","%wm1% https://www.covers.com/sport/hockey/nhl/2018-2019/statistics/team-defense")
addMenu2(urls,"h","s","%wm1% https://www.covers.com/sport/hockey/nhl/statistics")
addMenu2(urls,"h","r","%wm1% https://www.covers.com/sport/hockey/nhl/standings")
addMenu1(ext3,"n","%wt1% https://ndb.nal.usda.gov/ndb/nutrients/index")
;addMenu2("/","","%wt1% https://ndb.nal.usda.gov/ndb/search/list") 
;addMenu2("","","%wt1% https://www.google.ca/maps/?hl=en") 
;addMenu2("","","%wt1% https://www.google.ca/search?q=&tbm=isch")
;addMenu2("","","%wt1% https://www.google.ca/search?q=&tbm=bks")
addMenu2(urls,"c","t","%wo1% http://forum.chesstalk.com/forumdisplay.php?f=2&mode=linear")
;addMenu2(urls,"","","%wt1% https://scholar.google.com/scholar_lookup?")
;addMenu2(urls,"","","%wo1% http://tactics.chessbase.com/")
;addMenu2("","", "G:\appdl\fileman\Q-Dir_Portable_x64\Q-Dir\Q-Dir.exe")
;addMenu2(urls,"","","%wt1% https://www.startpage.com/search?q=%clipboard%")
addMenu2(apps1,"w","o",  "C:\Users\z\AppData\Local\Programs\Opera\launcher.exe")
;addMenu2(apps1,".","e", "C:\Users\z\AppData\Local\Epic Privacy Browser\Application\epic.exe -width 942 -height 500")
addMenu1(wincmds3,"h", "h:\a\")
;wincmds3["h"]= "h:\a\"
addMenu2(apps1,"w","t", "G:\webbr\Tor Browser\Browser\firefox.exe")
;addMenu2(apps1,"","", "C:\Users\z\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\alockkeyboard.lnk") 
addMenu2(apps1,"w","m", "microsoft-edge:")
;addMenu2(urls,"","", microsoft-edge: https://www.youtube.com/")
;addMenu2(apps1,"","", G:\game\PokerStars\PokerStarsUpdate.exe")
;addMenu2(apps1,"","", "H:\a\uvnc bvba\UltraVNC\vncviewer.exe -dsmplugin SecureVNCPlugin.dsm -listen 5500")
;addMenu2(apps1,"","", "H:\a\uvnc bvba\UltraVNC\vncviewer.exe")
addMenu2(apps1,"'","a", "h:\a\AHK-Studio.ahk")
;addMenu2(apps1,"","", "h:\a\AutoIt3\SciTE\SciTE.exe")
addMenu2(apps1,"p","p", "C:\Users\Public\Desktop\Advanced Port Scanner.lnk")
;addMenu2(apps1,"h","z", "G:\a\ahk\AutoHotkey.chm")
addMenu2(apps1,"h","h", "H:\a\sumatra\SumatraPDF-3.3-64.exe C:\Users\z\AutoHotkey.chm")
addMenu2(apps1,"h","a", "H:\a\sumatra\SumatraPDF-3.3-64.exe H:\a\AutoIt3\AutoIt.chm")
addMenu2(apps1,"h","d", "C:\Users\z\AppData\Local\documentalist\Documentalist.exe")
;addMenu2(apps1,"","", "H:\a\console\Console2\Console.exe")
;addMenu2(apps1,"","",  "H:\a\cmdrmini\Cmder.exe")
;addMenu2(apps1,"","", "H:\a\TightVNC\tvnviewer.exe")
addMenu2(apps1,"l","7", "H:\a\TightVNC\tvnviewer.exe -host=192.168.1.7 -password=yo")
addMenu2(apps1,"l","3", "putty user@192.168.1.3 -pw live")
;addMenu2(apps1,"","", "H:\a\TightVNC\tvnviewer.exe -optionsfile='C:\Users\z\Desktop\w4.vnc'")
;addMenu2(apps1,"","", "H:\a\TightVNC\tvnviewer.exe -optionsfile='C:\Users\z\Desktop\w5.vnc'
    ;addMenu2(apps1,"","", H:\a\TightVNC\tvnviewer.exe -optionsfile='C:\Users\z\Desktop\w6.vnc'")
    ;addMenu2(apps1,"","", 'H:\a\TightVNC\tvnviewer.exe -optionsfile='C:\Users\z\Desktop\w7.vnc'")
    ;addMenu2(apps1,"","", "H:\a\TightVNC\tvnviewer.exe -listen 5000")
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
;addMenu2(apps1,"","", "h:\a\nircmd-x64\nircmd savescreenshot z:\%CurrentDateTime%.png")
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
;addMenu2(apps1,"","", "h:\a\cmdrmini\Cmder.exe")
;addMenu2(apps1,"","","runas /user:aio\a 'h:\a\cmdrmini\Cmder.exe'")
;addMenu2(apps1,"","","runas /user:aio\a 'cmd'")
;addMenu2(apps1,"","","runas /user:aio\a \"netsh interface ip set dns name='Local Area Connection' static 208.67.222.222\"")
;addMenu2(apps1,"","","runas /user:aio\a 'cmd /k cd /d %userprofile%\desktop'")
;addMenu2(apps1,"","","runas /user:aio\a /savecred  'cmd  /k \"cd /d %userprofile%\desktop\"'")
;addMenu2(apps1,"","", "taskkill /f /fi 'status eq not responding'")
;addMenu2(apps1,"","", "H:\a\clink\clink_0.4.9\clink.bat")
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
addMenu2(apps1,"k","c", "c:\a\clink\clink.bat")a
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

addMenu2(apps1,"c","x","runas /user:aio\a h:\a\cmdrmini\Cmder.exe'")
addMenu2(apps1,"k","c","runas /user:aio\a 'cmd'")
addMenu2(apps1,"o","d","runas /user:aio\a 'netsh interface ip set dns name='Local Area Connection' static 208.67.222.222'")
;addMenu2(apps1,"[","","runas /user:aio\a 'cmd /k cd /d %userprofile%\desktop'")
;addMenu2(apps1,"","","runas /user:aio\a /savecred  'cmd  \"/k cd /d %userprofile%\desktop\"'")
;addMenu2(apps1,"","", "taskkill /f /fi 'status eq not responding'")
addMenu2(apps1,"c","l", "H:\a\clink\clink_0.4.9\clink.bat")
;addMenu2(apps1,"","", "cmd /k 'cd /d %userprofile%\desktop'")
addMenu2(apps1,"k","i","runas /user:aio\a ''%windir%\system32\WindowsPowerShell\v1.0\PowerShell_ISE.exe'")
addMenu2(urls,"i","g","%wt1% https://www.google.ca/search?q=busty+granny&ie=utf-8&oe=utf-8&gws_rd=cr&ei=t0pDWOaGLunZjwSa1LXYAw")
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
addMenu2(urls,"w","e", "C:\Users\z\AppData\Local\Epic Privacy Browser\Application\epic.exe")
;addMenu1(ext3,"d","duckduckgo.com")
addMenu2(urls,"d","v","\Microsoft Visual Stu1dio 10.0\Common7\IDE\VCExpress.exe")

addMenu2(apps1,"i","w", "G:\a\wifiscan\WifiInfoView.exe")
addMenu2(apps1,"i","n", "G:\a\wlman\WirelessNetView.exe")
addMenu2(apps1,"c","j", "H:\a\cmdrmini\Cmder.exe")
addMenu2(apps1,"c","h", "H:\a\console\Console2\Console.exe")
addMenu2(apps1,"c","a", "H:\a\AHKCommandPicker-1.3.1\AHKCommandPicker-1.3.1\src\AHKCommandPicker.ahk")
;addMenu2(apps1,"i","a", "G:\edtr\Vim8\vim81\gvim.exe --noplugin '%A_ScriptFullPath%'")
addMenu2(apps1,"i","a","G:\edtr\Vim8\vim81\gvim.exe --noplugin 'H:\a\AHKCommandPicker-1.3.1\AHKCommandPicker-1.3.1\src\Commands\MyCommands.ahk'")
addMenu2(apps1,"i","e", "G:\edtr\vim8\vim81\gvim.exe  'C:\Users\z\AppData\Roaming\.emacs'") 
addMenu2(apps1,"i","s", "G:\edtr\vim8\vim81\gvim.exe  'C:\Users\z\AppData\Roaming\.emacs.d\.spacemacs.d\init.el'")

addMenu2(apps1,"c","v", "H:\a\console\Console2\Console.exe")
addMenu2(apps1,"c","k",  "H:\a\cmdrmini\Cmder.exe")
addMenu2(apps1,"l","3","H:\a\TightVNC\tvnviewer.exe -optionsfile='C:\Users\z\Desktop\w3.vnc'")
addMenu2(apps1,"l","4", "H:\a\TightVNC\tvnviewer.exe -optionsfile='C:\Users\z\Desktop\w4.vnc'")
addMenu2(apps1,"l","5", "H:\a\TightVNC\tvnviewer.exe -optionsfile='C:\Users\z\Desktop\w5.vnc'")
addMenu2(apps1,"l","6", "H:\a\TightVNC\tvnviewer.exe -optionsfile='C:\Users\z\Desktop\w6.vnc'")
addMenu2(apps1,"l","7", "H:\a\TightVNC\tvnviewer.exe -optionsfile='C:\Users\z\Desktop\w7.vnc'")
addMenu2(apps1,"p","p", "C:\Users\Public\Desktop\Advanced Port Scanner.lnk")

addMenu2(apps1,"h","a", "G:\a\ahk\AutoHotkey.chm")
addMenu2(apps1,"l","v", "H:\a\uvnc bvba\UltraVNC\vncviewer.exe -dsmplugin SecureVNCPlugin.dsm -listen 5500")
addMenu2(apps1,"l","b", "H:\a\uvnc bvba\UltraVNC\vncviewer.exe")

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
addMenu2(urls,"z", "e", "%ev% %cmddir%.emacs")
addMenu2(urls,"z", "v","%ev% %cmddir%vimkeys.vim")
addMenu2(urls,"z", "u","%ev% %predir%AHKCommandPicker-1.3.1\AHKCommandPicker-1.3.1\src\Commands\urls.ahk")
addMenu2(urls,"z", "l", "%ev% %predir%AHKCommandPicker-1.3.1\AHKCommandPicker-1.3.1\src\Commands\urllauncher.ahk")
addMenu2(urls,"z", "k","%ev% %cmddir%keymenu.ahk")
addMenu2(urls,"z", "a","%ev% %cmddir%ahk.ahk" )
addMenu2(urls,"z", "r","%ev% %cmddir%rkeys.ahk")
addMenu2(urls,"z", "s","%ev% %A_ScriptFullPath%")
addMenu2(urls,"z", "i","%ev% %cmddir%aioahk.ahk")


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

addMenu2(apps1,"0","0","%wo0%")
addMenu2(apps1,"1","0","%wt0%")
addMenu2(apps1,"3","0","%we0%")

addMenu2(apps1,"0","1","%awop1%")
addMenu2(apps1,"0","2","%awop2%")
addMenu2(apps1,"0","3","%awop3%")
addMenu2(apps1,"0","4","%awop4%")

addMenu2(apps1,"1","1","%awtb1%")
addMenu2(apps1,"1","2","%awtb2%")
addMenu2(apps1,"1","3","%awtb3%")
addMenu2(apps1,"1","4","%awtb4%")

addMenu2(apps1,"3","1","%awep1%")
addMenu2(apps1,"3","2","%awep2%")
addMenu2(apps1,"3","3","%awep3%")
addMenu2(apps1,"3","4","%awep4%")


addMenu2(apps1,"4","1","%wep1%")
addMenu2(apps1,"4","2","%wep2%")
addMenu2(apps1,"4","3","%wep3%")
addMenu2(apps1,"4","3","%wep4%")

addMenu2(apps1,"9","1","%wop1%")
addMenu2(apps1,"9","2","%wop2%")
addMenu2(apps1,"9","3","%wop3%")
addMenu2(apps1,"9","4","%wop4%")

addMenu2(apps1,"9","m","%wopm0%")
addMenu2(apps1,"7","4","%predir%wb\opm0\opera.exe --user-data-dir=%profdir%opm04")
addMenu2(apps1,"7","5","%predir%wb\opm0\opera.exe --user-data-dir=%profdir%opm05")
addMenu2(apps1,"7","6","%predir%wb\opm0\opera.exe --user-data-dir=%profdir%opm06")
addMenu2(apps1,"5","7","%predir%wb\ep2\Application\epic.exe --user-data-dir=%profdir%ep27  ")
addMenu2(apps1,"5","8","%predir%wb\ep2\Application\epic.exe --user-data-dir=%profdir%ep28  ")
addMenu2(apps1,"5","9","%predir%wb\ep2\Application\epic.exe --user-data-dir=%profdir%ep29  ")
addMenu2(apps1,"f","v","%predir%vifm\vifm.exe")
addMenu2(apps1,"s","l","%ffox% %ffpriv% loblaws.ca")
addMenu2(apps1,"s","e","%ffox% %ffpriv% essenceoflifeorganics.com ")
addMenu2(apps1,"f","e","C:\Program Files\Everything\Everything.exe")
addMenu2(apps2,"q","",getexec(ee27re, "--load %cmddir%.emacs")) 
addMenu2(apps1,"s","i","%ee27re% --load %cmddir%init.el")
addMenu2(apps2,"","",getexec("tight\tvnviewer"))
addMenu2(apps1,"l","l","%cmddir%login.bat")
addMenu2(apps1,"l","k","%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\alockkeyboard.lnk")
addMenu2(dirs1,"a","l","%userprofile%\AppData\local")
addMenu2(dirs1,"a","r","%userprofile%\AppData\roaming")
addMenu2(dirs1,"a","p","%userprofile%\AppData\local\programs")
addMenu2(dirs,"o","p","c:\program files ")

addMenu2(dirs,"b","g","c:\grub2")
addMenu2(dirs,"o","w","c:\windows")
addMenu2(apps1,"w","m","microsoft-edge:")
addMenu2(urls1,"p","r","http://www.renseradioarchives.com/")
addMenu2(urls1,"p","h","https://thehill.com/")
addMenu2(urls1,"p","y","https://www.hilltimes.com/")
addMenu2(urls,"y","m","microsoft-edge:https://www.youtube.com/")
addMenu2(apps1,"g","p","G:\game\PokerStars\PokerStarsUpdate.exe")
addMenu2(urls1,"s","n","https://www.covers.com/sport/football/nfl/printsheet")
addMenu2(apps2,"u","l",getexec("UltraVNC\vncviewer.exe", "-dsmplugin SecureVNCPlugin.dsm -listen" . %uvncp%))
addMenu2(apps2,"u","v",getexec("UltraVNC\vncviewer.exe"))
gourl("walmart.ca/search/")
addMenu2(urls1,"n","l","https://www.youtube.com/results?search_query=news+live")
addMenu2(apps1,"h","s","%predir%AHK-Studio.ahk")
addMenu2(apps1,"e","s","%predir%AutoIt3\SciTE\SciTE.exe")
addMenu2(apps1,"/","s","%ev% c:/cmd/search.html ")
addMenu2(apps1,"p","s","C:\Users\Public\Desktop\Advanced Port Scanner.lnk")
addMenu2(apps1,"h","h","G:\a\ahk\AutoHotkey.chm")
addMenu2(urls1,"g","t","https://www.tvguide.com/listings/")
addMenu2(urls1,"g","v","https://www.ontvtonight.com/guide/")
addMenu2(urls1,"a","k","https://www.kijiji.ca/h-city-of-toronto/1700273")
addMenu2(urls1,"m","a","https://ustvgo.tv/amc-live/")
addMenu2(urls1,"t","a","https://ustvgo.tv/abc/")
addMenu2(urls1,"t","c","https://ustvgo.tv/cbs/")
addMenu2(urls1,"n","c","https://www.cbsnews.com/live/")
addMenu2(urls1,"t","u","https://ustvgo.tv/usa-network-live/")
addMenu2(urls1,"t","w","https://ustvgo.tv/we-tv")
addMenu2(urls1,"t","b","https://ustvgo.tv/bbc-america-live/")
addMenu2(urls1,"m","s","https://ustvgo.tv/syfy-channel-live/")
addMenu2(urls1,"t","s","https://ustvgo.tv/sundance-tv/")
addMenu2(urls1,"t","2","https://www.cp24.com/video?clipId=1921747")
addMenu2(urls1,"n","e","https://www.euronews.com/live")
addMenu2(urls1,"n","w","http://www.live-tv-radio.com/tv/europe.shtml")
addMenu2(urls1,"n","q","https://www.squidtv.net/europe/")
addMenu2(urls1,"n","a","https://abcnews.go.com/Live/")
addMenu2(urls1,"g","g","https://ustv247.tv/guide/index.html")
addMenu2(urls1,"n","u","https://usatodaynews.live/us-news/")
addMenu2(urls1,"j","w","https://www.twitch.tv/directory")
addMenu2(urls1,"n","o","https://onlineradiobox.com/us/genre/news/")
addMenu2(urls1,"n","b","https://www.cbsnews.com/live/video/")
addMenu2(urls1,"l","n","https://www.iheart.com/live/country/US/city/newyork-ny-159/?genreId=9")
addMenu2(urls1,"/","t","https://twitter.com/search-home")
addMenu2(urls1,"l","k","https://www.kezi.com/livestream/")
addMenu2(urls1,"n","C","https://www.cbsnews.com/video/#x")
addMenu2(apps1,"p","s","%predir%sumatra\SumatraPDF-3.3-64.exe %userprofile%\AutoHotkey.chm")
addMenu2(apps1,"h","i","%predir%sumatra\SumatraPDF-3.3-64.exe %predir%AutoIt3\AutoIt.chm")
addMenu2(apps1,"h","d","%userprofile%\AppData\Local\documentalist\Documentalist.exe")
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
addMenu2(apps1,".","2","%predir%tight\tvnviewer.exe -optionsfile='%userprofile%\Desktop\w2.vnc'")
addMenu2(apps1,".","3","%predir%tight\tvnviewer.exe -optionsfile='%userprofile%\Desktop\w3.vnc'")
addMenu2(apps1,".","4","%predir%tight\tvnviewer.exe -optionsfile='%userprofile%\Desktop\w4.vnc'")
addMenu2(apps1,".","5","%predir%tight\tvnviewer.exe -optionsfile='%userprofile%\Desktop\w5.vnc'")
addMenu2(apps1,".","6","%predir%tight\tvnviewer.exe -optionsfile='%userprofile%\Desktop\w6.vnc'")
addMenu2(apps1,".","7","%predir%tight\tvnviewer.exe -optionsfile='%userprofile%\Desktop\w7.vnc'")
addMenu2(apps1,".","8","%predir%tight\tvnviewer.exe -optionsfile='%userprofile%\Desktop\w8.vnc'")
addMenu2(apps1,".","9","%predir%tight\tvnviewer.exe -optionsfile='%userprofile%\Desktop\w9.vnc'")
addMenu2(apps1,".","l","%predir%tight\tvnviewer.exe -listen 5000")
;addMenu2(urls1,"-","r","https://mail.rediff.com/cgi-bin/login.cgi")
addMenu2(urls1,"-","g","https://accounts.google.com/signin/v2/identifier?service=mail&passive=true&rm=false&continue=https%3A%2F%2Fmail.google.com%2Fmail%2F&ss=1&scc=1&ltmpl=default&ltmplcache=2&emr=1&osid=1&flowName=GlifWebSignIn&flowEntry=ServiceLogin")
addMenu2(urls1,"-","d","http://dropbox.com")
addMenu2(urls1,"-","t","https://authentication.td.com/uap-ui/index.html?consumer=easyweb&locale=en_CA#/login/easyweb-getting-started")
addMenu2(urls1,"-","b","http://box.com")
addMenu2(urls1,"-","s","http://sync.com")
addMenu2(urls1,"-","p","http://pcloud.com")
addMenu2(urls1,"-","m","http://mega.nz")
addMenu2(urls1,"=","f","%userprofile%\Desktop\bin2\finance.html")
addMenu2(urls1,"/","g","https://gh1232.github.io/search.html")
addMenu2(urls1,"/","s","file:///c:/cmd/search.html")
addMenu2(urls1,"/","n","%userprofile%\desktop\bin2\news.html")
addMenu2(urls1,"/","l","file:///u:\d\newslinks.html")
addMenu2(urls1,"/","u","file:///c:\cmd\surf.html")
addMenu2(urls1,"/","m","%userprofile%\Desktop\bin2\email.html")
addMenu2(urls1,"g","d"," %ffox%  %ffpriv% https://www.draftkings.com/mycontests")
addMenu2(urls1,"=","s","https://speedof.me/")
addMenu2(urls1,"=","d","https://fast.com/")
addMenu2(urls1,"=","x","http://speedtest.xfinity.com/")
addMenu2(urls1,"=","n","http://www.speedtest.net/")
addMenu2(urls1,"=","b","https://www.bandwidthplace.com/")
addMenu2(urls1,"/","p","https://patents.google.com/?q=")
addMenu2(apps2,"o","3",getexec( "ssh"," root@192.168.1.3 "))
addMenu2(apps2,"p","3",getexec( "putty\putty"," root@192.168.1.3 "))
addMenu2(dirs1,"w","m","%windir%\System32\cmd.exe /c start shell:AppsFolder\Microsoft.MicrosoftEdge_8wekyb3d8bbwe!MicrosoftEdge -private")
addMenu2(apps1,"l","p","C:\Users\Public\Desktop\PuTTY (64-bit).lnk")
addMenu2(apps2,"t","x",getexec("mstsc","/f ","x"))
addMenu2(dirs1,"o","a","%cmddir%")
addMenu2(dirs1,"o","t","c:\windows\temp")
addMenu2(dirs1,"a","t","%userprofile%\appdata\local\temp")
addMenu2(urls1,"h","m","https://www.makeuseof.com/")
addMenu2(urls1,"h","g","https://www.howtogeek.com/")
addMenu2(urls1,"s","o","https://pcoptimum.ca")
addMenu2(apps1,"n","i","G:\a\wifiscan\WifiInfoView.exe")
addMenu2(apps1,"n","v","G:\a\wlman\WirelessNetView.exe")
addMenu2(apps1,"n","w","G:\view\Wireshark\wireshark")
addMenu2(dirs1,"o","e","J:\elec  ")
addMenu2(apps1,"o","u","%predir%upl")
addMenu2(apps1,"o","g","G:\")
addMenu2(apps1,"o","m","m:\a")
addMenu2(apps2,";","z",getexec("cmdrmini\Cmder.exe"))
addMenu2(apps2,";","a",getexec("console\Console2\Console.exe"))
addMenu2(apps2,"a","c",getexec("AHKCommandPicker-1.3.1\AHKCommandPicker-1.3.1\src\AHKCommandPicker.ahk"))
addMenu2(apps1,"s","v","%predir%vim82\gvim.exe -u c:\cmd\vimkeys.vim  --noplugin '%A_ScriptFullPath%'")
addMenu2(apps1,"s","r","%predir%vim82\gvim.exe -u c:\cmd\vimkeys.vim  --noplugin '%userprofile%\desktop\bin2\myruns.ahk'")
addMenu2(apps1,"s","c","%predir%vim82\gvim.exe -u c:\cmd\vimkeys.vim  --noplugin '%predir%AHKCommandPicker-1.3.1\AHKCommandPicker-1.3.1\src\Commands\MyCommands.ahk'")
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
addMenu2(apps1,"s","j","%predir%vim82\gvim.exe -u c:\cmd\vimnkeys.vim %userprofile%\AppData\Roaming\.emacs.d\init.el")
addMenu2(apps1,"s","r","%predir%vim82\gvim.exe -u c:\cmd\vimkeys.vim   %userprofile%\AppData\Roaming\.emacs")
addMenu2(apps1,"s","s","%predir%vim82\gvim.exe -u c:\cmd\vimkeys.vim   '%userprofile%\AppData\Roaming\.emacs.d\.spacemacs.d\init.el'")
addMenu2(dirs1,"o","w","%userprofile%\AppData\Roaming\Microsoft\Windows")
addMenu2(dirs1,"o","x","%userprofile%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup")
addMenu2(urls1,"n","o","https://ustvgo.tv/one-america-news-network/")
addMenu2(urls1,"g","m","https://www.tvguide.com/listings/#movies")

addMenu2(urls1,"n","6","http://player.680news.com/")
addMenu2(urls1,"l","g","https://gem.cbc.ca/live/1961983043633")
addMenu2(urls1,"t","g","https://gem.cbc.ca/")
addMenu2(urls1,"n","5","https://www.cbc.ca/player/news/tv%20shows/the%20national")
addMenu2(urls1,"n","2","https://www.iheart.com/live/cp24-7796/")
addMenu2(urls1,"n","1","https://www.iheart.com/live/ctv-news-7798/")
addMenu2(urls1,"l","t","https://www.iheart.com/live/country/CA/city/toronto-on-584/")
addMenu2(urls1,"n","%","https://www.cbc.ca/player/play/2670346028")
addMenu2(urls1,"n","9","https://www.ctvnews.ca/live?autoPlay=true") 
addMenu2(urls1,"r","w","http://worldradiomap.com/list/")
addMenu2(urls1,"r","t","worldradiomap.com/ca/toronto")
;addMenu2(urls1,"n","$","https://www.cbc.ca/player/play/1711321155969")
addMenu2(urls1,"n","4","https://www.cbc.ca/")
addMenu2(urls1,"n","5","https://www.cbc.ca/player/news/tv%20shows/the%20national/latest%20broadcast")
addMenu2(urls1,"m","8","https://www.iheart.com/live/iheart80s-radio-5060/")
addMenu2(urls1,"m","1","https://www.iheart.com/live/2010s-the-decade-8465/")
addMenu2(urls1,"m","2","https://www.iheart.com/live/iheart2010s-radio-8478/")
addMenu2(urls1,"m","7","https://www.iheart.com/live/b-1073-6731/")

addMenu2(urls1,"n","(","https://www.ctvnews.ca/live?autoPlay=true")
addMenu2(urls1,"n","!","https://www.ctvnews.ca/ctv-national-news")
addMenu2(urls1,"/","h","https://www.google.ca/")
addMenu2(urls1,"/","m","https://www.google.ca/maps/@43.6314075,-79.3941305,14z")
addMenu2(urls1,"/","p","https://www.wikipedia.org/")
addMenu2(urls1,"/","2","http://www.pof.com/basicsearch.aspx?iama=m&minage=18&maxage=24&seekinga=f&ethnicity=0&sorting=0&miles=35&country=17&imagesetting=0&page=1&count=600")
addMenu2(urls1,"","7","http://www.pof.com/basicsearch.aspx?iama=m&minage=44&maxage=74&z_code=M5T3A4&body=4_5&seekinga=f&ethnicity=0&sorting=0&miles=35&country=17&imagesetting=0&page=1&count=600")
addMenu2(urls1,"/","3","https://toronto.craigslist.ca/search/w4m")
addMenu2(urls1,"/","5","https://toronto.craigslist.ca/search/cas/?query=w4m")
addMenu2(urls1,"/","z","https://toronto.craigslist.org/d/free-stuff/search/zip")
addMenu2(urls1,"/","8","https://toronto.craigslist.org/d/computers/search/sya")
addMenu2(urls1,"/","9","https://toronto.craigslist.org/search/sss/")
addMenu2(urls1,"/","6","https://www.youtube.com/user/dayflirts/videos")
addMenu2(urls1,"/","^","https://www.twitch.tv/saracantaloupes/videos")
addMenu2(urls1,"/","&","https://www.instagram.com/saraparah/")
addMenu2(urls1,"/","(","https://twitter.com/sara_parah")
;addMenu2(urls1,"/","%","https://www.youtube.com/channel/UC2lIa5vJrEx8nBOA90hfIMA/videos")
addMenu2(urls1,"/","#","https://www.youtube.com/user/JustinWayneDating/videos")
addMenu2(urls1,"/","!","https://www.youtube.com/user/SimplySaranade/videos")
addMenu2(urls1,"/","@","https://www.youtube.com/user/itsmeSTEPANKA/videos")
addMenu2(urls1,"/","$","https://www.younow.com/StepankaMatto")
addMenu2(urls1,"/","~","https://www.youtube.com/user/OGpuzik/videos")
addMenu2(urls1,"/","a","http://www.wolframalpha.com/")
addMenu2(urls1,"=","t","https://www.youtube.com/user/ThunderboltsProject/videos")
addMenu2(urls1,"/","o","https://www.igdb.com/discover")
addMenu2(urls1,"/",")","https://www.instagram.com/heatherjrock/?hl=en")
addMenu2(urls1,"f","d","https://duckduckgo.com/")
addMenu2(urls1,"f","s","thesocial.ca/")
addMenu2(urls1,"f","w","https://duckduckgo.com/?t=ffab&q=weather+&ia=weather")
;addMenu2(urls1,"f","p","https://www.startpage.com/#q=toronto+weather&*")
addMenu2(urls1,"m","y","https://login.yahoo.com/m?.src=ym&.lang=en-US&.intl=us&.done=https%3A%2F%2Fmail.yahoo.com%2Fd")
addMenu2(urls1,"m","r","https://mail.rediff.com/cgi-bin/login.cgi")
addMenu2(urls1,"m","g","https://www.gmail.com")
addMenu2(urls1,"/","[","https://www.ncbi.nlm.nih.gov/pubmed/")
addMenu2(urls1,"m","d","https://www.dropbox.com/login")
addMenu2(apps1,"w","p","g:\webbr\pale moon\Palemoon.exe")
addMenu2(urls1,"f","x","https://xhamster.com/search.php?from=&q=busty+&qcat=video")
;>^e::addMenu2(apps1,"e","r","C:\Users\Grandpa\Desktop\z\b\emacs\emacs\bin\runemacs.exe -fg white -bg black -fs  -g 700x240+0+0")
addMenu2(apps1,"w","r","%userprofile%\AppData\Local\Epic Privacy Browser\Application\epic.exe")
addMenu2(apps1,"i","e","C:\Program Files (x86)\Microsoft Visual Stu1dio 10.0\Common7\IDE\VCExpress.exe")
addMenu2(apps1,"w","i","iexplore")
addMenu2(apps1,"w","g"," C:\Users\Grandpa\Desktop\z\b\chromium\chrome-win32\chrome.exe")
addMenu2(urls1,"l","z","%userprofile%\Desktop\bin2\login.html") 
;#^v::addMenu2(apps1,"v","s","c:\Windows\Speech\Common\sapisvr.exe")
addMenu2(apps1,"b","i","C:\Users\Public\Downloads\boot.iso")
addMenu2(apps1,"v","b","C:\Program Files\Oracle\VirtualBox\VirtualBox.exe")
addMenu2(apps1,"m","r","C:\Users\Grandpa\Desktop\z\a\r31\bin\x64\Rgui.exe")
addMenu2(apps1,"e","n","notepad ")
addMenu2(apps1,"n","m","C:\Users\Grandpa\Desktop\z\a\netw\64-bit\networx.exe")
addMenu2(apps1,"c","a","G:\chess\arena_3.5.1\arena")
addMenu2(apps1,"m","a","%userprofile%\Music\Playlists\all.wpl")
addMenu2(apps1,"m","z","%userprofile%\Music\Playlists\a.wpl")
addMenu2(apps1,"x","s","C:\windows\system32\snippingtool ")
addMenu2(apps1,"x","c","C:\windows\system32\snippingtool /clip")

addMenu2(apps1,"x","z","%predir%nircmd-x64\nircmd savescreenshot z:\%CurrentDateTime%.png")
addMenu2(apps1,"x","x","cmd /k 'copy z:\%CurrentDateTime%.png n:\screenshots\%CurrentDateTime%.png && dir n:\screenshots\%CurrentDateTime%.png'")
;addMenu2(apps1,"x","d","cmd /c move z:\shot.png z:\%CurrentDateTime%.png")
;addMenu2(apps1,"x","n","cmd /c 'pause && copy z:\%CurrentDateTime%.png   n:\screenshots\%CurrentDateTime%.png'")
; addMenu2(apps1,"x","o","cmd /k 'dir n:\screenshots\%CurrentDateTime%.png'")
addMenu2(apps1,"x","p","z:\%CurrentDateTime%.png")

addMenu2(apps1,"f","q","G:\fileman\qd63\Q-Dir\q-dir.exe")
addMenu2(apps1,"f","7","g:\fileman\7z\7zfm")
addMenu2(apps1,"f","s","C:\Program Files\Hewlett-Packard\HP MediaSmart\SmartMenu.exe")
addMenu2(apps1,"f","8","C:\Users\Public\Downloads\7z\7zFM.exe")
addMenu2(apps1,"s","g"," %predir%vim82\gvim.exe -u c:\cmd\vimkeys.vim   c:\grub2\grub.cfg")
addMenu2(apps1,"k","p"," powershell")
addMenu2(apps1,"k","o"," %cmddir%ra.bat powershell")
addMenu2(urls1,"c","h","www.wtharvey.com")
addMenu2(urls1,"c","b","www.chessbase.com")
addMenu2(apps1,"c","g","%woch% www.chessgames.com,, max ")
addMenu2(apps1,"m","t","G:\math\rs\bin\rstudio.exe")
addMenu2(apps1,"m","e","G:\math\r33\bin\R.exe")
addMenu2(urls1,"m","l","https://login.live.com/login.srf?wa=wsignin1.0&rpsnv=13&ct=1564777376&rver=7.0.6737.0&wp=MBI_SSL&wreply=https%3a%2f%2foutlook.live.com%2fowa%2f%3fnlp%3d1%26RpsCsrfState%3d2defb976-9a4e-fc2c-3a19-234384fb20cb&id=292841&aadredir=1&CBCXT=out&lw=1&fl=dob%2cflname%2cwld&cobrandid=90015")
addMenu2(urls1,"v","d","https://duckduckgo.com/?q=&iax=videos&ia=videos#")
addMenu2(urls1,"v","y","www.youtube.com")
addMenu2(urls1,"f","e","https://epicsearch.in/search?")
addMenu2(urls1,"f","p","https://startpage.com/sp/search")
addMenu2(urls1,"v","d","https://duckduckgo.com/?q=&iax=videos&ia=videos")
addMenu2(urls1,"v","y","https://video.search.yahoo.com/search/video;_ylt=Awr9ImYt9lNfrkAAoiFXNyoA;_ylu=Y29sbwNncTEEcG9zAzEEdnRpZANBMDYxNV8xBHNlYwNwaXZz?p=&action=view")
addMenu2(urls1,"v","b","https://www.bing.com/videos/search?q=")
addMenu2(urls1,"v","v","https://www.bing.com/videos/browsing?q=")
addMenu2(apps1,"w","f"," %ffox%  %ffpriv% ")
addMenu2(apps1,"w","g"," %ffox% ")
;addMenu2(urls1,"w","F", ffwb ," -newtab -fullscreen ")
addMenu2(apps1,"w","h","C:\Program Files\Mozilla Firefox\firefox.exe")
addMenu2(urls1,"c","k","http://www.k4it.de/index.php?topic=egtb&lang=en")
addMenu2(apps1,"w","i","iexplore")
addMenu2(apps1,"o","c","control")
addMenu2(apps1,"o","m","calc")
addMenu2(apps1,"k","v","%predir%cmdrmini\Cmder.exe")
addMenu2(apps1,"k","b","%cmddir%ra.bat %predir%cmdrmini\Cmder.exe")
addMenu2(apps1,"k","x","%cmddir%ra.bat cmd")
addMenu2(apps1,"k","n","%cmddir%ra.bat  \'netsh interface ip set dns name='Local Area Connection' static 208.67.222.222 \'")
addMenu2(apps1,"j","d","runas /user:aio\a 'cmd /k cd /d %userprofile%\desktop  '")
addMenu2(apps1,"j","f","runas /user:aio\a /savecred  'cmd /k cd /d %userprofile%\desktop '")
addMenu2(apps1,";","r","taskkill /f /fi 'status eq not responding'")
addMenu2(apps1,"k","o","powershell.exe -Command 'Start-Process cmd /k cd /d m:\a\' -Verb RunAs")
addMenu2(apps1,"k","l","c:\a\clink\clink.bat")
addMenu2(apps1,"k","i","%windir%\system32\WindowsPowerShell\v1.0\PowerShell_ISE.exe")
addMenu2(apps1,"k","u","%cmddir%ra.bat '%windir%\system32\WindowsPowerShell\v1.0\PowerShell_ISE.exe'")
addMenu2(apps1,"w","t","%twb%,, max")
addMenu2(urls1,"f","X","https://www.google.ca/search?q=busty+granny&ie=utf-8&oe=utf-8&gws_rd=cr&ei=t0pDWOaGLunZjwSa1LXYAw")
addMenu2(apps2,"e","p",getexec("npp\notepad++.exe"))
addMenu2(urls1,"s","e","http://www.espn.com/nfl/statistics/team/_/stat/total")
addMenu2(urls1,"s","g","https://www.teamrankings.com/nfl/stat/touchdowns-per-game")
addMenu2(urls1,"s","c","https://www.covers.com/sports/nfl/matchups")
addMenu2(urls1,"s","z","https://www.covers.com/sports/nba/matchups")
addMenu2(urls1,"s","o","https://www.covers.com/pageLoader/pageLoader.aspx?page=/data/nba/statistics/2018-2019/offense_pt_regular.html")
addMenu2(urls1,"S","n","https://www.covers.com/pageLoader/pageLoader.aspx?page=/data/nba/statistics/2018-2019/statistics_regular.html")
addMenu2(urls1,"S","d","https://www.covers.com/pageLoader/pageLoader.aspx?page=/data/nba/statistics/2018-2019/defense_pt_regular.html")
addMenu2(urls1,"S","h","https://www.covers.com/sports/nhl/matchups")
addMenu2(urls1,"S","j","https://www.covers.com/sport/hockey/nhl/2018-2019/statistics/team-scoring")
addMenu2(urls1,"S","k","https://www.covers.com/sport/hockey/nhl/2018-2019/statistics/team-defense")
addMenu2(urls1,"S","s","https://www.covers.com/sport/hockey/nhl/statistics")
addMenu2(urls1,"S","t","https://www.covers.com/sport/hockey/nhl/standings")
addMenu2(apps1,"e","w"," %predir%emacs\bin\runemacs.exe -fg black -bg white -fs  -g 1450x725")
addMenu2(apps1,"e","q"," %predir%emacs\bin\emacs.exe -fg black -bg white -fs  -g 1450x725")
addMenu2(apps1,"e","z","%predir%emacs\bin\runemacs.exe -fg black -bg white -fs  -g 1450x725 --load '%cmddir%evilinit.el'")
addMenu2(apps1,"e","m","%predir%emacs\bin\runemacs.exe -fg black -bg white -fs  -g 1450x725 --load '%cmddir%minevil.el'")
addMenu2(apps1,"e","a","%predir%emacs\bin\runemacs.exe -fg black -bg white -fs  -g 1450x725 --load '%cmddir%spaceinit.el'")
addMenu2(apps1,"f","d","%predir%freedler\fdm.exe")
addMenu2(apps1,"e","b","%predir%vim82\gvim.exe -u c:\cmd\vimkeys.vim  -R")
addMenu2(apps1,"e","g"," %predir%vim82\gvim.exe -u  c:\cmd\vimkeys.vim")
addMenu2(apps1,"e","m","%predir%vim82\gvim.exe -u c:\cmd\vimkeys.vim  --noplugin ")
addMenu2(apps1,"e","j","%predir%vim82\gvim.exe --noplugin -u '%predir%vim82\pack\SpaceVim-master\init.vim'")
addMenu2(apps2,"e","B",getexec("Neovim\bin\nvim-qt.exe")) 
addMenu2(apps2,"e","b",getexec("Neovim\bin\nvim.exe -u c:\cmd\vimkeys.vim "))
addMenu2(apps1,"v","d","%predir%ditto.exe")
addMenu2(apps1,"b","d","%userprofile%\VirtualBox VMs\deb95l\deb95l.vbox")
addMenu2(urls1,"/","N","https://ndb.nal.usda.gov/ndb/nutrients/index")
;addMenu2(urls1,"/","n","https://ndb.nal.usda.gov/ndb/search/list") 
addMenu2(urls1,"/","M","https://www.google.ca/maps/?hl=en") 
addMenu2(urls1,"/","S","https://www.google.ca/search?q=&tbm=isch")
addMenu2(urls1,"/","B","https://www.google.ca/search?q=&tbm=bks")
addMenu2(urls1,"c","t","http://forum.chesstalk.com/forumdisplay.php?f=2&mode=linear")
addMenu2(urls1,"/","A","https://scholar.google.com/scholar_lookup?")
addMenu2(urls1,"c","B","http://tactics.chessbase.com/")
addMenu2(apps1,"i","r","h:\red.exe ")

addMenu2(apps1,"s","E","%ev% %cmddir%.emacs")
addMenu2(apps1,"s","V","%ev% %cmddir%vimkeys.vim")

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
>!f10:: reload 
>!#+f10:: edit
>!^f10:: run %ev% g:\bin\keymenu.ahk
>!+f10:: run %ev% %A_ScriptFullPath%
; nowork <^f5:: run hi()
  appskey:: keymenu2(urls,"",menu2)
  >#appskey:: keymenu2(urls,wt,menu2)
  >!appskey:: keymenu2(urls,wo,menu2)
>#!appskey:: keymenu2(urls,we,menu)
  ;msgbox %allmab%
  ;msgbox %allmab1%
