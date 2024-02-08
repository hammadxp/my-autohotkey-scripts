;Ctrl Key ^  |  Shift Key +  |  Alt Key !  |  Windows Key #

;RAlt & h::
;	KeyHistory
	return

;SC024::
;	Send, qq
	return

;	CapsLock & q::
		IfWinActive, ahk_exe chrome.exe
			{
				Send, !q
				clipboard := StrReplace(clipboard, " - Movies on Google Play", "")
				StringLower, clipboard, clipboard
				clipboard := StrReplace(clipboard, A_Space, "-")
;;				clipboard := StrReplace(clipboard, "(", "")
				Run, www.yts.mx/movie/%clipboard%
				return
			}

		IfWinActive, ahk_exe notepadapp.exe
			{
				Send, ^a
				Send, ^c
				StringLower, clipboard, clipboard
				clipboard := StrReplace(clipboard, A_Space, "-")
				Run, www.yts.mx/movie/%clipboard%
				return
			}

;	CapsLock & x::
;			Run, www.google.com
			return


;	filepath := "D:\Texts\Movies.txt"

;	CapsLock & x::
;			clipboard := StrReplace(clipboard, A_Space, "")
;;			StringReplace, filepath, filepath, %A_SPACE%,, All
			return
