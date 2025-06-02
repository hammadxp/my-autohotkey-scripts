/*
  ShellRun by Lexikos
    requires: AutoHotkey_L
    license: http://creativecommons.org/publicdomain/zero/1.0/

  Credit for explaining this method goes to BrandonLive:
  http://brandonlive.com/2008/04/27/getting-the-shell-to-run-an-application-for-you-part-2-how/

  Shell.ShellExecute(File [, Arguments, Directory, Operation, Show])
  http://msdn.microsoft.com/en-us/library/windows/desktop/gg537745
*/
ShellRun(prms*) {
    shellWindows := ComObject("{9BA05972-F6A8-11CF-A442-00A0C90A8F39}")

    desktop := shellWindows.Item(ComObject(19, 8)) ; VT_UI4, SCW_DESKTOP

    ; Retrieve top-level browser object.
    if ptlb := ComObjQuery(desktop
        , "{4C96BE40-915C-11CF-99D3-00AA004AE837}"
        , "{000214E2-0000-0000-C000-000000000046}") {
        ; IShellBrowser.QueryActiveShellView -> IShellView
        if DllCall(NumGet(NumGet(ptlb + 0, "UPtr") + 15 * A_PtrSize, "UPtr"), "ptr", ptlb, "ptr*", &psv := 0) = 0 {
            ; Define IID_IDispatch.
            VarSetStrCapacity(&IID_IDispatch, 16) ; V1toV2: if 'IID_IDispatch' is NOT a UTF-16 string, use 'IID_IDispatch := Buffer(16)' and replace all instances of 'StrPtr(IID_IDispatch)' with 'IID_IDispatch.Ptr'
            NumPut("int64", 0x20400,
                "int64", 0x46000000000000C0,
                IID_IDispatch)

            ; IShellView.GetItemObject -> IDispatch (object which implements IShellFolderViewDual)
            DllCall(NumGet(NumGet(psv + 0, "UPtr") + 15 * A_PtrSize, "UPtr"), "ptr", psv
            , "uint", 0, "ptr", StrPtr(IID_IDispatch), "ptr*", &pdisp := 0)

            ; Get Shell object.
            shell := ComObject("Shell.Application")

            ; IShellDispatch2.ShellExecute
            shell.ShellExecute(prms*)

            ObjRelease(psv)
        }
        ObjRelease(ptlb)
    }
}
