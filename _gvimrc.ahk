#UseHook
#NoTrayIcon
#MaxHotkeysPerInterval 1000
Gui,+ToolWindow

#IfWinActive, ahk_class Vim
{
    
    ; Insert line                               SHIFT + INSERT
    +Ins::Send {Escape}o

    ;-- DELETES -------------------------------------------------------------------
    ; Delete until start of line                CTRL + SHIFT + LEFT     conflict
    ;^+Left::Send {Escape}d0i                                         
    ; Delete until end of line                  CTRL + SHIFT + RIGHT    conflict
    ;^+Right::Send {Escape}d$i                                          
    ; Delete current and upper line             CTRL + SHIFT + UP       conflict
    ;^+Up::Send {Escape}d{Up}i{Up}
    ; Delete current and lower line             CTRL + SHIFT + DOWN     conflict
    ;^+Down::Send {Escape}d{Down}i
    ; Delete current line                       CTRL + DELETE
    +del::Send {Escape}dda
    ; Delete previous word                      ALT + LEFT
    !Left::Send {Escape}bvwdi
    ; Delete next word                          ALT + RIGHT
    !Right::Send {Escape}wdwa{Backspace}




    ;-- BUFFERS -------------------------------------------------------------------
    ; Open new empty buffer                     CTRL + SHIFT + UP
    ^+Up::Send {Escape}:w{Enter}:enew{Enter}       
    ; Consult previous buffer                   CTRL + SHIFT + LEFT
    ^+Left::Send {Escape}:w{Enter}:bp{Enter}
    ; Consult next buffer                       CTRL + SHIFT + RIGHT
    ^+Right::Send {Escape}:w{Enter}:bn{Enter}
    ; Close current open file                   CTRL + SHIFT + DOWN
    ^+Down::Send {Escape}:bd{Enter}
    ; Inspect buffers                           CTRL + ALT + SHIFT + UP
    ^!+Up::Send {Escape}:w{Enter}:buffers{Enter}
    

    ;-- SPLIT SCREEN --------------------------------------------------------------
    ; Vertical split                            CTRL + ALT + UP
    ^!Up::Send {Escape}:w{Enter}:vsplit{Enter}
    ; Edit left split                           CTRL + ALT + LEFT
    ^!Left::Send {Escape}:w{Enter}:wincmd h{Enter}     
    ; Edit right split                          CTRL + ALT + RIGHT
    ^!Right::Send {Escape}:w{Enter}:wincmd l{Enter}     
    ; Stop vertical split                       CTRL + ALT + DOWN
    ^!Down::Send {Escape}:w{Enter}:on{Enter}           
    
    
    

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
#IfWinActive
