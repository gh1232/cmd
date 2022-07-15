

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
global msgb := "msgbox"
>^\:: run c:\a\vifm\vifm.exe
>!z:: run %ffox% %ffpriv% loblaws.ca
>!+z:: run %ffox% %ffpriv% essenceoflifeorganics.com 
>^/:: run "C:\Program Files\Everything\Everything.exe"
>#e:: exec(ee27re, "--load c:\\cmd\\.emacs") 
>#+e:: run %ee27re% --load %cmddir%init.el
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
>!<!f:: fire("https://www.covers.com/sport/football/nfl/printsheet",wb("f"))
global uvncp:=5500
>#+u:: exec("uvnc bvba\UltraVNC\vncviewer.exe", "-dsmplugin SecureVNCPlugin.dsm -listen" . %uvncp%)
>#u:: exec("UltraVNC\vncviewer.exe")
>#;:: gourl("walmart.ca/search/")
>^+l:: fire("https://www.youtube.com/results?search_query=news+live",wop2y)
>!a:: run %predir%AHK-Studio.ahk
>^a:: run %predir%AutoIt3\SciTE\SciTE.exe
>!>^#+s:: run %ev% c:/cmd/search.html 
>!+>^p:: run "C:\Users\Public\Desktop\Advanced Port Scanner.lnk"
>^+f1:: run "G:\a\ahk\AutoHotkey.chm"
>^+f:: fire("https://www.tvguide.com/listings/","op1t")
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
>#>!l:: exec("console\Console2\Console.exe")
>#>^l:: exec( "cmdrmini\Cmder.exe")
>!+r:: exec("Tight\tvnviewer.exe")
;>#6:: exec("Tight\tvnviewer.exe" . " -host=192.168.1.6 -password=yo ")
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
;%predir%tight\tvnviewer.exe -optionsfile="%userprofile%\Desktop\w3.vnc"

>#r:: exec("mstsc","","x")
>#+2:: exec("mstsc","/v:192.168.1.2  ","x")
>#+3:: exec("mstsc","/v:192.168.1.3  ","x")
>#+4:: exec("mstsc","/v:192.168.1.4  ","x")
>#+5:: exec("mstsc","/v:192.168.1.5  ","x")
>#+6:: exec("mstsc","/v:192.168.1.6  ","x")
>#+7:: exec("mstsc","/v:192.168.1.7  ","x")
>#+8:: exec("mstsc","/v:192.168.1.8  ","x")
>#+9:: exec("mstsc","/v:192.168.1.9  ","x")

