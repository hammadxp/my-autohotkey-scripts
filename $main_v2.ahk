#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

; Ctrl (^), Shift (+), Alt (!), Windows (#)

; ######################################### BACKSLASH (\)

	\ UP::
		Send, \
		return

	+\::
		Send, |
		return

; ---

	\ & Home::
		Run, D:\Pictures\Favourites (HTC)
		return

	\ & PGUP::
		Run, D:\Pictures\Favourites (Acer)
		return

	\ & PGDN::
;		Run, D:\Pictures\Photos
		Run, D:\Photos\Downloaded Photos
		return

	\ & End::
		Run, C:\ForeverYours\Apps\Shortcuts\Recycle Bin
		return

; ######################################### CAPSLOCK

	CapsLock & a::
		Run, C:\Users\Hammad\AppData
		return

	CapsLock & b::
		Run, D:\Backups
		return

	CapsLock & c::
		;Run, C:\
		Run, C:\ForeverYours\Coding
		return

	CapsLock & d::
		Run, D:\
		return

;	CapsLock & e::
;		Run, E:\
		Run, D:\Apps\Shortcuts\This PC.lnk
		return

	CapsLock & f::
		Run, C:\ForeverYours
		return

	CapsLock & g::
;		Run, D:\Geet
		Run, D:\Music\(Other)\Geet
		return

	CapsLock & h::
		Run, C:\Users\Hammad
		return

	CapsLock & i::
    ;Run, D:\Documents\Coding\HTML and CSS\(Course)
		;Run, D:\Coding\Web Development\(Learn)\JavaScript\(Course)
		Run, D:\Coding\Web Development\(Courses)\JavaScript (by Jonas Schmedtmann)
    return

	CapsLock & j::
		Run, D:\Downloads
		return

	CapsLock & l::
		Run, C:\Users\Hammad\AppData\Roaming\Microsoft\Windows\Libraries
		return

	CapsLock & m::
		Run, D:\Movies and TV Shows
		return

	CapsLock & o::
		Run, C:\ForeverYours\Documents\Excel
		return

	CapsLock & q::
		Run, D:\Movies and TV Shows\Good Stuff\Torrents (In Progress)
		return

	CapsLock & r::
		;Run, D:\Movies and TV Shows\Good Stuff\(Radarr) Movies
		;Run, D:\Documents\Coding\React (Fireship)\(Course)
		Run, C:\ForeverYours\Photos\Restored
		return

	CapsLock & s::
		Run, C:\Users\Hammad\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
		return

	CapsLock & t::
		Run, D:\Movies and TV Shows\Good Stuff\Torrents
		return

	CapsLock & u::
;		Run, D:\Pictures\Unsplash
		Run, C:\ForeverYours\Coding\Web Development
		return

;	CapsLock & w::
		Run, D:\Movies and TV Shows\Extras\Watching (Movies and TV Shows)
		return

	CapsLock & x::
		Run, C:\ForeverYours\Coding\Scripts\Scripts (Frequent)
		return

	CapsLock & z::
;		Run, C:\ForeverYours\Coding\Pange
		Run, C:\ForeverYours\Coding\Test
		return

	CapsLock & 1::
		Run, M:\
		return

	CapsLock & 2::
		Run, N:\
		return

	CapsLock & Tab::
		Run, C:\WINDOWS\system32\Taskmgr.exe
		return

; ######################################### DOT

	. UP::
		Send, .
		return

	+.::
		Send, >
		return

; ---

	. & h::
;		Run, D:\Photos\Photos\05. Chatt Te.jpg
		Run, C:\ForeverYours\Apps\Files (InUse)\05. Chatt Te.jpg
		return

	. & j::
;		Run, D:\Photos\Photos\03. Khaana Done.jpg
		Run, C:\ForeverYours\Apps\Files (InUse)\03. Khaana Done.jpg
		return

	. & k::
;		Run, D:\Photos\Photos\02. Continue.jpg
		Run, C:\ForeverYours\Apps\Files (InUse)\02. Continue.jpg
		return

	. & l::
;		Run, D:\Photos\colosseum.jpg
;		Run, D:\Photos\Photos\01. Lets Start.jpg
		Run, C:\ForeverYours\Apps\Files (InUse)\01. Lets Start.jpg
		return

	; . & 0::
	; 	Run, %mcu%\Iron Man (2008) (1080p).mp4
	; 	return

	; . & 1::
	; 	Run, D:\Movies and TV Shows\Extras\Playlists\MCU Collection (Marvel Cinematic Universe) (1080p).m3u8
	; 	return

	; . & b::
	; 	Run, D:\Documents\Office\meri apni movian vekhan di history (new) (Bundled).xlsx
	; 	return

	; . & m::
	; 	Run, D:\Movies and TV Shows\Extras\Watching (Movies and TV Shows)\Watching (Movies).txt
	; 	return

	; . & t::
	; 	Run, D:\Movies and TV Shows\Extras\Watching (Movies and TV Shows)\Watching (TV Shows).txt
	; 	return

; ######################################### F KEYS

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

;Ctrl Key ^  |  Shift Key +  |  Alt Key !  |  Windows Key #

#Include C:\ForeverYours\Coding\Scripts\AutoHotKey

#Include (M) Shell.ahk


; --- Apps


; Mp3tag
	<!3::
		Run, C:\Program Files (x86)\Mp3tag\Mp3tag.exe
		return

; Start AHK
;	<!a::
;		Loop, C:\Users\Hammad\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\*.ahk
;		Run, %A_LoopFileFullPath%
		Run, C:\Users\Hammad\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\ahk scripts (admin).vbs
		return

; BackupSML
	<!b::
		Run, D:\Apps\[Portable Apps]\BackupSML\BackupSML_x64.exe
		return

; Chrome (Without Extensions)
	<!c::
;		Run, C:\Windows\System32\calc1.exe
;		Run, D:\Documents\[My Scripts]\AutoHotKey\Apps Shortcuts\Calculator.lnk
		Run, D:\Documents\Shortcuts\Chrome (--disable-extensions).lnk
;		Run, chrome://apps/
		return

	<!d::
		Run, %chrome_apps%\Discord
		return

	<!e::
		Run, C:\Program Files\Everything\Everything.exe
		return

;	<!f::
;		Run, %chrome_apps%\Fandom
		return

	<!g::
		Run, C:\Program Files\Siber Systems\GoodSync\GoodSync-v10.exe
		return

	<!i::
		Run, %chrome_apps%\Instagram
		return

	<!o::
		Run, C:\ProgramData\Microsoft\Windows\Start Menu\Programs\OBS Studio\OBS Studio (64bit).lnk
		return

	<!p::
		Run, %chrome_apps%\Plex (New)
		return

	<!q::
		Run, C:\Program Files\qBittorrent\qbittorrent.exe
		return

	<!s::
		Run, D:\Apps\Shortcuts\Spotify.lnk
		return

; Open CMD to WebTorrent
;	<!t::
		Run, C:\Windows\System32\cmd.exe /K "cd /d D:\Apps\[cmd Apps]\webtorrent-cli-4.0.3\bin"
		Sleep 500
		SendInput, node cmd.js
		Sleep 500
		Send, {enter}
		return

; VS Code
	<!v::
		ShellRun("C:\Users\Hammad\AppData\Local\Programs\Microsoft VS Code\Code.exe")
;		Run, C:\Users\Hammad\AppData\Local\Programs\Microsoft VS Code\Code.exe
		return

; WhyAhmadi
	<!w::
		Run, %chrome_apps%\WhyAhmadi
		return

; YTS
;	<!y::
		Run, %chrome_apps%\YTS.MX.lnk
		return

; YouTube
	<!y::
		Run, %chrome_apps%\YouTube.lnk
		return

; Open CMD to youtube-dl
;	<!y::
		Run, C:\Windows\System32\cmd.exe /K "cd /d D:\Other Stuff\youtube-dl"
		return

; Peace Equalizer
;	<!z::
;		Send, ^+!z
		return

; ---

;Ctrl Key ^  |  Shift Key +  |  Alt Key !  |  Windows Key #


; Force close AHK
	^!a::
		Process, close, AutoHotkey.exe
		return

; Force close Chrome
	^!c::
		Process, close, chrome.exe
		return

; Force close GoodSync
	^!g::
		Process, close, GoodSync-v10.exe
		return

; Force close Powershell
	^!p::
		Process, close, powershell.exe
		Process, close, PowerShell.exe
		return

; Force close Start Menu
	^!s::
		Process, close, StartMenuExperienceHost.exe
		return

; Force close VLC
	^!v::
		Process, close, vlc.exe
		return

; ---

; Restart Explorer
	^!e::
		Process, close, explorer.exe
		Sleep, 2000
		Run, explorer.exe
		return

; Restart Explorer (Reload all apps)
	^!z::
		Process, close, explorer.exe
		Process, close, sizer.exe
		Process, close, Tautulli.exe
		Process, close, RemoteServerWin.exe
		Sleep, 2000
		Run, explorer.exe
		Run, C:\Users\Hammad\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\Sizer (As Admin).vbs
		Run, C:\Program Files\Tautulli\Tautulli.exe
		Run, C:\Program Files (x86)\Unified Remote 3\RemoteServerWin.exe
		return

; Sign Out
;	^+ & F4::
		Shutdown, 0
		return

; ---
