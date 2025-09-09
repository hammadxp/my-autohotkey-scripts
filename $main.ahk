; Ctrl (^) Shift (+) Alt Key (!) Windows (#)

; Include external scripts

#Include "active-window.ahk"
#Include "bug-fix.ahk"
#Include "diary.ahk"
#Include "force-close-apps.ahk"
#Include "native-keys.ahk"
#Include "replace-keys.ahk"
#Include "restart-apps.ahk"
#Include "run-apps.ahk"
#Include "run-chrome-web-apps.ahk"
#Include "run-scripts.ahk"
#Include "screenshot.ahk"
#Include "text-expand.ahk"
#Include "utils.ahk"
#Include "wallpaper.ahk"

#Include "modules\shell.ahk"

; Global variables

global appShortcutsFolder := "D:\Apps\Shortcuts\Shortcuts"
global chromeAppsFolder := "C:\Users\Hammad\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Chrome Apps"
global inspirationFolder := "D:\Coding\Web Development\Photos\Inspiration"
global screenshotsAcerFolder := "C:\ForeverYours\Screenshots (Acer)"
global scriptsFolder := "D:\Coding\Scripts\Scripts"
global startupFolder := "C:\Users\Hammad\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"

; ---

; Native Keys

. UP:: nativeDot()
+.:: nativeArrowRight()

; Actions

AppsKey:: takeScreenshot()

Home:: openNotepad()
PgUp:: openRecentScreenshots()
PgDn:: openFolderInNewTab("C:\ForeverYours\Screenshots (Acer)\(" A_Year " - " Format("{:02}", A_Mon) ") " A_DD " " A_MMMM
)
End:: closeActiveWindow()

; Actions (Ctrl key)

^Home:: homeKey()
^PgUp:: pgUpKey()
^PgDn:: pgDownKey()
^End:: endKey()

^Enter:: viewFileProperties()

; Actions (Shift key)

+PgUp:: deleteRecentScreenshot()
+PgDn:: deleteSecondRecentScreenshot()

; Actions (Win key)

#F1:: getFileModifiedTime("(yyyyMMdd-HHmmss)")
#F2:: getFileModifiedTime("(dd MMM yyyy)")
#F10:: runUnifyForSpotifyScriptv2()
#F12:: refreshAutoHotKeyMainScript()

#1:: setWallpaperWithIrfanView("C:\ForeverYours\Collections\Restored\IMG_20230122_085425.jpg")
#2:: setWallpaperWithIrfanView("C:\ForeverYours\Collections\Restored\IMG_20221216_133916~2.jpg")
#3:: setWallpaperWithIrfanView("C:\ForeverYours\Collections\Restored\img_20240904_165829.jpg")
#4:: setWallpaperWithIrfanView("C:\ForeverYours\Collections\Restored\PXL_20240311_144501302.NIGHT.jpg")
#5:: setSelectedPhotoAsWallpaper()
#6:: setOpenPhotoAsWallpaperInIrfanView()
#8:: updateTimeBasedWallpaper()
#9:: setRandomWallpaper("C:\ForeverYours\Collections\Wallpapers (Other)")
#0:: setRandomWallpaper("C:\ForeverYours\Collections\Wallpapers (Good Vibes)")

#c:: openCommandPrompt()
#m:: minimizeActiveWindow()
#p:: openControlPanelProgramsSection()
#t:: openTaskManager()
#z:: openTaskbarTray()

#[:: addTextToCMDSessions()
#,:: switchToLastApp()
#.:: switchBetweenVSCodeAndChrome()
#/:: switchBetweenActiveApps()

; Folders

CapsLock & F1:: openFolderInNewTab("C:\ForeverYours\Screenshots (Acer)\(" A_Year " - " Format("{:02}", A_Mon) ") " A_DD " " A_MMMM
)
CapsLock & F2:: openFolderInNewTab("D:\Screenshots\Screenshots (Pixel) (Temp)\(" A_Year " - " Format("{:02}", A_Mon) ") " A_DD " " A_MMMM
)
CapsLock & F3:: openFolderInNewTab("D:\Recordings\Recordings (Pixel) (Temp)")

CapsLock & 1:: openFolderInNewTab("D:\Devices\My Android\DCIM\Camera")
CapsLock & 2:: openFolderInNewTab("D:\Photos\Downloaded Photos")
CapsLock & 3:: openFolderInNewTab("D:\Photos\Instagram Downloads")
CapsLock & 4:: openFolderInNewTab("D:\Photos\Screen Recordings")
CapsLock & 5:: openFolderInNewTab("D:\Photos\Screenshots")
CapsLock & 6:: openFolderInNewTab("D:\Photos\Screenshots (Moments)")
CapsLock & 7:: openFolderInNewTab("D:\Photos\Snapshots")
CapsLock & 8:: openFolderInNewTab("D:\Photos\Twitter")
CapsLock & 9:: openFolderInNewTab("D:\Photos\YouTube Downloads")
CapsLock & 0:: openFolderInNewTab("D:\Photos\YouTube Downloads (Big)")
CapsLock & `:: openFolderInNewTab("C:\ForeverYours\Collections")
CapsLock & =:: openFolderInNewTab("D:\Photos\Profile Pictures (Random)")

CapsLock & a:: openFolderInNewTab("D:\Coding\Scripts\AutoHotKey")
CapsLock & b:: openFolderInNewTab("D:\Backups")
CapsLock & c:: openFolderInNewTab("D:\Coding")
CapsLock & d:: openFolderInNewTab("D:\")
CapsLock & f:: openFolderInNewTab("C:\ForeverYours")
CapsLock & h:: openFolderInNewTab("C:\Users\Hammad")
CapsLock & i:: openFolderInNewTab("C:\Users\Hammad\AppData")
CapsLock & j:: openFolderInNewTab("C:\ForeverYours\Downloads")
CapsLock & m:: openFolderInNewTab("D:\Music")
CapsLock & n:: openFolderInNewTab("D:\Other Stuff\Nope")
CapsLock & o:: openFolderInNewTab("D:\Devices\My Android")
CapsLock & p:: openFolderInNewTab("D:\Photos")
CapsLock & r:: openFolderInNewTab("C:\ForeverYours\Collections\Restored")
CapsLock & s:: openFolderInNewTab("C:\Users\Hammad\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup")
CapsLock & t:: openFolderInNewTab("D:\Movies and TV Shows\Good Stuff\Torrents")
CapsLock & u:: openFolderInNewTab("D:\Documents\Hammad")
CapsLock & w:: openFolderInNewTab("D:\Coding\Web Development")
CapsLock & x:: openFolderInNewTab("D:\Coding\Scripts")
CapsLock & y:: Run("D:\Apps\Shortcuts\Shortcuts\Recycle Bin")
CapsLock & z:: openFolderInNewTab("Z:\")

; Files

. & l:: openFile("D:\Apps\Files (InUse)\01. Lets Start.jpg")
. & k:: openFile("D:\Apps\Files (InUse)\02. Continue.jpg")
. & j:: openFile("D:\Apps\Files (InUse)\03. Khaana Done.jpg")
. & h:: openFile("D:\Apps\Files (InUse)\05. Chatt Te.jpg")
. & p:: openFile("D:\Photos\Downloaded Photos\islamic-family-tree.png")

; Apps

!F9:: openIDM()
!F10:: openVLC()
!3:: openMp3Tag()
!d:: openDiscordWebApp()
!e:: openEverything()
!g:: openGoodSync()
!i:: openInstagramWebApp()
!m:: openMediaPlayerApp()
!p:: openPlexWebApp()
!q:: openQBittorrent()
!w:: openWhyAhmadiWebApp()
!y:: openYouTubeWebApp()

; Force-close apps

^!a:: forceCloseAutoHotKey()
^!c:: forceCloseChrome()
^!e:: restartExplorer()
^!g:: forceCloseGoodSync()
^!p:: forceClosePowershell()
^!s:: forceCloseStartMenu()
^!v:: forceCloseVLC()
^!z:: restartDesktop()

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

; 05 Jul 2025
; CapsLock & e:: openFolderInNewTab("D:\Apps\Shortcuts\Applications")
; CapsLock & f:: openFolderInNewTab("C:\ForeverYours")
; CapsLock & g:: openFolderInNewTab("D:\Music\(Other)\Geet")
; CapsLock & i:: openFolderInNewTab("D:\Apps\[Server Apps]\immich-app")
; CapsLock & l:: openFolderInNewTab("D:\Photos\Screenshots (Moments)")
; CapsLock & v:: openFolderInNewTab("D:\Documents\Hammad")
; CapsLock & w:: openFolderInNewTab("D:\Photos\Camera (OnePlus) (Photos)")
; CapsLock & z:: openFolderInNewTab("D:\Coding\Test")
; CapsLock & [:: openDiary()
; CapsLock & ]:: openDiaryNope()
; CapsLock & 1:: openFolderInNewTab("M:\")
; CapsLock & 2:: openFolderInNewTab("N:\")

; 19 Jul 2025
; #!F1:: getFileModifiedTime("(yyyyMMdd-HHmmss)")
; #!F2:: getFileModifiedTime("(dd MMM yyyy)")
; #!F5:: runHotspotToggleScript()
; #!F6:: runHotspotToggleOnScript()
; #!F8:: runDownOnSpotForSpotifyScript()
; #!F9:: runUnifyForSpotifyScript()
; #!1:: setWallpaperWithIrfanView("C:\ForeverYours\Restored\IMG_20230122_085425.jpg")
; #!2:: setWallpaperWithIrfanView("C:\ForeverYours\Restored\IMG_20221216_133916~2.jpg")
; #!3:: setWallpaperWithIrfanView("C:\ForeverYours\Restored\img_20240904_165829.jpg")
; #!4:: setWallpaperWithIrfanView("C:\ForeverYours\Restored\PXL_20240311_144501302.NIGHT.jpg")
; #!5:: setSelectedPhotoAsWallpaper()
; #!6:: setRandomWallpaper("C:\ForeverYours\Restored")
; #!7:: updateTimeBasedWallpaper()

; 19 Jul 2025
; F11:: switchBetweenVSCodeAndChrome()
; Ins:: setOpenPhotoAsWallpaperInIrfanView()

; 19 Jul 2025
; #!F5:: runHotspotToggleScript()
; #!F6:: runHotspotToggleOnScript()

; 19 Jul 2025
; Home:: openNotepad()
; Home & RShift:: openFolderInNewTab("D:\Other Stuff\Nope")
; Home & PgUp:: addToDiary()
; Home & PgDn:: addToDiaryNope()
; Home & End:: addTextToCMDSessions()

; PgUp:: openRecentScreenshots()
; PgUp & RShift:: openFolderInNewTab("D:\Coding\Scripts\AutoHotKey")
; PgUp & [:: openFolderInNewTab("D:\Coding\Scripts\Scripts")
; PgUp & ]:: runScriptsRunnerScript()
; PgUp & ':: runUnifyForSpotifyScript()
; PgUp & \:: runUnifyForSpotifyScriptv2()

; PgDn:: openFolderInNewTab("C:\ForeverYours\Screenshots (Acer)\(" A_Year " - " Format("{:02}", A_Mon) ") " A_DD " " A_MMMM
; )
; PgDn & \:: moveSelectedScreenshots()
; PgDn & Enter:: openFolderInNewTab("D:\Screenshots\Screenshots (Acer)")
; PgDn & RShift:: openFolderInNewTab("D:\Photos\Screenshots\Screenshots (Moments) (Acer)")

; End:: closeActiveWindow()

; 24 Aug 2025

; ^PrintScreen:: openSnapTool()

; #F7:: runScriptsRunnerScript()
; #F8:: runDownOnSpotForSpotifyScript()
; #F9:: runUnifyForSpotifyScript()

; +PgUp:: deleteRecentScreenshot()
; +PgDn:: deleteSecondRecentScreenshot()

; #9:: setRandomWallpaper("C:\ForeverYours\Collections\Restored")

; #=:: addToDiary()
; #-:: addToDiaryNope()

; 08 Sep 2025

; CapsLock & -:: openFolderInNewTab("D:\Photos\Google Photos (Downloads)")

; 09 Sep 2025

; #Include "(M) Brightness.ahk"
; #Include "(O) youtube-dl.ahk"

; !o:: openOBSStudio()

; ---
