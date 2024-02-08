; --- Force close apps

^!a::
	Process, close, AutoHotkey.exe
	return

^!c::
	Process, close, chrome.exe
	return

^!g::
	Process, close, GoodSync-v10.exe
	return

^!p::
	Process, close, powershell.exe
	Process, close, PowerShell.exe
	return

^!s::
	Process, close, StartMenuExperienceHost.exe
	return

^!v::
	Process, close, vlc.exe
	return

; ---

^!e::
	Process, close, explorer.exe
	Sleep, 2000
	Run, explorer.exe
	return

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

; ---
