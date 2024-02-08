; ---

Home::
	Run, C:\ForeverYours\Apps\Shortcuts\Notepad
	return

PgUp::
	Loop C:\ForeverYours\Screenshots\Screenshots\*.*
	If ( A_LoopFileTimeModified >= Time )
	Time := A_LoopFileTimeModified, File := A_LoopFileLongPath

	Run, C:\Program Files\IrfanView\i_view64.exe %File%
	return

PgDn::
	Run, C:\ForeverYours\Screenshots\Screenshots
	return

End::
	if (!WinActive("ahk_exe chrome.exe") and !WinActive("ahk_exe cmd.exe") and !WinActive("ahk_exe code.exe") and !WinActive("ahk_exe vlc.exe") and !WinActive("ahk_exe spotify.exe") and !WinActive("ahk_exe msedge.exe") and !WinActive("ahk_exe Obsidian.exe") and !WinActive("ahk_exe MongoDBCompass.exe") and !WinActive("ahk_exe Everything.exe"))
	{
		Send, !{F4}
	}

	return

; --- Playback + RShift

Home & RShift::
	Run, D:\Documents\Trash\Nope
	return

PGUP & RShift::
	Run, C:\ForeverYours\Coding\Scripts\AutoHotKey
	return

PGDN & RShift::
	Run, C:\ForeverYours\Screenshots\Screenshots (Acer)
	return

End & RShift::
	Run, C:\ForeverYours\Documents\Texts
	return

; --- Home + Other

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


Home & End::
	clipboard=
		Sleep, 100
		Send, ^a
		Send, ^c
		ClipWait

	FormatTime, CurrentDateTime,, yyyy-MM-dd HH.mm.ss
	fileappend, %clipboard%`n, C:\ForeverYours\Documents\Texts (Other)\CMD Sessions\%CurrentDateTime%.txt
	return

; --- PGUP + Other

PGUP & [::
	Run, C:\ForeverYours\Coding\Scripts\Scripts (Frequent)
	return

PGUP & ]::
	Run, "C:\ForeverYours\Coding\Scripts\Scripts (Frequent)\[Run] Scripts.bat"
	return

PGUP & '::
	Run, "C:\ForeverYours\Coding\Scripts\Scripts (Frequent)\[Run] Unify.bat"
	return

PGUP & \::
	Run, wt --startingDirectory "C:\ForeverYours\Coding\Shared\unify-for-spotify"
	Sleep, 1000
	SetTitleMatchMode, 2
	WinActivate, Administrator: Command Prompt (VS Code)
	Send, py "script.py"
	Sleep, 500
	Send, {Enter}
	return

; --- PGDN + Other

PGDN & End::
	Send, #{Down}
	return

PGDN & Enter::
	Run, "C:\ForeverYours\Screenshots\Screenshots (Moments)"
	return

PGDN & '::
	Run, "D:\Music"
	return

PGDN & \::
	if (WinActive("ahk_class CabinetWClass"))
	{
		clipboard =

		Send, ^c
		ClipWait

		Loop, Parse, clipboard, `n, `r
		{
			FileMove, %A_LoopField%, %screenshots_move_to%
		}
	} else {
		MsgBox, "Not in explorer"
	}
	return

; ---
