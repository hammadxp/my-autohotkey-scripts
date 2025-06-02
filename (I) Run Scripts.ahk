runDownOnSpotForSpotifyScript() {
    Run(scriptsFolder "\[Run] Spotify (down_on_spot).bat")
}

runUnifyForSpotifyScript() {
    Run("D:\Coding\Shared\unify-for-spotify\script.py")
}

runUnifyForSpotifyScriptv2() {
    Run('wt --startingDirectory "D:\Coding\Shared\unify-for-spotify"')
    Sleep(2000)
    SetTitleMatchMode(2)
    if (WinExist("Command Prompt (VS Code)")) {
        WinActivate("Command Prompt (VS Code)")
        ; SendInput("py script.py")
        SendInput("conda run -n unify_env --live-stream python script.py")
        Send("{Enter}")
    } else {
        MsgBox("Target window not found")
    }
}

runHotspotToggleScript() {
    Run(scriptsFolder "\Hotspot (Toggle) (Run).bat")
}

runHotspotToggleOnScript() {
    Run(scriptsFolder "\Hotspot (On) (Run).bat")
}

runScriptsRunnerScript() {
    Run(scriptsFolder "\[Run] Scripts.bat")
}

; Recycled

; 02 Jun 2025

; Run("C:\ForeverYours\Coding\Shared\unify-for-spotify\script.py")
; Run('wt --startingDirectory "C:\ForeverYours\Coding\Shared\unify-for-spotify"')
