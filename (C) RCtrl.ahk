; ---

#Include C:\ForeverYours\Coding\Scripts\AutoHotKey
#Include [M] Brightness.ahk

; --- RCtrl + Playback

^Home::
	Send {Home}
	return

^PgUp::
	Send {PgUp}
	return

^PgDn::
	Send {PgDn}
	return

^End::
	Send {End}
	return

; ---

^Enter::
	if (WinActive("ahk_exe explorer.exe"))
	{
		Send, !{Enter}
	} else {
		Send, ^{Enter}
	}
	return

^AppsKey::
	Send, !{Esc}
	return

^PrintScreen::
	Send, #+s
	return

^F12::
	Run, "C:\Users\Hammad\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\AHK Scripts (As Admin).vbs"
	return

; --- Diary

^,::
	FormatTime, CurrentDateTime,, yyyy-MM-dd (dddd, dd MMMM yyyy)
	Run, C:\ForeverYours\Documents\Diary\Diary (Acer)\%CurrentDateTime%.txt
	Sleep 500
	Send, ^{End}
	return

^.::
	FormatTime, CurrentDateTime,, yyyy-MM-dd (dddd, dd MMMM yyyy)
	Run, D:\Documents\Trash\Nope\(Other)\Diary (Acer)\%CurrentDateTime%.txt
	Sleep 500
	Send, ^{End}
	return

; ---
