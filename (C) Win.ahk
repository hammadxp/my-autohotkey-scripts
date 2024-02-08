; ---

; Minimize active window
#f::
	WinMinimize, A 
	return

; Open Control Panel programs section
#p::
	Send, #{x}
	Send, {p}
	return

; Open taskbar tray
#z::
	Send, #{b}
	Send, {Enter}
	return

; --- Wallpapers

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

setWallpaper(wallpaperPath) {
	RunWait, i_view64.exe %wallpaperPath% /wall=7 /killmesoftly
	return
}

setWallpaperAlt(wallpaperPath) {
	SPI_SETDESKWALLPAPER := 20
	SPIF_SENDWININICHANGE := 2  

	return DllCall("SystemParametersInfo", UINT, 0x14, UINT, 0, Str, wallpaperPath, UInt, 1)
}

; ---
