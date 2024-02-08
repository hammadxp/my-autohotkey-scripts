;Ctrl Key ^  |  Shift Key +  |  Alt Key !  |  Windows Key #


; --- Include Folder

; #Include D:\Documents\[My Scripts]\AutoHotKey\[Include]

; #Include [M] Brightness.ahk


; --- Brightness

; Increase
	^Right::BS.SetBrightness(2)
	return

; Decrease
	^Left::BS.SetBrightness(-2)
	return


; --- Volume

; Increase
	^Up::Send {Volume_Up}
	return

; Decrease
	^Down::Send {Volume_Down}
	return


; ---
