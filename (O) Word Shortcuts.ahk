; o -> means no space after expansion
; R*? -> means expand instantly without hitting space bar

::cc:: {
    SendInput("�")
}

::dd:: {
    SendInput("download")
}

::ddd:: {
    CurrentDateTime := FormatTime(, "yyyyMMdd")
    SendInput(CurrentDateTime)
}

::dddd:: {
    CurrentDateTime := FormatTime(, "yyyyMMdd-HHmmss")
    SendInput(CurrentDateTime)
}

; :R*?:ddddd::
::ddddd:: {
    CurrentDateTime := FormatTime(, "(yyyyMMdd-HHmmss)")
    SendInput(CurrentDateTime)
}

::ff:: {
    SendInput("26February")
}

::fff:: {
    CurrentDateTime := FormatTime(, "dd MMM yyyy")
    SendInput(CurrentDateTime)
}

::ffff:: {
    CurrentDateTime := FormatTime(, "dd MMM yyyy (HH.mm)")
    SendInput(CurrentDateTime)
}

; :R*?:fffff:: {
::fffff:: {
    CurrentDateTime := FormatTime(, "yyyy-MM-dd (dddd, dd MMMM yyyy)")
    SendInput(CurrentDateTime)
}

::hh:: {
    SendInput("hammadxp")
}

::hj:: {
    SendInput("hammadjaved9860@gmail.com")
}

; ::lll::
;   SendInput("yt-dlp {}")

::lll:: {
    SendInput('yt-dlp --config-locations "D:\Other Stuff\yt-dlp\(configs)\yt-dlp (*).conf"')
}

::llll:: {
    SendInput('yt-dlp --config-locations "D:\Other Stuff\yt-dlp\(configs)\yt-dlp (playlist_1080p).conf"')
}

::ooo:: {
    CurrentDateTime := FormatTime(, "**dd MMM yyyy**")
    SendInput(CurrentDateTime)
    Send("{Enter}")
}

::oooo:: {
    SendInput('<span class="" style=""></span>')
}

::qq:: {
    SendInput("?")
}

::ttt:: {
    CurrentDateTime := FormatTime(, "[HH:mm]")
    SendInput("CurrentDateTime ")
}

; :R*?:tttt::
::tttt:: {
    CurrentDateTime := FormatTime(, "d-MM (ddd)")
    SendInput CurrentDateTime
    Send("{Enter}")
    Send("{Enter}")
    Send("{Enter}")
    Send("{Up}")
    Send("{Up}")
}

; ---

::nc:: {
    SendInput("Nic Salt E-liquid")
}
