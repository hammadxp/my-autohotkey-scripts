addToDiary() {
    A_Clipboard := ""
    Sleep(200)
    Send("^a")
    Sleep(200)
    Send("^x")
    ClipWait

    minute := FormatTime(, "HH:mm")
    CurrentDateTime := FormatTime(, "yyyy-MM-dd (dddd, dd MMMM yyyy)")
    A_Clipboard := StrReplace(A_Clipboard, "`r`n`r`n", "`r`n")
    ; fileappend A_Clipboard " [" minute "]`n", "C:\ForeverYours\Documents\Diary\Diary (Acer)\" CurrentDateTime ".txt"
    fileappend A_Clipboard " [" minute "]`n", "C:\ForeverYours\Documents\Obsidian\WhatVault\📔 Diary\📁 Diary (Acer)\" CurrentDateTime ".md"
    SendEvent("!{F4}")
    return
}

addToDiaryNope() {
    A_Clipboard := ""
    Sleep(200)
    Send("^a")
    Sleep(200)
    Send("^x")
    ClipWait

    minute := FormatTime(, "HH:mm")
    CurrentDateTime := FormatTime(, "yyyy-MM-dd (dddd, dd MMMM yyyy)")
    A_Clipboard := StrReplace(A_Clipboard, "`r`n`r`n", "`r`n")
    fileappend A_Clipboard " [" minute "]`n", "D:\Other Stuff\Nope\(Other)\Diary (Acer)\" CurrentDateTime ".txt"
    SendEvent("!{F4}")
    return
}

openDiary() {
    CurrentDateTime := FormatTime(, "yyyy-MM-dd (dddd, dd MMMM yyyy)")
    ;Run, C:\ForeverYours\Documents\Obsidian\WhatVault\? Diary\?? Diary (Acer)\%CurrentDateTime%.txt
    ; Run("C:\ForeverYours\Documents\Diary\Diary (Acer)\" CurrentDateTime ".txt")
    Run("C:\ForeverYours\Documents\Obsidian\WhatVault\📔 Diary\📁 Diary (Acer)\" CurrentDateTime ".md")
    ; Sleep(500)
    ; Send("^{End}")
}

openDiaryNope() {
    CurrentDateTime := FormatTime(, "yyyy-MM-dd (dddd, dd MMMM yyyy)")
    Run("D:\Other Stuff\Nope\(Other)\Diary (Acer)\" CurrentDateTime ".txt")
    ; Sleep(500)
    ; Send("^{End}")
}
