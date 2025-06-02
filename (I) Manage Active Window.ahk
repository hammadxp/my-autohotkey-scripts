switchBetweenActiveApps() {
    Send("!{Esc}")
}

switchBetweenVSCodeAndChrome() {
    WinActivate(WinActive("ahk_exe chrome.exe") ? "ahk_exe Code.exe" : "ahk_exe chrome.exe")
}

minimizeActiveWindow() {
    WinMinimize "A"
}

hideActiveWindow() {
    Send("#{Down}")
}

closeActiveWindow() {
    if (!WinActive("ahk_exe chrome.exe") and !WinActive("ahk_exe cmd.exe") and !WinActive("ahk_exe code.exe") and !
    WinActive("ahk_exe vlc.exe") and !WinActive("ahk_exe spotify.exe") and !WinActive("ahk_exe msedge.exe") and !
    WinActive("ahk_exe Obsidian.exe") and !WinActive("ahk_exe MongoDBCompass.exe") and !WinActive(
        "ahk_exe Everything.exe") and !WinActive("ahk_exe Figma.exe") and !WinActive("Media Player")) {
        ; Send(!{F4})
        WinClose "A"
        ; PostMessage 0x0112, 0xF060,,, A  ; 0x0112 = WM_SYSCOMMAND, 0xF060 = SC_CLOSE
    }
}
