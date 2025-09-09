addTextToCMDSessions() {
    Send("^a")
    Sleep(100)
    Send("^c")
    Sleep(100)
    Send("{Left}")
    ClipWait

    CurrentDateTime := FormatTime(, "(yyyyMMdd-HHmmss)")
    FileAppend(A_Clipboard "`n", "D:\Coding\Logs\" CurrentDateTime ".txt")
    return
}

copy_current_page_url() {
    Send("c")
    Sleep(500)
}

getFileModifiedTime(date_format) {
    Send("^c")
    Sleep(100)

    modified_date_raw := FileGetTime(A_Clipboard, "M")
    modified_date := FormatTime(modified_date_raw, date_format)
    A_Clipboard := modified_date

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

openTaskbarTray() {
    Send("#b")
    Sleep(1000)
    Send("{Enter}")
}

refreshAutoHotKeyMainScript() {
    global startupFolder

    Run(startupFolder "\AutoHotKey (As Admin).ahk")
}

viewFileProperties() {
    if (WinActive("ahk_exe explorer.exe")) {
        Send("!{Enter}")
    }
}

; Recycled

; 02 Jun 2025

; FileAppend(A_Clipboard "`n", "C:\ForeverYours\Documents\Logs\" CurrentDateTime ".txt")
