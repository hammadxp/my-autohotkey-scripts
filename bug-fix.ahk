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
