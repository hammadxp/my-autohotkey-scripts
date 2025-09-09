setWallpaperWithIrfanView(wallpaperPath) {
    RunWait("i_view64.exe " wallpaperPath " /wall=7 /killmesoftly")
    return
}

setWallpaperWithWindows(wallpaperPath) {
    SPI_SETDESKWALLPAPER := 20
    SPIF_SENDWININICHANGE := 2

    return DllCall("SystemParametersInfo", "UINT", 0x14, "UINT", 0, "Str", wallpaperPath, "UInt", 1)
}

setSelectedPhotoAsWallpaper() {
    temp := ClipboardAll()
    A_Clipboard := ""

    Send("^c")
    ClipWait(1)
    file_path := A_Clipboard
    A_Clipboard := temp

    setWallpaperWithIrfanView(file_path)
    return
}

setOpenPhotoAsWallpaperInIrfanView() {
    if (WinActive("ahk_class CabinetWClass")) {
        Send("^c")
        ClipWait

        loop parse A_Clipboard, "`n", "`r" {
            RunWait("i_view64.exe " A_LoopField " / wall = 7 / killmesoftly")
        }
    }

    return
}

setRandomWallpaper(folderPath) {
    wallpaperFolders := Type(folderPath) = "Array" ? folderPath : [folderPath]

    wallpapers := []

    for _, wallpaperFolder in wallpaperFolders {
        loop files wallpaperFolder "\*.*", "F" {
            wallpaper := A_LoopFileFullPath
            wallpapers.Push(wallpaper)
        }
    }

    if wallpapers.Length = 0 {
        MsgBox "No wallpapers found in the given folder(s)."
        return
    }

    randomIndex := Random(1, wallpapers.Length)
    selectedWallpaper := wallpapers[randomIndex]

    RunWait("i_view64.exe " selectedWallpaper " /wall=7 /killmesoftly")
    return
}

updateTimeBasedWallpaper() {
    RunWait('pythonw.exe "D:\Coding\Scripts\Scripts\[Wallpaper] Update time based wallpaper.py"')
    return
}

; Recycled

; 02 Jun 2025

; RunWait('pythonw.exe "C:\ForeverYours\Coding\Scripts\Scripts\[Wallpaper] Update time based wallpaper.py"')
