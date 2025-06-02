takeScreenshot() {
    Send("#{PrintScreen}")
}

openRecentScreenshot() {
    Time := 0
    File := ""

    screenshotsFolderToday := "C:\ForeverYours\Temp\Screenshots (Acer)\(" A_Year " - " Format("{:02}", A_Mon) ") " A_DD " " A_MMMM

    loop files screenshotsFolderToday "\*.*" {
        if (A_LoopFileTimeModified >= Time) {
            Time := A_LoopFileTimeModified
            File := A_LoopFileFullPath
        }
    }

    Run("C:\Program Files\IrfanView\i_view64.exe " File)

    return
}

openRecentScreenshots() {
    screenshotsFolderToday := "C:\ForeverYours\Temp\Screenshots (Acer)\(" A_Year " - " Format("{:02}", A_Mon) ") " A_DD " " A_MMMM
    screenshots := []

    loop files screenshotsFolderToday "\*.*" {
        if (screenshots.Length < 10) {
            screenshots.Push({ path: A_LoopFileFullPath, time: A_LoopFileTimeModified })
        } else if (A_LoopFileTimeModified > screenshots[5].time) {
            pos := 5
            while (pos > 0 && A_LoopFileTimeModified > screenshots[pos].time)
                pos--

            screenshots.InsertAt(pos + 1, { path: A_LoopFileFullPath, time: A_LoopFileTimeModified })
            screenshots.Pop()
        }
    }

    command := ""
    loop screenshots.Length {
        command .= " " Chr(34) screenshots[A_Index].path Chr(34)
    }

    Run("C:\Program Files\IrfanView\i_view64.exe " command)

    return
}

deleteRecentScreenshot() {
    Time := 0
    File := ""

    screenshotsFolderToday := "C:\ForeverYours\Temp\Screenshots (Acer)\(" A_Year " - " Format("{:02}", A_Mon) ") " A_DD " " A_MMMM

    loop files screenshotsFolderToday "\*.*"
        if (A_LoopFileTimeModified >= Time) {
            Time := A_LoopFileTimeModified
            File := A_LoopFileFullPath
        }

    FileRecycle(File)

    return

}

deleteSecondRecentScreenshot() {
    LatestTime := 0
    LatestFile := ""
    SecondLatestTime := 0
    SecondLatestFile := ""

    screenshotsFolderToday := "C:\ForeverYours\Temp\Screenshots (Acer)\(" A_Year " - " Format("{:02}", A_Mon) ") " A_DD " " A_MMMM

    loop files screenshotsFolderToday "\*.*" {
        if (A_LoopFileTimeModified >= LatestTime) {
            SecondLatestTime := LatestTime
            SecondLatestFile := LatestFile
            LatestTime := A_LoopFileTimeModified
            LatestFile := A_LoopFileFullPath
        }
        else if (A_LoopFileTimeModified >= SecondLatestTime) {
            SecondLatestTime := A_LoopFileTimeModified
            SecondLatestFile := A_LoopFileFullPath
        }
    }

    FileRecycle(SecondLatestFile)
    return

}

addScreenshotToMoments() {
    if (WinActive("ahk_exe i_view64.exe")) {
        Send("{F8}")
    }

    if (WinActive("ahk_class CabinetWClass")) {
        Send("^c")
        ClipWait

        loop parse A_Clipboard, "`n", "`r" {
            ; FileCopy, A_LoopField, C:\ForeverYours\Temp\Screenshots (Moments) (Acer)
            ; FileCopy, A_LoopField, C:\ForeverYours\Screenshots\Screenshots (Moments) (Acer)
            ; FileCopy, A_LoopField, C:\ForeverYours\Screenshots\Screenshots (Moments) (Acer) (Unconfirmed)
            FileCopy A_LoopField, "D:\Photos\Screenshots (Moments)"
        }
    }

    return
}

moveSelectedScreenshots() {
    if (WinActive("ahk_class CabinetWClass")) {
        clipboard := ""
        Send("^c")
        ClipWait

        loop parse clipboard, "`n", "`r" {
            FileMove A_LoopField, screenshotsAcerFolder
        }
    } else {
        MsgBox "Not in Windows Explorer"
    }
    return
}
