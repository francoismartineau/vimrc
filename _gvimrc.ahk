#UseHook
#NoTrayIcon
#MaxHotkeysPerInterval 1000
Gui,+ToolWindow

#IfWinActive, ahk_class Vim
{
    
    ; Insert line                               SHIFT + INSERT
    +Ins::Send {Escape}o

    ;-- DELETES -------------------------------------------------------------------
    ; Delete until start of line                CTRL + SHIFT + LEFT
    ^+Left::Send {Escape}d0i
    ; Delete until end of line                  CTRL + SHIFT + RIGHT
    ^+Right::Send {Escape}d$i
    ; Delete current and upper line             CTRL + SHIFT + UP
    ^+Up::Send {Escape}d{Up}i{Up}
    ; Delete current and lower line             CTRL + SHIFT + DOWN
    ^+Down::Send {Escape}d{Down}i
    ; Delete current line                       CTRL + DELETE
    +del::Send {Escape}dda
    ; Delete previous word                      ALT + LEFT
    !Left::Send {Escape}bvwdi
    ; Delete next word                          ALT + RIGHT
    !Right::Send {Escape}wdwa{Backspace}

    ;-- BUFFERS -------------------------------------------------------------------
    ; Consult previous open file                CTRL + ALT + LEFT
    ^!Left::Send {Escape}:w{Enter}:bp{Enter}
    ; Consult next open file                    CTRL + ALT + RIGHT
    ^!Right::Send {Escape}:w{Enter}:bn{Enter}
    ; Close current open file                   CTRL + ALT + DOWN
    ^!Down::Send {Escape}:bd{Enter}
    ; Open new empty buffer                     CTRL + ALT + UP
    ^!Up::Send {Escape}:w{Enter}:enew{Enter}       
    ; Inspect buffers                           CTRL + ALT + SHIFT + UP
    ^!+Up::Send {Escape}:w{Enter}:buffers{Enter}



    ;-- SCROLL SPEED --------------------------------------------------------------
    WheelUp::
        Send {Up}
        Sleep, 5
        return
    WheelDown::
        Send {Down}
        Sleep, 5
        return

}

