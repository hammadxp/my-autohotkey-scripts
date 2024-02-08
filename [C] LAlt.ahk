;Ctrl Key ^  |  Shift Key +  |  Alt Key !  |  Windows Key #

#Include C:\ForeverYours\Coding\Scripts\AutoHotKey

#Include [M] Shell.ahk


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

; Discord
	<!d::
		Run, %chrome_apps%\Discord
		return

; Everything
	<!e::
		Run, C:\Program Files\Everything\Everything.exe
		return

; Fandom
;	<!f::
;		Run, %chrome_apps%\Fandom
		return

; GoodSync
	<!g::
		Run, C:\Program Files\Siber Systems\GoodSync\GoodSync-v10.exe
		return

; Instagram
	<!i::
		Run, %chrome_apps%\Instagram
		return

; OBS Studio
	<!o::
		Run, C:\ProgramData\Microsoft\Windows\Start Menu\Programs\OBS Studio\OBS Studio (64bit).lnk
		return

; Plex
	<!p::
		Run, %chrome_apps%\Plex (New)
		return

; qBittorrent
	<!q::
		Run, C:\Program Files\qBittorrent\qbittorrent.exe
		return

; Spotify
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
