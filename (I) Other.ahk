; Other Shortcuts

refreshAutoHotKeyMainScript() {
    global startupFolder

    Run(startupFolder "\AutoHotKey Scripts (Run as admin).vbs")
}

openTaskbarTray() {
    Send("#b")
    Sleep(1000)
    Send("{Enter}")
}

viewFileProperties() {
    if (WinActive("ahk_exe explorer.exe")) {
        Send("!{Enter}")
    }
}

getFileModifiedTime() {
    Send("^c")
    Sleep(100)

    modified_date_raw := FileGetTime(A_Clipboard, "M")
    modified_date := FormatTime(modified_date_raw, "(yyyyMMdd-HHmmss)")
    A_Clipboard := modified_date

    return
}

addTextToCMDSessions() {
    Send("^a")
    Sleep(100)
    Send("^c")
    Sleep(100)
    Send("{Right}")
    ClipWait

    CurrentDateTime := FormatTime(, "(yyyyMMdd-HHmmss)")
    FileAppend(A_Clipboard "`n", "C:\ForeverYours\Documents\Logs\" CurrentDateTime ".txt")
    return
}

openFile(filePath) {
    Run(filePath)
}

openFolderInNewTab(folderPath) {
    if hwnd := WinExist("ahk_exe explorer.exe ahk_class CabinetWClass") {
        if !WinActive("ahk_id" hwnd) {
            WinActivate
            WinWaitActive
        }
    } else {
        Run(folderPath)
        return
    }

    Send("^t")
    Sleep(250)

    Window := ComObject("Shell.Application").Windows
    last := Window.Item(Window.Count - 1)
    last.navigate(folderPath)
}

; Bug fix for when Alt key stucks in Chrome

liftLeftKey() {
    if (WinActive("ahk_exe chrome.exe"))
        Send("{Left}")
    return
}

liftRightKey() {
    if (WinActive("ahk_exe chrome.exe"))
        Send("{Right}")
    return
}
