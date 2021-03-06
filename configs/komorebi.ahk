
; ---------------------------------------------------------------------------------
; Main Komorebi Configuration
; ---------------------------------------------------------------------------------
;
#SingleInstance force                     ; Force only a single instance running, so you don't get hotkey conflicts
#NoEnv                                    ; Recommended for performance and compatibility with future AutoHotkey releases.

; Komorebic Library
SetWorkingDir, %A_ScriptDir%
#Include %A_ScriptDir%\configs\komorebi.lib.ahk

; Workspace Configuration
#Include %A_ScriptDir%\configs\komorebi.workspaces.ahk

; Generated Application Rules
#Include %A_ScriptDir%\configs\komorebi.generated.ahk

; Keyboard Commands
#Include %A_ScriptDir%\configs\komorebi.keyboardshortcuts.ahk

; ---------------------------------------------------------------------------------
; Behavior Configuration
; ---------------------------------------------------------------------------------

; Set the resize delta - increase/decrease to adjust how much each resize command modifies
ResizeDelta(50)

; Configure the invisible border dimensions
InvisibleBorders(0, 0, 0, 0)

; Default to minimizing windows when switching workspaces
WindowHidingBehaviour("minimize")

; Enable hot reloading of changes to this file
WatchConfiguration("enable")

; Mouse follows focus
ToggleMouseFollowsFocus()
