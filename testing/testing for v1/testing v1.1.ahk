#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%

DetectHiddenWindows, On
DetectHiddenText, On

^!p::
{
    winget, handle, ID, ahk_exe chrome.exe
    ; winget, handle_class, ahk_class, ahk_exe chrome.exe
    ; msgbox % %handle_class%

    handle_class := wingetclass("chrome.exe")
    msgbox % %handle_class%
}