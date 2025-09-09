hideActiveWindow() {
    Send("#{Down}")
}

minimizeActiveWindow() {
    WinMinimize "A"
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

switchBetweenVSCodeAndChrome() {
    WinActivate(WinActive("ahk_exe chrome.exe") ? "ahk_exe Code.exe" : "ahk_exe chrome.exe")
}

switchToLastApp() {
    ; Get current active window
    ActiveID := WinGetID("A")

    ; Get list of all windows
    WindowList := WinGetList()

    ; Find the first window that's not the current active one
    for hwnd in WindowList {
        Title := WinGetTitle("ahk_id " . hwnd)
        ; Skip if it's the current window, empty title, or not visible
        if (hwnd = ActiveID || Title = "" || !isWindowVisible(hwnd))
            continue
        ; Activate this window and break
        WinActivate("ahk_id " . hwnd)
        break
    }
}

WindowHistory := []
MaxHistorySize := 15
CurrentIndex := 1
InSwitchMode := false

switchBetweenActiveApps() {
    global WindowHistory, CurrentIndex, InSwitchMode

    ; Update window history first
    UpdateWindowHistory()

    ; If we have fewer than 2 windows, nothing to switch
    if (WindowHistory.Length < 2)
        return

    ; If not in switch mode, start from the second most recent
    if (!InSwitchMode) {
        CurrentIndex := 2
        InSwitchMode := true
        ; Set timer to exit switch mode after delay
        SetTimer(ExitSwitchMode, -2000)
    } else {
        ; Move to next window in history
        CurrentIndex++
        if (CurrentIndex > WindowHistory.Length)
            CurrentIndex := 2  ; Skip back to second (first is current)
        ; Reset the exit timer
        SetTimer(ExitSwitchMode, -2000)
    }

    ; Activate the window at current index
    if (CurrentIndex <= WindowHistory.Length) {
        hwnd := WindowHistory[CurrentIndex]
        if (WinExist("ahk_id " . hwnd) && IsWindowVisible(hwnd)) {
            WinActivate("ahk_id " . hwnd)
        } else {
            ; Window no longer exists, remove from history and try next
            WindowHistory.RemoveAt(CurrentIndex)
            if (WindowHistory.Length > 1)
                switchBetweenActiveApps()
        }
    }
}

; ---

isWindowVisibleMini(hWnd) {
    Style := WinGetStyle("ahk_id " . hWnd)
    return (Style & 0x10000000) ; WS_VISIBLE
}

ExitSwitchMode() {
    ; Exit switch mode and reset

    global InSwitchMode, CurrentIndex
    InSwitchMode := false
    CurrentIndex := 1

    ; Update history when we stop switching
    UpdateWindowHistory()
}

UpdateWindowHistory() {
    ; Update the window history with current active window

    global WindowHistory, MaxHistorySize

    ; Get all visible windows first
    AllWindows := GetAllVisibleWindows()

    ; Get current active window
    try {
        ActiveID := WinGetID("A")
    } catch {
        return
    }

    if (!ActiveID)
        return

    ; Remove active window if already in history
    for i, hwnd in WindowHistory {
        if (hwnd = ActiveID) {
            WindowHistory.RemoveAt(i)
            break
        }
    }

    ; Add current window to front
    WindowHistory.InsertAt(1, ActiveID)

    ; Add other visible windows that aren't in history yet
    for hwnd in AllWindows {
        if (hwnd = ActiveID)
            continue

        ; Check if already in history
        found := false
        for existingHwnd in WindowHistory {
            if (existingHwnd = hwnd) {
                found := true
                break
            }
        }

        ; Add to end if not found
        if (!found) {
            WindowHistory.Push(hwnd)
        }
    }

    ; Trim to max size
    while (WindowHistory.Length > MaxHistorySize)
        WindowHistory.Pop()

    ; Clean up invalid windows
    CleanWindowHistory()
}

GetAllVisibleWindows() {
    ; Get all visible windows that should be in the switcher

    WindowList := []

    ; Get all windows
    AllWindows := WinGetList()

    for hwnd in AllWindows {
        if (IsWindowVisible(hwnd)) {
            WindowList.Push(hwnd)
        }
    }

    return WindowList
}

CleanWindowHistory() {
    ; Clean up windows that no longer exist

    global WindowHistory

    i := WindowHistory.Length
    while (i >= 1) {
        hwnd := WindowHistory[i]
        if (!WinExist("ahk_id " . hwnd) || !IsWindowVisible(hwnd)) {
            WindowHistory.RemoveAt(i)
        }
        i--
    }
}

IsWindowVisible(hWnd) {
    ; Helper function to check if window is visible and valid for switching

    try {
        ; Check if window exists
        if (!WinExist("ahk_id " . hWnd))
            return false

        ; Check if window is visible
        Style := WinGetStyle("ahk_id " . hWnd)
        if (!(Style & 0x10000000)) ; WS_VISIBLE
            return false

        ; Check if window is minimized (we'll include minimized windows)
        ; MinMax := WinGetMinMax("ahk_id " . hWnd)

        ; Check if window has a title
        Title := WinGetTitle("ahk_id " . hWnd)
        if (Title = "")
            return false

        ; Skip certain window classes
        try {
            Class := WinGetClass("ahk_id " . hWnd)
            SkipClasses := ["Shell_TrayWnd", "DV2ControlHost", "MsgrIMEWindowClass",
                "SysShadow", "Button", "Progman", "WorkerW"]
            for SkipClass in SkipClasses {
                if (Class = SkipClass)
                    return false
            }
        } catch {
            return false
        }

        ; Skip windows that are tool windows or have no taskbar button
        ExStyle := WinGetExStyle("ahk_id " . hWnd)
        if (ExStyle & 0x80) ; WS_EX_TOOLWINDOW
            return false

        return true
    } catch {
        return false
    }
}
