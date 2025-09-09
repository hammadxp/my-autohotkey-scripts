; --- Brightness

^Right::
	BS.SetBrightness(2)
	return

^Left::
	BS.SetBrightness(-2)
	return

; --- Volume

^Up::
	Send {Volume_Up}
	return

^Down::
	Send {Volume_Down}
	return

; ---
