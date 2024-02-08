; --- Bug fix for Alt key stucks in Chrome

!Left::
	if (WinActive("ahk_exe chrome.exe"))
		Send, {Left}
		return

!Right::
	if (WinActive("ahk_exe chrome.exe"))
		Send, {Right}
		return

; ---
