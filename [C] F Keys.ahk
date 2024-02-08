;Ctrl Key ^  |  Shift Key +  |  Alt Key !  |  Windows Key #


; Native (F8)
	;F8::
		Send, {F8}
		return

	;F8 & F9::
		Run, D:\Documents\[My Scripts]\AutoHotKey\Apps Shortcuts\Camera.lnk
		return

	;F8 & F10::
		Run, D:\Documents\[My Scripts]\AutoHotKey\Apps Shortcuts\Voice Recorder.lnk
		return

; ---

;	F3::
		Run, D:\Documents\[My Scripts]\AutoHotKey\Direct Scripts\Copy Timestamp\Copy Creation Time.ahk
		return

;	F4::
		Run, D:\Documents\[My Scripts]\AutoHotKey\Direct Scripts\Copy Timestamp\Copy Modification Time.ahk
		return

;	F5::
		Run, D:\Documents\[My Scripts]\AutoHotKey\Direct Scripts\Copy Timestamp\Copy Modification Time (Full).ahk
		return

;	F3::
		MsgBox, %A_IPAddress3%
		clipboard=%A_IPAddress3%
		return

;	F6::
;		Run, D:\Books
;		return

	F9::
		Run, C:\Program Files (x86)\Internet Download Manager\IDMan.exe
		return

	F10::
		Run, C:\Program Files\VideoLAN\VLC\vlc.exe
		return

	!F12::
		Run, D:\Coding\Scripts\AutoHotKey\(main).ahk
		return

; ---

;	F5::
		tmp:=Clipboardall
		Clipboard:=""
		Send,^c
		ClipWait,1
		path:=Clipboard
		Clipboard:=tmp
		if ErrorLevel
			return

		Loop, %path%
		{
			StringGetPos, PosA, A_LoopFileName, ., R
			StringRight, extension, A_LoopFileName, % StrLen(A_LoopFileName)-PosA-1
		}

		if (extension = "torrent")
		{
		FileCopy, %path%, D:\Movies and TV Shows\Good Stuff\Other\qBittorrent\[Auto Add]\Movies and TV Shows
		}else{
		MsgBox, It's not a torrent file.
		}
		return

;	F6::
		tmp:=Clipboardall
		Clipboard:=""
		Send,^c
		ClipWait,1
		path:=Clipboard
		Clipboard:=tmp
;		if ErrorLevel
;			return

		FileMoveDir, %path%, M:\Movies and TV Shows\Good Stuff\(Radarr) Movies
		MsgBox, %path%, M:\Movies and TV Shows\Good Stuff\(Radarr) Movies
		return

; --- Other

;	PrintScreen::
		Send, {F2}
		Sleep, 200
		Send, {Right}
		Sleep, 200
		SendInput, _fav
		Sleep, 200
		Send, {Enter}
		return
	
;	Ins::
		Loop D:\Screenshots\Screenshots\*.*
		If ( A_LoopFileTimeModified >= Time )
		Time := A_LoopFileTimeModified, File := A_LoopFileLongPath
		SplitPath, File, name, dir, ext, name_no_ext

		screenshot = %dir%\%name_no_ext%.%ext%
		screenshot_fav = %dir%\%name_no_ext%_fav.%ext%
		FileMove, %screenshot%, %screenshot_fav%
		return

;	Moments

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

; ---

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
