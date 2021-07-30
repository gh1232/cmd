#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.uytu
#SingleInstance Force ; Allow only one running instance of script.
SendMode Input  ;ew scripts due to its superior speed and reliability.
global km :=[] 
km["e"] := "explorer"
km["v"] := "vim"
km["c"] := "c:\a\clink\clink.bat"
km["x"] := "cmd /k 'cd c:\a'"
km["p"] := "powershell" 
km["i"] := "C:\a\PowerShell\7-preview\pwsh.exe" 
km["t"] := "c:\windows\system32\taskmgr.exe" 
km[","] := "c:\\Windows\\System32\\taskkill.exe /im nginx.exe /f"
km["-"] := "c:\cmd\nginx.bat"
km["="] := "c:\cmd\phpcgi.bat"
km["."] := "cmd /k start /b c:\a\nginx-1.18.0\nginx-1.18.0\nginx.exe -c c:\\a\\nginx-1.18.0\\nginx-1.18.0\\conf\nginx.conf"
km["/"] := "cmd /k cd c:\a\nginx-1.18.0\nginx-1.18.0\"
km["n"] := "c:\a\vim\vim82\vim c:\a\nginx-1.18.0\nginx-1.18.0\conf\nginx.conf"
km["["] := "c:\a\vim\vim82\vim c:\a\php8\php.ini"
km["]"] := "c:\a\vim\vim82\vim c:\a\wordpress\wp-config.php"
km["K"] := "c:\a\vim\vim82\vim c:\cmd\keymenu.ahk"
km[";"] := "c:\a\vim\vim82\vim c:\cmd\.emacs"
km["o"] := "c:\a\opera\launcher.exe"
km["g"] := "C:\Program Files\Mozilla Firefox\firefox.exe http://192.168.1.4:100/"
km["f"] := "C:\Program Files\Mozilla Firefox\firefox.exe"
km["q"] := "c:\a\emacs\bin\runemacs --debug-init"
km["a"] := "c:\a\emacs\bin\runemacs"
km["d"] := "cmd /k start /b c:\a\emacs\bin\emacs.exe -daemon"
km["w"] := "c:\a\emacs\bin\emacsclientw -c"
km["s"] := "c:\a\emacs\bin\emacs -nw"
global mb := "msgbox hi"
keymenu(mm)
{

      Input, kk, L1 c
  kkk :=  mm[kk]
 run %kkk%
  return ; 

}
^f6:: reload 
!f6:: edit 
f3:: keymenu(km)
