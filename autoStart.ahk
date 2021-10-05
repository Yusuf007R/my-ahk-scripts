#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
#Include lib\AHK-Virtual-Desktop-Library\Main.ahk



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

;always on top

#^SPACE::  Winset, Alwaysontop, , A


; move between virtual desktops

!1::GoToDesktop(1)
!2::GoToDesktop(2)
!3::GoToDesktop(3)
!4::GoToDesktop(4)
!5::GoToDesktop(5)
!6::GoToDesktop(6)
!7::GoToDesktop(7)
!8::GoToDesktop(8)
!9::GoToDesktop(9)

; move windows between virtual desktops

!+1::MoveCurrentWindowToDesktop(1)
!+2::MoveCurrentWindowToDesktop(2)
!+3::MoveCurrentWindowToDesktop(3)
!+4::MoveCurrentWindowToDesktop(4)
!+5::MoveCurrentWindowToDesktop(5)
!+6::MoveCurrentWindowToDesktop(6)
!+7::MoveCurrentWindowToDesktop(7)
!+8::MoveCurrentWindowToDesktop(8)
!+9::MoveCurrentWindowToDesktop(9)

; open and close desktop manager

!^e::DesktopManager() 