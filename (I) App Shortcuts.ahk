; Simple Apps

openCommandPrompt() {
    Run("D:\Apps\Shortcuts\Shortcuts\Command Prompt.lnk")
}

openEverythingApp() {
    Run("C:\Program Files\Everything\Everything.exe")
}

openGoodSync() {
    Run("C:\Program Files\Siber Systems\GoodSync\GoodSync - v10.exe")
}

openIDM() {
    Run("C:\Program Files (x86)\Internet Download Manager\IDMan.exe")
}

openMediaPlayerApp() {
    Run(appShortcutsFolder "\Media Player")
}

openMp3Tag() {
    Run("C:\Program Files (x86)\Mp3tag\Mp3tag.exe")
}

openNotepad() {
    Run("D:\Apps\Shortcuts\Shortcuts\Notepad")
}

openOBSStudio() {
    Run("C:\ProgramData\Microsoft\Windows\Start Menu\Programs\OBS Studio\OBS Studio (64bit).lnk")
}

openQBittorrent() {
    Run("C:\Program Files\qBittorrent\qbittorrent.exe")
}

openTaskManager() {
    Run("D:\Apps\Shortcuts\Shortcuts\Task Manager.lnk")
}

openVLC() {
    Run("C:\Program Files\VideoLAN\VLC\vlc.exe")
}

openVSCode() {
    Run("C:\Users\Hammad\AppData\Local\Programs\Microsoft VS Code\Code.exe")
}

runChromeWithoutExtensions() {
    Run("D:\Documents\Shortcuts\Chrome (--disable - extensions).lnk")
}

openSnapTool() {
    Send("#+s")
}

openControlPanelProgramsSection() {
    Send("#x")
    Sleep(500)
    Send("p")
}

; Chrome Web Apps

openDiscordWebApp() {
    Run(chromeAppsFolder "\Discord")
}

openInstagramWebApp() {
    Run(chromeAppsFolder "\Instagram")
}

openPlexWebApp() {
    Run(chromeAppsFolder "\Plex (New)")
}

openWhyAhmadiWebApp() {
    Run(chromeAppsFolder "\WhyAhmadi")
}

openYouTubeWebApp() {
    Run(chromeAppsFolder "\YouTube")
}

; Recycled

; Previous

; ShellRun("C:\Users\Hammad\AppData\Local\Programs\Microsoft VS Code\Code.exe")

; 02 Jun 2025

; Run("C:\ForeverYours\Apps\Shortcuts\Shortcuts\Command Prompt.lnk")
; Run("C:\ForeverYours\Apps\Shortcuts\Shortcuts\Notepad")
; Run("C:\ForeverYours\Apps\Shortcuts\Shortcuts\Task Manager.lnk")
