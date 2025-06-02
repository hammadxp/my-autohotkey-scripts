; Ctrl (^) Shift (+) Alt Key (!) Windows (#)

; Global variables

global appShortcutsFolder := "C:\ForeverYours\Apps\Shortcuts\Shortcuts"
global chromeAppsFolder := "C:\Users\Hammad\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Chrome Apps"
global inspirationFolder := "C:\ForeverYours\Coding\Web Development\Photos\Inspiration"
global screenshotsAcerFolder := "C:\ForeverYours\Temp\Screenshots (Acer)"
global scriptsFolder := "C:\ForeverYours\Coding\Scripts\Scripts"
global startupFolder := "C:\Users\Hammad\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"

; Include external scripts

#Include "(I) App Shortcuts.ahk"
#Include "(I) Force Close Apps.ahk"
#Include "(I) Manage Diary.ahk"
#Include "(I) Manage Screenshots.ahk"
#Include "(I) Manage Wallpaper.ahk"
#Include "(I) Manage Active Window.ahk"
#Include "(I) Native Functionality For Keys.ahk"
#Include "(I) Other.ahk"
#Include "(I) Replace Keys.ahk"
#Include "(I) Restart Apps.ahk"
#Include "(I) Run Scripts.ahk"

#Include "(M) Shell.ahk"
#Include "(O) Word Shortcuts.ahk"

; #Include "(M) Brightness.ahk"
; #Include "(O) youtube-dl.ahk"

; ---

; Native

. UP:: nativeDot()
+.:: nativeArrowRight()

; Top Row

F11:: switchBetweenVSCodeAndChrome()
Ins:: setOpenPhotoAsWallpaperInIrfanView()

; Bottom Row

AppsKey:: takeScreenshot()

; Playback

Home:: openNotepad()
Home & RShift:: openFolderInNewTab("D:\Other Stuff\Nope")
Home & PgUp:: addToDiary()
Home & PgDn:: addToDiaryNope()
Home & End:: addTextToCMDSessions()

PgUp:: openRecentScreenshots()
PgUp & RShift:: openFolderInNewTab("C:\ForeverYours\Coding\Scripts\AutoHotKey")
PgUp & [:: openFolderInNewTab("C:\ForeverYours\Coding\Scripts\Scripts")
PgUp & ]:: runScriptsRunnerScript()
PgUp & ':: runUnifyForSpotifyScript()
PgUp & \:: runUnifyForSpotifyScriptv2()

PgDn:: openFolderInNewTab("C:\ForeverYours\Temp\Screenshots (Acer)\(" A_Year " - " Format("{:02}", A_Mon) ") " A_DD " " A_MMMM
)
PgDn & \:: moveSelectedScreenshots()
PgDn & Enter:: openFolderInNewTab("D:\Screenshots\Screenshots (Acer)")
PgDn & RShift:: openFolderInNewTab("D:\Photos\Screenshots\Screenshots (Moments) (Acer)")

End:: closeActiveWindow()

; CapsLock (for folders)

CapsLock & a:: openFolderInNewTab("C:\Users\Hammad\AppData")
CapsLock & b:: openFolderInNewTab("D:\Backups")
CapsLock & c:: openFolderInNewTab("C:\ForeverYours\Coding")
CapsLock & d:: openFolderInNewTab("D:\")
CapsLock & e:: openFolderInNewTab("C:\ForeverYours\Apps\Shortcuts\Applications")
CapsLock & f:: openFolderInNewTab("C:\ForeverYours")
CapsLock & g:: openFolderInNewTab("D:\Music\(Other)\Geet")
CapsLock & h:: openFolderInNewTab("C:\Users\Hammad")
CapsLock & i:: openFolderInNewTab("C:\ForeverYours\Apps\[Server Apps]\immich-app")
CapsLock & j:: openFolderInNewTab("C:\ForeverYours\Temp")
CapsLock & l:: openFolderInNewTab("D:\Photos\Screenshots (Moments)")
CapsLock & m:: openFolderInNewTab("D:\Music")
CapsLock & o:: openFolderInNewTab("D:\Devices\My Android")
CapsLock & p:: openFolderInNewTab("D:\Photos")
CapsLock & r:: openFolderInNewTab("C:\ForeverYours\Temp\Restored")
CapsLock & s:: openFolderInNewTab("C:\Users\Hammad\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup")
CapsLock & t:: openFolderInNewTab("D:\Movies and TV Shows\Good Stuff\Torrents")
CapsLock & u:: openFolderInNewTab("C:\ForeverYours\Coding\Web Development")
CapsLock & v:: openFolderInNewTab("C:\ForeverYours\Documents\Hammad")
CapsLock & w:: openFolderInNewTab("D:\Photos\Camera (OnePlus) (Photos)")
CapsLock & x:: openFolderInNewTab("C:\ForeverYours\Coding\Scripts")
CapsLock & y:: Run("C:\ForeverYours\Apps\Shortcuts\Shortcuts\Recycle Bin")
CapsLock & z:: openFolderInNewTab("C:\ForeverYours\Coding\Test")
CapsLock & 1:: openFolderInNewTab("M:\")
CapsLock & 2:: openFolderInNewTab("N:\")
CapsLock & [:: openDiary()
CapsLock & ]:: openDiaryNope()

; Dot (for files)

. & l:: openFile("C:\ForeverYours\Apps\Files (InUse)\01. Lets Start.jpg")
. & k:: openFile("C:\ForeverYours\Apps\Files (InUse)\02. Continue.jpg")
. & j:: openFile("C:\ForeverYours\Apps\Files (InUse)\03. Khaana Done.jpg")
. & h:: openFile("C:\ForeverYours\Apps\Files (InUse)\05. Chatt Te.jpg")

; Alt (for apps)

!F9:: openIDM()
!F10:: openVLC()
!3:: openMp3Tag()
!d:: openDiscordWebApp()
!e:: openEverythingApp()
!g:: openGoodSync()
!i:: openInstagramWebApp()
!o:: openOBSStudio()
!m:: openMediaPlayerApp()
!p:: openPlexWebApp()
!q:: openQBittorrent()
!w:: openWhyAhmadiWebApp()
!y:: openYouTubeWebApp()

; Ctrl (for basic actions)

^F12:: refreshAutoHotKeyMainScript()
^PrintScreen:: openSnapTool()
^Enter:: viewFileProperties()
^Home:: homeKey()
^PgUp:: pgUpKey()
^PgDn:: pgDownKey()
^End:: endKey()

; Shift (for basic actions)

+PgUp:: deleteRecentScreenshot()
+PgDn:: deleteSecondRecentScreenshot()

; Win (for Windows related actions)

#c:: openCommandPrompt()
#f:: minimizeActiveWindow()
#p:: openControlPanelProgramsSection()
#t:: openTaskManager()
#z:: openTaskbarTray()

; Ctrl + Alt (for restarting apps)

^!a:: forceCloseAutoHotKey()
^!c:: forceCloseChrome()
^!e:: restartExplorer()
^!g:: forceCloseGoodSync()
^!p:: forceClosePowershell()
^!s:: forceCloseStartMenu()
^!v:: forceCloseVLC()
^!z:: restartDesktop()

; Win + Alt (for scripts)

#!F1:: getFileModifiedTime()
#!F5:: runHotspotToggleScript()
#!F6:: runHotspotToggleOnScript()
#!F8:: runDownOnSpotForSpotifyScript()
#!F9:: runUnifyForSpotifyScript()
#!1:: setWallpaperWithIrfanView("C:\ForeverYours\Temp\Restored\IMG_20230122_085425.jpg")
#!2:: setWallpaperWithIrfanView("C:\ForeverYours\Temp\Restored\IMG_20221216_133916~2.jpg")
#!3:: setWallpaperWithIrfanView("C:\ForeverYours\Temp\Restored\img_20240904_165829.jpg")
#!4:: setWallpaperWithIrfanView("C:\ForeverYours\Temp\Restored\PXL_20240311_144501302.NIGHT.jpg")
#!5:: setSelectedPhotoAsWallpaper()
#!6:: setRandomWallpaper("C:\ForeverYours\Temp\Restored")
#!7:: updateTimeBasedWallpaper()

; --- Recycled

; global scriptsFolder := "D:\Documents\[My Scripts]\Scripts (Frequent)"

; Backslash
; \ & Home:: openFolderInNewTab("D:\Pictures\Favourites (HTC)")
; \ & PGUP:: openFolderInNewTab("D:\Pictures\Favourites (Acer)")
; \ & PGDN:: openFolderInNewTab("D:\Photos\Downloaded Photos")
; \ & End:: openFolderInNewTab("C:\ForeverYours\Apps\Shortcuts\Shortcuts\Recycle Bin")

; --- 28 Aug 2024 ---

; Tab
; Tab::nativeTab()
; +Tab::nativeTabWithShift()

; ^F11::setClipboard("Connect to Hammad (Acer)")
; ^AppsKey::switchBetweenActiveApps()

; ^,::openDiary()
; ^.::openDiaryNope()

; !Left::liftLeftKey()
; !Right::liftRightKey()

; \ UP::nativeBackslash()
; +\::nativePipeSign()

; ?:: openFolderInNewTab("D:\Photos\Downloaded Photos")
; +PGUP:: openFolderInNewTab("D:\Photos\Instagram Downloads")
; +PGDN:: openFolderInNewTab("D:\Movies and TV Shows\[Movies]")
; +End:: openFolderInNewTab("D:\Videos")

; PGDN & End::hideActiveWindow()
; PGDN & '::openMediaPlayerApp()
; PGDN & `;:: openFolderInNewTab("D:\Music")

; --- 26 Nov 2024 ---

; PrintScreen:: addScreenshotToMoments()

; #!1:: setWallpaperWithIrfanView("C:\ForeverYours\Temp\Restored\IMG_20240410_073527.jpg")
; #!3:: setWallpaperWithIrfanView("C:\ForeverYours\Temp\Restored\IMG_20230729_181908~2.jpg")
; #!4:: setWallpaperWithIrfanView("C:\ForeverYours\Temp\Restored\PXL_20230826_151814396.NIGHT~2.jpg")

; !v:: openVSCode()

; CapsLock & i:: openFolderInNewTab("D:\Coding\Web Development\(Learn)\JavaScript\(Course)")
; CapsLock & k::
; CapsLock & l::openFolderInNewTab("C:\Users\Hammad\AppData\Roaming\Microsoft\Windows\Libraries")
; CapsLock & n::
; CapsLock & q:: openFolderInNewTab("D:\Movies and TV Shows\Good Stuff\Torrents (In Progress)")

; PgDn & RShift:: openFolderInNewTab("C:\ForeverYours\Screenshots\Screenshots (Acer)")
; PgDn & Enter:: openFolderInNewTab(""C:\ForeverYours\Screenshots\Screenshots (Acer) (Moments)"")
; PgDn & Enter:: openFolderInNewTab("C:\ForeverYours\Temp\Screenshots (Acer) (Moments)")
; PgDn & Enter:: openFolderInNewTab("C:\ForeverYours\Temp\Screenshots (Moments) (Acer)")
; PgDn & Enter:: openFolderInNewTab("C:\ForeverYours\Screenshots\Screenshots (Moments) (Acer)")

; --- 21 Dec 2024 ---

; PgDn:: openFolderInNewTab("C:\ForeverYours\Screenshots\Screenshots")

; --- 29 Dec 2024 ---

; CapsLock & j:: openFolderInNewTab("C:\ForeverYours\Temp")

; --- 05 Apr 2025 ---

; CapsLock & j:: openFolderInNewTab("C:\ForeverYours\Downloads")

; 22 Apr 2025

; CapsLock & o:: openFolderInNewTab("C:\ForeverYours\OnePlus")

; 27 Apr 2025

; CapsLock & o:: openFolderInNewTab("D:\Lemonade")

; 26 May 2025

; global screenshotsAcerFolder := "C:\ForeverYours\Screenshots\Screenshots (Acer)"
; PgDn:: openFolderInNewTab("C:\ForeverYours\Screenshots\Screenshots (Acer)\(" A_Year " - " Format("{:02}", A_Mon) ") " A_DD " " A_MMMM
; )
; PgDn & RShift:: openFolderInNewTab("D:\Screenshots\Screenshots (Moments) (Acer)")
