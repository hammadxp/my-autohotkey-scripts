;Ctrl Key ^  |  Shift Key +  |  Alt Key !  |  Windows Key #


; --- Include Folder

#Include C:\ForeverYours\Coding\Scripts\AutoHotKey

; --- Include File

#Include [M] Brightness.ahk


; --- Brightness

; Increase
;	!Right::BS.SetBrightness(2)
	return

; Decrease
;	!Left::BS.SetBrightness(-2)
	return


; --- Volume

; Increase
;	!Up::Send {Volume_Up}
	return

; Decrease
;	!Down::Send {Volume_Down}
	return


; --- Home, PgUp, PgDn, End

; Home
	^Home::Send {Home}
	return

; PageUp
	^PgUp::Send {PgUp}
	return

; PageDown
	^PgDn::Send {PgDn}
	return

; End
	^End::Send {End}
	return


; ---

; Properties
	^Enter::
		if (WinActive("ahk_exe explorer.exe"))
		{
			Send, !{Enter}
			;Send, hi
		} else {
			Send, ^{Enter}
		}
		return

; Switch Apps
	^AppsKey::
		Send, !{Esc}
		return


; ---

; Open Diary
	^,::
		FormatTime, CurrentDateTime,, yyyy-MM-dd (dddd, dd MMMM yyyy)
		Run, C:\ForeverYours\Documents\Diary\Diary (Acer)\%CurrentDateTime%.txt
		Sleep 500
		Send, ^{End}
		return

; Open Diary (Nope)
	^.::
		FormatTime, CurrentDateTime,, yyyy-MM-dd (dddd, dd MMMM yyyy)
		Run, D:\Documents\Trash\Nope\(Other)\Diary (Acer)\%CurrentDateTime%.txt
		Sleep 500
		Send, ^{End}
		return


; ---

	^PrintScreen::
		Send, #+s
		return

	^F12::
		Run, "C:\Users\Hammad\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\AHK Scripts (As Admin).vbs"
		return

; ---
