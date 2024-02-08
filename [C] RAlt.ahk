;Ctrl Key ^  |  Shift Key +  |  Alt Key !  |  Windows Key #


; Notepad
;	RAlt::
		Run, D:\Apps\Shortcuts\Notepad
		return

; Screenshots
;	RAlt & .::
		Run, D:\Screenshots\Screenshots
		return


; ---

; Save Diary

;RAlt & AppsKey::
Home & PgUp::
clipboard=	
			Sleep, 100
			Send, ^a
			Send, ^x
ClipWait

	FormatTime, minute,, HH:mm
	FormatTime, CurrentDateTime,, yyyy-MM-dd (dddd, dd MMMM yyyy)
	clipboard := StrReplace(clipboard, "`r`n`r`n", "`r`n", Count)
	fileappend, %clipboard% [%minute%]`n, C:\ForeverYours\Documents\Diary\Diary (Acer)\%CurrentDateTime%.txt
	SendEvent, !{F4}
	return


; Save Diary (Nope)

;RAlt & RCtrl::
Home & PgDn::
clipboard=	
			Sleep, 100
			Send, ^a
			Send, ^x
ClipWait

	FormatTime, minute,, HH:mm
	FormatTime, CurrentDateTime,, yyyy-MM-dd (dddd, dd MMMM yyyy)
	clipboard := StrReplace(clipboard, "`r`n`r`n", "`r`n", Count)
	fileappend, %clipboard% [%minute%]`n, D:\Documents\Trash\Nope\(Other)\Diary (Acer)\%CurrentDateTime%.txt
	SendEvent, !{F4}
	return


; Save CMD Session

;RAlt & /::
Home & End::
	clipboard=
	
	Sleep, 100
	Send, ^a
	Send, ^c
	ClipWait

	FormatTime, CurrentDateTime,, yyyy-MM-dd HH.mm.ss
	fileappend, %clipboard%`n, C:\ForeverYours\Documents\Texts (Other)\CMD Sessions\%CurrentDateTime%.txt
	return

; ---

; Alt stuck bug fix for Chrome

!Left::
	if (WinActive("ahk_exe chrome.exe"))
		Send, {Left}
		return

!Right::
	if (WinActive("ahk_exe chrome.exe"))
		Send, {Right}
		return
