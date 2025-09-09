yt_default_quality() {
    Run('C:\Windows\System32\cmd.exe /K "cd /d D:\Other Stuff\youtube-dl"')
    Sleep(500)
    SendInput("youtube-dl ")
    Sleep(500)
    Send("^v")
    Sleep(500)
    Send("{Enter}")
}

yt_480p_quality() {
    Run('C:\Windows\System32\cmd.exe /K "cd /d D:\Other Stuff\youtube-dl"')
    Sleep(500)
    SendInput('youtube-dl -f "bestvideo[height<=480][ext=mp4]{+}bestaudio[ext=m4a]" ')
    Sleep(500)
    Send("^v")
    Sleep(500)
    Send("{Enter}")
}

yt_1080p_quality() {
    Run('C:\Windows\System32\cmd.exe /K "cd /d D:\Other Stuff\youtube-dl"')
    Sleep(500)
    SendInput('youtube-dl -f "bestvideo[height<=1080][ext=mp4]{+}bestaudio[ext=m4a]" ')
    Sleep(500)
    Send("^v")
    Sleep(500)
    Send("{Enter}")
}

yt_thumbnail_only() {
    Run('C:\Windows\System32\cmd.exe /K "cd /d D:\Other Stuff\youtube-dl"')
    Sleep(500)
    SendInput("youtube-dl --write-thumbnail --skip-download ")
    Sleep(500)
    Send("^v")
    Sleep(500)
    Send("{Enter}")
}