>#6:: exec("Tight\tvnviewer.exe" . " -host=192.168.1.6 -password=yo ")
>#7:: exec("Tight\tvnviewer.exe" . " -host=192.168.1.7 -password=yo ")
>#8:: exec("Tight\tvnviewer.exe" . " -host=192.168.1.8 -password=yo ")
>#9:: exec("Tight\tvnviewer.exe" . " -host=192.168.1.9 -password=yo ")
>#2:: exec("Tight\tvnviewer.exe" . " -host=192.168.1.2 -password=yo ")
>#3:: exec("Tight\tvnviewer.exe" . " -host=192.168.1.3 -password=yo ")
>#4:: exec("Tight\tvnviewer.exe" . " -host=192.168.1.4 -password=yo ")
>#5:: exec("Tight\tvnviewer.exe" . " -host=192.168.1.5 -password=yo ")
;>#2:: run %predir%tight\tvnviewer.exe -optionsfile="%userprofile%\Desktop\w2.vnc"
;>#3:: run %predir%tight\tvnviewer.exe -optionsfile="%userprofile%\Desktop\w3.vnc"
;#4:: run %predir%tight\tvnviewer.exe -optionsfile="%userprofile%\Desktop\w4.vnc"
;>#5:: run %predir%tight\tvnviewer.exe -optionsfile="%userprofile%\Desktop\w5.vnc"
;>#6:: run %predir%tight\tvnviewer.exe -optionsfile="%userprofile%\Desktop\w6.vnc"
;>#7:: run %predir%tight\tvnviewer.exe -optionsfile="%userprofile%\Desktop\w7.vnc"
;>#8:: run %predir%tight\tvnviewer.exe -optionsfile="%userprofile%\Desktop\w8.vnc"
;>#9:: run %predir%tight\tvnviewer.exe -optionsfile="%userprofile%\Desktop\w9.vnc"
>^l:: run %predir%tight\tvnviewer.exe -listen 5000
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
>#/::  fire("file:///c:/cmd/search.html",wb("t"))
;>#^n::  fire("%userprofile%\desktop\bin2\news.html",wb("t"))
>#+/::  fire("file:///u:\d\newslinks.html",wb("t"))
>!>^/::  fire("file:///c:\cmd\surf.html",wb("t"))
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
>#^l:: exec("cmdrmini\Cmder.exe")
>#!l:: exec("console\Console2\Console.exe")
>^>#f9:: exec("AHKCommandPicker-1.3.1\AHKCommandPicker-1.3.1\src\AHKCommandPicker.ahk")
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
>^2:: fire("https://www.iheart.com/live/cp24-7796/",wb("m"))
>^1:: fire("https://www.iheart.com/live/ctv-news-7798/",wb("m"))
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
>^5:: fire("https://www.cbc.ca/player/news/tv%20shows/the%20national/latest%20broadcast",wb("m"))
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
>#=::run  "%userprofile%\Music\Playlists\all.wpl"
>!=::run "%userprofile%\Music\Playlists\a.wpl"
;#!z::run C:\Users\Grandpa\Desktop\z
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
>^p:: run  powershell
>^+p:: run  %cmddir%ra.bat powershell
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
>^+j:: run %cmddir%ra.bat "%predir%cmdrmini\Cmder.exe"
;>^j:: run %cmddir%ra.bat "cmd "
>#[:: run %cmddir%ra.bat  "netsh interface ip set dns name='Local Area Connection' static 208.67.222.222 "
;>!+j:: run runas /user:aio\a "cmd /k cd /d %userprofile%\desktop  "
;>^+j:: run runas /user:aio\a /savecred  "cmd  \"/k cd /d %userprofile%\desktop ""
>#>!>^k:: run taskkill /f /fi "status eq not responding"
>^+k:: run powershell.exe -Command "Start-Process cmd \"/k cd /d m:\a\" -Verb RunAs"
>^;:: run c:\a\clink\clink.bat   
>^k:: run cmd "/k cd /d %userprofile%\desktop "
>^i:: run %windir%\system32\WindowsPowerShell\v1.0\PowerShell_ISE.exe
>^+i:: run %cmddir%ra.bat "%windir%\system32\WindowsPowerShell\v1.0\PowerShell_ISE.exe "
>!t:: run %twb%,, max 
;  winwaitactive, connected,
;  send {>!f6}
;  send {^t}

;return 
>!b:: fire("https://www.google.ca/search?q=busty+granny&ie=utf-8&oe=utf-8&gws_rd=cr&ei=t0pDWOaGLunZjwSa1LXYAw")
>#^n:: run notepad
>#!n:: exec("npp\notepad++.exe")
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
>#v:: run  %predir%vim82\gvim.exe -u  c:\cmd\vimkeys.vim  
>#+v::run %predir%vim82\gvim.exe -u c:\cmd\vimkeys.vim  --noplugin 
>#>^v::run %predir%vim82\gvim.exe --noplugin -u "%predir%vim82\pack\SpaceVim-master\init.vim"
>#+n::exec("Neovim\bin\nvim-qt.exe") 
>#n::exec("Neovim\bin\nvim.exe -u c:\cmd\vimkeys.vim ")
>!o:: fire("",wop4r)
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

