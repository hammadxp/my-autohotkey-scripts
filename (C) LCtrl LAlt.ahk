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
