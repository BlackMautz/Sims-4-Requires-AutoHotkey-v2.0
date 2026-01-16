#Requires AutoHotkey v2.0
#SingleInstance Force
#UseHook
SendMode("Event")
SetKeyDelay(30, 30)

global lastWW := 0

IsSimsActive() {
    ; matcht TS4_x64.exe / TS4_DX9_x64.exe / TS4.exe automatisch
    try {
        return InStr(WinGetProcessName("A"), "TS4", true)
    } catch {
        return false
    }
}

Show(msg) {
    ToolTip(msg, 10, 10)
    SetTimer(() => ToolTip(), -700)
}

RunWWProgress() {
    global lastWW
    if (A_TickCount - lastWW) < 350
        return
    lastWW := A_TickCount

    Show("WW: next animation (progress)")

    ; Clipboard sichern
    clipSaved := A_Clipboard
    
    try {
        ; Konsole öffnen -> Command einfügen -> Enter -> Konsole schließen
        SendEvent("^+c")
        Sleep(220)

        SendEvent("^a")
        Sleep(30)
        SendEvent("{Backspace}")
        Sleep(30)

        ; Stabil: per Clipboard einfügen
        A_Clipboard := "ww.progress_sex"
        if !ClipWait(0.3) {
            Show("WW: Clipboard error!")
            return
        }
        
        SendEvent("^v")
        Sleep(60)
        SendEvent("{Enter}")
        Sleep(150)
        SendEvent("{Esc}")
    } catch Error as err {
        Show("WW: Error - " err.Message)
    } finally {
        ; Clipboard immer wiederherstellen
        A_Clipboard := clipSaved
    }
}

; ---- Nur in Sims 4 aktiv ----
#HotIf IsSimsActive()

; ^ = Pause
SC029::{
    SendEvent("{sc00B}") ; 0
    Show("Time: PAUSE")
}

; F = WW nächste Animation
*F::RunWWProgress()

; Extra: F10 macht das gleiche
F10::RunWWProgress()

#HotIf
