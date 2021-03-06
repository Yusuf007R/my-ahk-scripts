; Generated by komorebic.exe
; To use this file, add the line below to the top of your komorebi.ahk configuration file
; #Include %A_ScriptDir%\komorebi.generated.ahk

; AutoHotKey
; If you have disabled minimize/close to tray for this application, you can delete/comment out the next line
Run, komorebic.exe identify-tray-application exe AutoHotkeyU64.exe, , Hide
; Target AutoHotKey's Window Spy pop-up
Run, komorebic.exe float-rule title Window Spy, , Hide

; Beeper
Run, komorebic.exe identify-border-overflow-application exe Beeper.exe, , Hide
; If you have disabled minimize/close to tray for this application, you can delete/comment out the next line
Run, komorebic.exe identify-tray-application exe Beeper.exe, , Hide

; Calculator
Run, komorebic.exe float-rule title Calculator, , Hide

; Discord
Run, komorebic.exe identify-border-overflow-application exe Discord.exe, , Hide
; If you have disabled minimize/close to tray for this application, you can delete/comment out the next line
Run, komorebic.exe identify-tray-application exe Discord.exe, , Hide

; Google Chrome
; If you have disabled minimize/close to tray for this application, you can delete/comment out the next line
Run, komorebic.exe identify-tray-application exe chrome.exe, , Hide

; IntelliJ IDEA
Run, komorebic.exe identify-object-name-change-application exe idea64.exe, , Hide
; If you have disabled minimize/close to tray for this application, you can delete/comment out the next line
Run, komorebic.exe identify-tray-application exe idea64.exe, , Hide
; Targets JetBrains IDE popups and floating windows
Run, komorebic.exe float-rule class SunAwtDialog, , Hide

; Microsoft Excel
Run, komorebic.exe identify-border-overflow-application exe EXCEL.EXE, , Hide
Run, komorebic.exe identify-layered-application exe EXCEL.EXE, , Hide
; Targets a hidden window spawned by Microsoft Office applications
Run, komorebic.exe float-rule class _WwB, , Hide

; Microsoft Teams
; Target Teams pop-up notification windows
Run, komorebic.exe float-rule title Microsoft Teams Notifications, , Hide

; Microsoft Word
Run, komorebic.exe identify-border-overflow-application exe WINWORD.EXE, , Hide
Run, komorebic.exe identify-layered-application exe WINWORD.EXE, , Hide

; Mozilla Firefox
Run, komorebic.exe identify-object-name-change-application exe firefox.exe, , Hide
; If you have disabled minimize/close to tray for this application, you can delete/comment out the next line
Run, komorebic.exe identify-tray-application exe firefox.exe, , Hide

; Obsidian
Run, komorebic.exe identify-border-overflow-application exe Obsidian.exe, , Hide
Run, komorebic.exe manage-rule exe Obsidian.exe, , Hide

; PyCharm
Run, komorebic.exe identify-object-name-change-application exe pycharm64.exe, , Hide
; If you have disabled minimize/close to tray for this application, you can delete/comment out the next line
Run, komorebic.exe identify-tray-application exe pycharm64.exe, , Hide

; QuickLook
Run, komorebic.exe float-rule exe QuickLook.exe, , Hide

; RoundedTB
; If you have disabled minimize/close to tray for this application, you can delete/comment out the next line
Run, komorebic.exe identify-tray-application exe RoundedTB.exe, , Hide

; Slack
Run, komorebic.exe identify-border-overflow-application exe slack.exe, , Hide
Run, komorebic.exe manage-rule exe slack.exe, , Hide
; If you have disabled minimize/close to tray for this application, you can delete/comment out the next line
Run, komorebic.exe identify-tray-application exe slack.exe, , Hide

; Spotify
Run, komorebic.exe identify-border-overflow-application exe Spotify.exe, , Hide
; If you have disabled minimize/close to tray for this application, you can delete/comment out the next line
Run, komorebic.exe identify-tray-application exe Spotify.exe, , Hide

; TouchCursor
; If you have disabled minimize/close to tray for this application, you can delete/comment out the next line
Run, komorebic.exe identify-tray-application exe tcconfig.exe, , Hide
Run, komorebic.exe float-rule exe tcconfig.exe, , Hide

; TranslucentTB
; If you have disabled minimize/close to tray for this application, you can delete/comment out the next line
Run, komorebic.exe identify-tray-application exe TranslucentTB.exe, , Hide
