#Requires AutoHotkey v2.0
#SingleInstance Force
#UseHook

; Alt+F4 blockiert – außer wenn F12 gedrückt ist
*!F4::{
    if GetKeyState("F12", "P") {
        SoundBeep 900, 80
        TrayTip "Alt+F4 erlaubt", "F12 gehalten: Fenster wird geschlossen.", 2

        ; Hotkey kurz aus, sonst fängt er sich selbst wieder
        Hotkey("*!F4", "Off")
        Send("!{F4}")
        Hotkey("*!F4", "On")
    } else {
        SoundBeep 1500, 80
        TrayTip "Alt+F4 blockiert", "Zum Schließen: F12 halten + Alt+F4.", 2
    }
    Return
}
