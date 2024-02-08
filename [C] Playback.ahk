;Ctrl Key ^  |  Shift Key +  |  Alt Key !  |  Windows Key #


; Playback

; Play/Pause
;	Home::Send {Media_Play_Pause}
	Home::
		Run, C:\ForeverYours\Apps\Shortcuts\Notepad
		return

; Stop
;	PgUp::Send {Media_Stop}
	PgUp::
		Loop C:\ForeverYours\Screenshots\Screenshots\*.*
		If ( A_LoopFileTimeModified >= Time )
		Time := A_LoopFileTimeModified, File := A_LoopFileLongPath

		Run, C:\Program Files\IrfanView\i_view64.exe %File%
		return

; Previous Song
;	PgDn::Send {Media_Prev}
	PgDn::Run, C:\ForeverYours\Screenshots\Screenshots
	return

; Next Song
;	End::Send {Media_Next}
	return

; ---

; Playback + Shift

	Home & RShift::
;		Run, D:\Documents\Tmp\trash
		Run, D:\Documents\Trash\Nope
		return

	PGUP & RShift::
		Run, C:\ForeverYours\Coding\Scripts\AutoHotKey
		return

	PGDN & RShift::
;		Run, D:\Texts (Diary)
		Run, C:\ForeverYours\Screenshots\Screenshots (Acer)
		return

	End & RShift::
		Run, C:\ForeverYours\Documents\Texts
		return

; ---

; Playback + Backslash
	
	PGUP & [::
		Run, C:\ForeverYours\Coding\Scripts\Scripts (Frequent)
		return

	PGUP & ]::
;		Run, "D:\Documents\[My Scripts]\Scripts (Frequent)\[Run] Scripts.bat"
;		Run, "D:\Documents\[My Scripts]\Scripts (Frequent)\Run (Spotify).bat"
;		ShellRun("D:\Documents\[My Scripts]\Scripts (Frequent)\Run (Spotify).bat")
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

; ---

	PGDN & \::
;		Run, D:\Music
;		Run, D:\Screenshots\Screenshots (Acer)
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

	PGDN & End::
		Send, #{Down}
		return

	PGDN & Enter::
;		Send, ^a
;		Run, "D:\Screenshots\Screenshots (Moments)\Screenshots (Moments)"
		Run, "C:\ForeverYours\Screenshots\Screenshots (Moments)"
		return

	PGDN & '::
		Run, "D:\Music"
		return

; ---
