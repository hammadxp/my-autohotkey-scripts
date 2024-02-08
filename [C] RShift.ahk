;Ctrl Key ^  |  Shift Key +  |  Alt Key !  |  Windows Key #

; Minimize App
;	+AppsKey::
;	. & AppsKey::
;		Send, #{Down}
		return


; RShift + Media Keys

	+Home::
		Run, D:\Photos
		return

	+PGUP::
		Run, D:\Photos\Instagram Downloads
		return

	+PGDN::
		Run, D:\Movies and TV Shows\[Movies]
		return

	+End::
		;Run, D:\Video Stuff\Videos
		;Run, D:\Other Stuff\Videos
		Run, D:\Videos\Videos
		return


; --- Move To (Normal)

;	+Enter::
		clipboard =

		Send, ^c
		ClipWait

		Loop, Parse, clipboard, `n, `r
		{
			FileMove, %A_LoopField%, %screenshots_move_to%
		}
		return

; ---

; Screenshots (_fav)
;	RAlt::
		Send, #{PrintScreen}
		Sleep, 1500

		Loop, D:\Screenshots\Screenshots\*.*
		If ( A_LoopFileTimeModified >= Time )
		Time := A_LoopFileTimeModified, Path := A_LoopFileLongPath, Dir := A_LoopFileDir, Name := A_LoopFileName, Ext := A_LoopFileExt

		SplitPath, Path, name_ext, dir, ext, name
		screenshot_fav = %dir%\%name%_fav.%ext%

		FileMove, %Path%, %screenshot_fav%
		return

; ---

;#If (!WinActive("ahk_exe chrome.exe") and !WinActive("ahk_exe cmd.exe") and !WinActive("ahk_exe code.exe") and !WinActive("ahk_exe vlc.exe") and !WinActive("ahk_exe spotify.exe"))

; Force Close App
;	+RCtrl::
;	. & RAlt::
	End::
		if (!WinActive("ahk_exe chrome.exe") and !WinActive("ahk_exe cmd.exe") and !WinActive("ahk_exe code.exe") and !WinActive("ahk_exe vlc.exe") and !WinActive("ahk_exe spotify.exe") and !WinActive("ahk_exe msedge.exe") and !WinActive("ahk_exe Obsidian.exe") and !WinActive("ahk_exe MongoDBCompass.exe") and !WinActive("ahk_exe Everything.exe"))
		{
			Send, !{F4}
		}
	
		;Send, !{F4}
		
		;Send, {AltUp}
		;Send, {AltUp}
		;Send, {AltUp}
		
		;Send, {LAlt down}
		;Sleep, 50
		;Send, {F4}
		;Send, {LAlt up}

		;Send, {Blind}!{F4}
		return

; ---

	+F1::
		SendInput, ^c
		Sleep 100
		Clipboard := Clipboard

		FileGetTime, modified_date_raw, %Clipboard%, M
		FormatTime, modified_date, %modified_date_raw%, [yyyy-MM-dd] [HH.mm]
		Clipboard := modified_date

		return

	+F2::
		SendInput, ^c
		Sleep 100
		Clipboard := Clipboard

		FileGetTime, modified_date_raw, %Clipboard%, M
		FormatTime, modified_date, %modified_date_raw%, yyyyMMdd-HHmmss
		Clipboard := modified_date

		return
	
	+PrintScreen::
;		Send, {PrintScreen}
;		Send, #+s
;		Send, {LWin down}{Shift down}s{Shift up}{LWin up}
		return

;	#IfWinActive ahk_exe Notepad.exe
;	^Shift::return

;	#IfWinActive ahk_exe Notepad.exe
;	+Ctrl::return
