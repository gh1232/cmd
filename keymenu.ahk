#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.uytu
#SingleInstance Force ; Allow only one running instance of script.
SendMode Input  ;ew scripts due to its superior speed and reliability.
global km :=[] 
km["e"] := "explorer"
km["v"] := "vim"
km["c"] := "cmd /k 'cd c:\a'"
km["p"] := "powershell" 
km["t"] := "c:\windows\system32\taskmgr.exe " 

km["K"] := "c:\a\vim\vim82\vim c:\cmd\keymenu.ahk"
km["o"] := "c:\a\opera\launcher.exe"

km["f"] := "C:\Program Files\Mozilla Firefox\firefox.exe"
km["q"] := "c:\a\emacs\bin\runemacs --debug-init "
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
f6:: keymenu(km)
