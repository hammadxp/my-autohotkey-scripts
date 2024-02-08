;Ctrl Key ^  |  Shift Key +  |  Alt Key !  |  Windows Key #


; ---

; Native (Tab)
	Tab::
		Send, {Tab}
;		Send #{PrintScreen}
		return

	+Tab::
		Send, +{Tab}
		return


; Hotspot (On)
	Tab & F2::
		Run, D:\Documents\[My Scripts]\Scripts (Frequent)\[Run] Hotspot (Toggle).bat
		return

; Hotspot (Off)
	Tab & F3::
		Run, D:\Documents\[My Scripts]\Scripts (Frequent)\[Run] Hotspot (On).bat
		return

; Spotify (down_on_spot)
	Tab & F9::
		Run, D:\Documents\[My Scripts]\Scripts (Frequent)\[Run] Spotify (down_on_spot).bat
		return

;---
