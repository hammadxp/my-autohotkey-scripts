; ---

CapsLock & `::
	Run, C:\Windows\System32\cmd.exe /K "cd /d D:\Other Stuff\youtube-dl"
	return

; --- When manually copied video URL

;	youtube-dl (Open CMD + Enter Command + Paste URL + Hit Enter)

;	Default quality

CapsLock & 4::
	Run, C:\Windows\System32\cmd.exe /K "cd /d D:\Other Stuff\youtube-dl"
	Sleep 500
	SendInput, youtube-dl { }
	Sleep 500
	Send, ^v
	Sleep 500
	Send, {enter}
	return

;	480p

CapsLock & 5::
	Run, C:\Windows\System32\cmd.exe /K "cd /d D:\Other Stuff\youtube-dl"
	Sleep 500
	SendInput, youtube-dl -f "bestvideo[height<=480][ext=mp4]{+}bestaudio[ext=m4a]" { }
	Sleep 500
	Send, ^v
	Sleep 500
	Send, {enter}
	return

;	1080p

CapsLock & 6::
	Run, C:\Windows\System32\cmd.exe /K "cd /d D:\Other Stuff\youtube-dl"
	Sleep 500
	SendInput, youtube-dl -f "bestvideo[height<=1080][ext=mp4]{+}bestaudio[ext=m4a]" { }
	Sleep 500
	Send, ^v
	Sleep 500
	Send, {enter}
	return

; --- When URL is not copied yet, copy it from current page

;	youtube-dl (Copy URL + Open CMD + Enter Command + Paste URL + Hit Enter)

;	Default quality

CapsLock & F1::
	Send, u
	Sleep 500
	Run, C:\Windows\System32\cmd.exe /K "cd /d D:\Other Stuff\youtube-dl"
	Sleep 500
	SendInput, youtube-dl { }
	Sleep 500
	Send, ^v
	Sleep 500
	Send, {enter}
	return

;	480p

CapsLock & F2::
	Send, u
	Sleep 500
	Run, C:\Windows\System32\cmd.exe /K "cd /d D:\Other Stuff\youtube-dl"
	Sleep 500
	SendInput, youtube-dl -f "bestvideo[height<=480][ext=mp4]{+}bestaudio[ext=m4a]" { }
	Sleep 500
	Send, ^v
	Sleep 500
	Send, {enter}
	Sleep 500
	Send, #{Down}
	return

;	1080p

CapsLock & F3::
	Send, u
	Sleep 500
	Run, C:\Windows\System32\cmd.exe /K "cd /d D:\Other Stuff\youtube-dl"
	Sleep 500
	SendInput, youtube-dl -f "bestvideo[height<=1080][ext=mp4]{+}bestaudio[ext=m4a]" { }
	Sleep 500
	Send, ^v
	Sleep 500
	Send, {enter}
	Sleep 500
	Send, #{Down}
	return

; --- Thumbnail Only

CapsLock & 0::
	Run, C:\Windows\System32\cmd.exe /K "cd /d D:\Other Stuff\youtube-dl"
	Sleep 500
	SendInput, youtube-dl --write-thumbnail --skip-download { }
	Sleep 500
	Send, ^v
	Sleep 500
	Send, {enter}
	return

; --- Expand Text

::480pp::
	youtube-dl -f "bestvideo[height<=480][ext=mp4]{+}bestaudio[ext=m4a]"
	return


::1080pp::
	youtube-dl -f "bestvideo[height<=1080][ext=mp4]{+}bestaudio[ext=m4a]"
	return

; ---
