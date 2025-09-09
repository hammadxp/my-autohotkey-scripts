restartDesktop() {
    ProcessClose("explorer.exe")
    ProcessClose("sizer.exe")
    ProcessClose("RemoteServerWin.exe")
    Sleep(2000)
    Run("explorer.exe")
    Run("C:\Program Files (x86)\Unified Remote 3\RemoteServerWin.exe")
    Run("C:\Users\Hammad\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup\Sizer (Run as admin).vbs")
}

restartExplorer() {
    ProcessClose("explorer.exe")
    Sleep(2000)
    Run("explorer.exe")
}
