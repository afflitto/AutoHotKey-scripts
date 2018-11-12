; chrome duplicate tab
#IfWinActive, ahk_exe chrome.exe
    ^d::
    Send ^k
    Send {Escape}
    Send ^c^t^v
    Send {Enter}
    return
#ifwinactive

; surface pen eraser button alt-tab:
; single press
<#F20::Send {Alt down}{Tab}{Alt up} ;Alt tab normally
!<#F20::Send {Tab} ;If alt is being held down, just press Tab

; double press
!<#F19::Send {Shift down}{Tab}{Shift up}

; long press
<#F18::Send {Alt down}{Tab} ;open alt-tab menu
!<#F18::Send {Alt up} ;close alt-tab menu
