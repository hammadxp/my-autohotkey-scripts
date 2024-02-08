; Code: 1

GroupAdd, vGroupFolder, ahk_class CabinetWClass
GroupAdd, vGroupFolder, ahk_class ExploreWClass

#IfWinActive, ahk_group vGroupFolder
+Enter::


WinGet, hWnd, ID, A
WinGetClass, vWinClass, ahk_id %hWnd%
if vWinClass not in CabinetWClass,ExploreWClass
Return


vList := ""
VarSetCapacity(vList, 1000000*2)
for oWin in ComObjCreate("Shell.Application").Windows
if (oWin.HWND = hWnd)
{
for oItem in oWin.Document.SelectedItems
vList .= oItem.path "`n"
oItem := ""
break
}
oWin := ""


; ---


; Move To (Normal)

if A_ThisHotkey contains +Enter
{
vDir1 = D:\Screenshots\Screenshots\Screenshots (Done)

Loop, Parse, vList, `n
{
vPath1 := A_LoopField
if (vPath1 = "")
continue
SplitPath, vPath1, vName1
FileMove, %vPath1%, %vDir1%\%vName1%
}
IfNotExist, %vDir1%
MsgBox % "Folder does not exist"
}

;---
