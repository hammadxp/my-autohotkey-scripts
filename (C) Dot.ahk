;Ctrl Key ^  |  Shift Key +  |  Alt Key !  |  Windows Key #


; Native (.)
	. UP::
		Send, .
		return

; Native (>)
	+.::
		Send, >
		return

; ---

; MCU Collection (Marvel Cinematic Universe) (1080p) (Playlist)
	. & 1::
		Run, D:\Movies and TV Shows\Extras\Playlists\MCU Collection (Marvel Cinematic Universe) (1080p).m3u8
		return

; Iron Man (Movie)
	. & 0::
		Run, %mcu%\Iron Man (2008) (1080p).mp4
		return

; ---

; meri apni movian vekhan di history (new) (Bundled)
;	. & b::
		Run, D:\Documents\Office\meri apni movian vekhan di history (new) (Bundled).xlsx
		return

; ---

; Watching (Movies)
;	. & m::
		Run, D:\Movies and TV Shows\Extras\Watching (Movies and TV Shows)\Watching (Movies).txt
		return

; Watching (TV Shows)
;	. & t::
		Run, D:\Movies and TV Shows\Extras\Watching (Movies and TV Shows)\Watching (TV Shows).txt
		return

; ---

; Lockscreen Photos
	. & l::
;		Run, D:\Photos\colosseum.jpg
;		Run, D:\Photos\Photos\01. Lets Start.jpg
		Run, C:\ForeverYours\Apps\Files (InUse)\01. Lets Start.jpg
		return

	. & k::
;		Run, D:\Photos\Photos\02. Continue.jpg
		Run, C:\ForeverYours\Apps\Files (InUse)\02. Continue.jpg
		return

	. & j::
;		Run, D:\Photos\Photos\03. Khaana Done.jpg
		Run, C:\ForeverYours\Apps\Files (InUse)\03. Khaana Done.jpg
		return

	. & h::
;		Run, D:\Photos\Photos\05. Chatt Te.jpg
		Run, C:\ForeverYours\Apps\Files (InUse)\05. Chatt Te.jpg
		return

; ---
