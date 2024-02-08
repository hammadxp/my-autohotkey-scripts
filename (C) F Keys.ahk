; ---

F9::
	Run, C:\Program Files (x86)\Internet Download Manager\IDMan.exe
	return

F10::
	Run, C:\Program Files\VideoLAN\VLC\vlc.exe
	return

; ---

AppsKey::
	Send, #{PrintScreen}
	return

PrintScreen::
	if (WinActive("ahk_exe i_view64.exe"))
	{
		Send, {F8}
	}

	if (WinActive("ahk_class CabinetWClass"))
	{
		Send, ^c
		ClipWait
		
		Loop, Parse, clipboard, `n, `r
		{
			FileCopy, %A_LoopField%, %moments_folder%
		}
	}

	return

Ins::
	if (WinActive("ahk_class CabinetWClass"))
	{
		Send, ^c
		ClipWait
		
		Loop, Parse, clipboard, `n, `r
		{
			RunWait, i_view64.exe %A_LoopField% /wall=7 /killmesoftly
		}
	}

	return

; ---
