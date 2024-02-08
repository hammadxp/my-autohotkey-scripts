;Ctrl Key ^  |  Shift Key +  |  Alt Key !  |  Windows Key #


; youtube-dl
	CapsLock & `::
		Run, C:\Windows\System32\cmd.exe /K "cd /d D:\Other Stuff\youtube-dl"
		return


;--------------------------------------- MANUALLY COPIED URL -------------------------------------------------


;	youtube-dl (Open CMD + Enter Command + Paste URL + Hit Enter)


;	Default Quality

	CapsLock & 4::
		Run, C:\Windows\System32\cmd.exe /K "cd /d D:\Other Stuff\youtube-dl"
		Sleep 500
		SendInput, youtube-dl { }
		Sleep 500
		Send, ^v
		Sleep 500
		Send, {enter}
		return


;	480p Quality

	CapsLock & 5::
		Run, C:\Windows\System32\cmd.exe /K "cd /d D:\Other Stuff\youtube-dl"
		Sleep 500
		SendInput, youtube-dl -f "bestvideo[height<=480][ext=mp4]{+}bestaudio[ext=m4a]" { }
		Sleep 500
		Send, ^v
		Sleep 500
		Send, {enter}
		return

;	1080p Quality

	CapsLock & 6::
		Run, C:\Windows\System32\cmd.exe /K "cd /d D:\Other Stuff\youtube-dl"
		Sleep 500
		SendInput, youtube-dl -f "bestvideo[height<=1080][ext=mp4]{+}bestaudio[ext=m4a]" { }
		Sleep 500
		Send, ^v
		Sleep 500
		Send, {enter}
		return


;---------------------------------------- CURRENT PAGE URL ---------------------------------------------------


;	youtube-dl (Copy URL + Open CMD + Enter Command + Paste URL + Hit Enter)


;	Default Quality

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

;	480p Quality

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

;	1080p Quality

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

; 480p
	::480pp::youtube-dl -f "bestvideo[height<=480][ext=mp4]{+}bestaudio[ext=m4a]"
		return


; 1080p
	::1080pp::youtube-dl -f "bestvideo[height<=1080][ext=mp4]{+}bestaudio[ext=m4a]"
		return

; ---
