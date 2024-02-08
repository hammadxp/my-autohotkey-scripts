;Ctrl Key ^  |  Shift Key +  |  Alt Key !  |  Windows Key #


; CMD
;	#c::
;		Run, cmd.exe
;		Send, #{x}
;		Send, {c}
		Run, C:\Users\Hammad\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\System Tools\Command Prompt.lnk
		return

; Minimize Chrome Window
	#c::
		IfWinNotActive, ahk_exe chrome.exe
			WinActivate, ahk_exe chrome.exe
		else
			WinMinimize, ahk_exe chrome.exe
		return

; Minimize Active Window
	#f::
		WinMinimize, A
		return

; Programs
	#p::
		Send, #{x}
		Send, {p}
		return

; Taskbar Tray
	#z::
		Send, #{b}
		Send, {Enter}
		return

; ---

; Camouflage (HDD)
;	#m::
		Run, M:\
		return

; ---

; Change wallpaper

setWallpaper(wallpaperPath) {
	RunWait, i_view64.exe %wallpaperPath% /wall=7 /killmesoftly
	return
}

setWallpaper2(wallpaperPath) {
	SPI_SETDESKWALLPAPER := 20
	SPIF_SENDWININICHANGE := 2  

	return DllCall("SystemParametersInfo", UINT, 0x14, UINT, 0, Str, wallpaperPath, UInt, 1)
}

#!`::
	wallpaperFolders := ["C:\ForeverYours\Photos\Restored"]
	wallpapers := []

	for _, wallpaperFolder in wallpaperFolders {
		Loop, Files, %wallpaperFolder%\*.*, F
			{
				wallpaper := A_LoopFileLongPath
				wallpapers.Insert(wallpaper)
			}
	}
	
	Random, randomIndex, 1, wallpapers.MaxIndex()
	selectedWallpaper := wallpapers[randomIndex]

	RunWait, i_view64.exe %selectedWallpaper% /wall=7 /killmesoftly
	return

#!1::
	setWallpaper("C:\ForeverYours\Photos\Restored\IMG_20221216_133916~2.jpg")
	return

#!2::
	setWallpaper("C:\ForeverYours\Photos\Restored\IMG_20230310_111113.jpg")
	return

#!3::
	setWallpaper("C:\ForeverYours\Photos\Restored\IMG_20230729_181908~2.jpg")
	return

#!4::
	setWallpaper("C:\ForeverYours\Photos\Restored\PXL_20231010_131544038.NIGHT.jpg")
	return
