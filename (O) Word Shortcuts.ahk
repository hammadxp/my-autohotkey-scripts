; ---

; o -> means no space after expansion
; R*? -> means expand instantly without hitting space bar

::cc::
  SendInput, �
  return

::dd::
  SendInput, download {}
  return

::ff::
  SendInput, 26February
  return

::hh::
  SendInput, hammad9860
  return

::hj::
  SendInput, hammadjaved9860@gmail.com
  return

::lll::
  SendInput, yt-dlp {}
  return

::qq::
  SendInput, ?
  return

::rc::
  SendInput, rclone {}
  return

::ss::
  SendInput, down_on_spot {}
  return

; ---

::ddd::
  FormatTime, CurrentDateTime,, [yyyy-MM-dd]
  SendInput %CurrentDateTime% {}
  return

:R*?:dddd::
  FormatTime, CurrentDateTime,, [yyyy-MM-dd] [HH.mm]
  SendInput %CurrentDateTime% {}
  return

:R*?:ffff::
  FormatTime, CurrentDateTime,, yyyy-MM-dd (dddd, dd MMMM yyyy)
  SendInput %CurrentDateTime%
  return

::llll::
  SendInput, yt-dlp --config-locations "D:\Other Stuff\youtube-dl\(configs)\youtube-dl (*).conf"
  return

::lllll::
  SendInput, yt-dlp --config-locations "D:\Other Stuff\youtube-dl\(configs)\youtube-dl (playlist_1080p).conf"
  return

::ooo::
  FormatTime, CurrentDateTime,, **dd MMM yyyy**
  SendInput %CurrentDateTime%
  Send, {Enter}
  Send, -{Space}
  return

:R*?:uuu::
  SendInput, py "D:\Coding\Scripts\Scripts (Shared)\Unify For Spotify\script.py"
  return

::ttt::
  FormatTime, CurrentDateTime,, [HH:mm]
  SendInput %CurrentDateTime% {}
  return

:R*?:tttt::
  FormatTime, CurrentDateTime,, d-MM (ddd)
  SendInput %CurrentDateTime%
  Send, {Enter}
  Send, {Enter}
  Send, {Enter}
  Send, {Up}
  Send, {Up}
  return

; ---
