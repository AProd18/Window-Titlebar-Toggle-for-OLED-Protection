#Requires AutoHotkey v2.0

F9::
{
    hwnd := WinExist("A")
    style := WinGetStyle("ahk_id " hwnd)

    if (style & 0xC00000)
    {
        ; hide
        WinSetStyle("-0xC00000", "ahk_id " hwnd)
        WinSetStyle("-0x40000", "ahk_id " hwnd)
    }
    else
    {
        ; show
        WinSetStyle("+0xC00000", "ahk_id " hwnd)
        WinSetStyle("+0x40000", "ahk_id " hwnd)
    }
}