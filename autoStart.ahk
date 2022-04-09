#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.

SetWorkingDir, %A_ScriptDir%
#Include %A_ScriptDir%\configs\komorebi.ahk




; hide desktop icons

!^p::
IfWinActive ahk_class WorkerW
{
ControlGet, HWND, Hwnd,, SysListView321, ahk_class Progman
If HWND =
ControlGet, HWND, Hwnd,, SysListView321, ahk_class WorkerW
If DllCall("IsWindowVisible", UInt, HWND)
WinHide, ahk_id %HWND%
Else
WinShow, ahk_id %HWND%
Return
}
return


; next wallpaper shortcut

!^o::
IfWinActive ahk_class WorkerW
{
Run , D:\Program Files\Steam\steamapps\common\wallpaper_engine\wallpaper32.exe -control nextWallpaper, , Hide
Return
}
return


; toggle transparecy of a window

#^Esc::
    WinGet, CurrentTLevel, Transparent, A
    If (CurrentTLevel = OFF) {
        WinSet, Transparent, 245, A
    } Else {
        WinSet, Transparent, OFF, A
    }
return

; default transperency level
TLevel = 180


; set transparency function
 SetTransparency:
    WinGet, CurrentTLevel, Transparent, A
    WinSet, Transparent, %TLevel%, A
return


; increase transparecy
#^=::
    TLevel += 10
    If TLevel >= 255
    {
        TLevel = 255
    }
    
    Gosub, SetTransparency
return

; decrease transparecy

#^-::
    TLevel -= 10
    If TLevel <= 0
    {
        TLevel = 0
    }
    
    Gosub, SetTransparency
return


!^m::Run, sndvol


; horizontal scrolling
!WheelDown::WheelRight
!WheelUp::WheelLeft


