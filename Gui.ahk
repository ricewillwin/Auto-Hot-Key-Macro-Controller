#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%



; Variables
;
;
title := "Macro Controller"

fileName := "data"
file := FileOpen(fileName, "rw`n")
keyboardName := "Main.ahk"
keyboardLen := 0 
keyboard := FileOpen(keyboardName, "rw`n")

file.Seek(0, Origin := 0)
mainX := file.ReadLine()
mainY := file.ReadLine()
StringReplace, mainX, mainX, `n,,,A
StringReplace, mainY, mainY, `n,,,A
width := 1000
height := 600
buttonSize := 50
key := "`;H"
showKeyboard := 1
defaultText := "Run`, Notepad`nSleep 100`nSend`, So long and thanks for all the fish"
mainText := "Hello and welcome"



; GUI Layout
;
;
Gui, Primary:Color, White

file.Seek(StrLen(mainX)+2)
tempVar := file.ReadLine()

Gui, Primary:Add, Text,, %mainText%
Gui, Primary:Add, Button, x10 y+ w90 h100, Page 1
Gui, Primary:Add, Button, x10 y+ w90 h100 gPage2, Page 2

    ; Adding The Keyboard
Gui, Primary:Add, GroupBox, y10 Section w770 h280, Keyboard

    ; First Row Keys
Gui, Primary:Add, Button, xs10 ys20 w%buttonSize% h%buttonSize% gOpen_Menu, ``
Gui, Primary:Add, Button, x+ w%buttonSize% h%buttonSize% gOpen_Menu, 1
Gui, Primary:Add, Button, x+ w%buttonSize% h%buttonSize% gOpen_Menu, 2
Gui, Primary:Add, Button, x+ w%buttonSize% h%buttonSize% gOpen_Menu, 3
Gui, Primary:Add, Button, x+ w%buttonSize% h%buttonSize% gOpen_Menu, 4
Gui, Primary:Add, Button, x+ w%buttonSize% h%buttonSize% gOpen_Menu, 5
Gui, Primary:Add, Button, x+ w%buttonSize% h%buttonSize% gOpen_Menu, 6
Gui, Primary:Add, Button, x+ w%buttonSize% h%buttonSize% gOpen_Menu, 7
Gui, Primary:Add, Button, x+ w%buttonSize% h%buttonSize% gOpen_Menu, 8
Gui, Primary:Add, Button, x+ w%buttonSize% h%buttonSize% gOpen_Menu, 9
Gui, Primary:Add, Button, x+ w%buttonSize% h%buttonSize% gOpen_Menu, 0
Gui, Primary:Add, Button, x+ w%buttonSize% h%buttonSize% gOpen_Menu, -
Gui, Primary:Add, Button, x+ w%buttonSize% h%buttonSize% gOpen_Menu, +
modSize := buttonSize * 2
Gui, Primary:Add, Button, x+ w%modSize% h%buttonSize% gOpen_Menu_2, _Backspace


    ; Second Row Keys
modSize := buttonSize * 1.5
Gui, Primary:Add, Button, xs10 y+ w%modSize% h%buttonSize% gOpen_Menu_2, _Tab
Gui, Primary:Add, Button, x+ w%buttonSize% h%buttonSize% gOpen_Menu, Q
Gui, Primary:Add, Button, x+ w%buttonSize% h%buttonSize% gOpen_Menu, W
Gui, Primary:Add, Button, x+ w%buttonSize% h%buttonSize% gOpen_Menu, E
Gui, Primary:Add, Button, x+ w%buttonSize% h%buttonSize% gOpen_Menu, R
Gui, Primary:Add, Button, x+ w%buttonSize% h%buttonSize% gOpen_Menu, T
Gui, Primary:Add, Button, x+ w%buttonSize% h%buttonSize% gOpen_Menu, Y
Gui, Primary:Add, Button, x+ w%buttonSize% h%buttonSize% gOpen_Menu, U
Gui, Primary:Add, Button, x+ w%buttonSize% h%buttonSize% gOpen_Menu, I
Gui, Primary:Add, Button, x+ w%buttonSize% h%buttonSize% gOpen_Menu, O
Gui, Primary:Add, Button, x+ w%buttonSize% h%buttonSize% gOpen_Menu, P
Gui, Primary:Add, Button, x+ w%buttonSize% h%buttonSize% gOpen_Menu, [
Gui, Primary:Add, Button, x+ w%buttonSize% h%buttonSize% gOpen_Menu, ]
modSize := buttonSize * 1.5
Gui, Primary:Add, Button, x+ w%modSize% h%buttonSize% gOpen_Menu, \

    ; Third Row Keys
modSize := buttonSize * 1.8
Gui, Primary:Add, Button, xs10 y+ w%modSize% h%buttonSize% gOpen_Menu_2 vCapsLock, _CapsLock
GuiControl, Disable, CapsLock
Gui, Primary:Add, Button, x+ w%buttonSize% h%buttonSize% gOpen_Menu, A
Gui, Primary:Add, Button, x+ w%buttonSize% h%buttonSize% gOpen_Menu, S
Gui, Primary:Add, Button, x+ w%buttonSize% h%buttonSize% gOpen_Menu, D
Gui, Primary:Add, Button, x+ w%buttonSize% h%buttonSize% gOpen_Menu, F
Gui, Primary:Add, Button, x+ w%buttonSize% h%buttonSize% gOpen_Menu, G
Gui, Primary:Add, Button, x+ w%buttonSize% h%buttonSize% gOpen_Menu, H
Gui, Primary:Add, Button, x+ w%buttonSize% h%buttonSize% gOpen_Menu, J
Gui, Primary:Add, Button, x+ w%buttonSize% h%buttonSize% gOpen_Menu, K
Gui, Primary:Add, Button, x+ w%buttonSize% h%buttonSize% gOpen_Menu, L
Gui, Primary:Add, Button, x+ w%buttonSize% h%buttonSize% gOpen_Menu, `;
Gui, Primary:Add, Button, x+ w%buttonSize% h%buttonSize% gOpen_Menu, `'
modSize := buttonSize * 2.2
Gui, Primary:Add, Button, x+ w%modSize% h%buttonSize% gOpen_Menu_2, _Enter

    ; Fourth Row Keys
modSize := buttonSize * 2
Gui, Primary:Add, Button, xs10 y+ w%modSize% h%buttonSize% gOpen_Menu_2, _Shift
Gui, Primary:Add, Button, x+ w%buttonSize% h%buttonSize% gOpen_Menu, Z
Gui, Primary:Add, Button, x+ w%buttonSize% h%buttonSize% gOpen_Menu, X
Gui, Primary:Add, Button, x+ w%buttonSize% h%buttonSize% gOpen_Menu, C
Gui, Primary:Add, Button, x+ w%buttonSize% h%buttonSize% gOpen_Menu, V
Gui, Primary:Add, Button, x+ w%buttonSize% h%buttonSize% gOpen_Menu, B
Gui, Primary:Add, Button, x+ w%buttonSize% h%buttonSize% gOpen_Menu, N
Gui, Primary:Add, Button, x+ w%buttonSize% h%buttonSize% gOpen_Menu, M
Gui, Primary:Add, Button, x+ w%buttonSize% h%buttonSize% gOpen_Menu, ,
Gui, Primary:Add, Button, x+ w%buttonSize% h%buttonSize% gOpen_Menu, .
Gui, Primary:Add, Button, x+ w%buttonSize% h%buttonSize% gOpen_Menu, /
modSize := buttonSize * 3
Gui, Primary:Add, Button, x+ w%modSize% h%buttonSize% gOpen_Menu_2, _Shift

    ; Fifth Row Keys
modSize := buttonSize * 1.1
Gui, Primary:Add, Button, xs10 y+ w%modSize% h%buttonSize% gOpen_Menu_2, _Ctrl
Gui, Primary:Add, Button, x+ w%modSize% h%buttonSize% gOpen_Menu_2 vFunc, _Func
GuiControl, Disable, Func
Gui, Primary:Add, Button, x+ w%modSize% h%buttonSize% gOpen_Menu_2 vWin, _Win
GuiControl, Disable, Win
Gui, Primary:Add, Button, x+ w%modSize% h%buttonSize% gOpen_Menu_2, _Alt
modSize := buttonSize * 6
Gui, Primary:Add, Button, x+ w%modSize% h%buttonSize% gOpen_Menu_2, _Space
modSize := buttonSize * 1.1
Gui, Primary:Add, Button, x+ w%modSize% h%buttonSize% gOpen_Menu_2, _Alt
Gui, Primary:Add, Button, x+ w%modSize% h%buttonSize% gOpen_Menu_2, _Insert
Gui, Primary:Add, Button, x+ w%modSize% h%buttonSize% gOpen_Menu_2, _Ctrl

Gui, Primary:Show, x%mainX% y%mainY% w%width% h%height%, %title%





Gui, Page2:Color, White
Gui, Page2:+LastFound +OwnerPrimary
Gui, Page2:Add, Text,, %mainText%
Gui, Page2:Add, Button, x10 y+ w90 h100 gPage1, Page 1
Gui, Page2:Add, Button, x10 y+ w90 h100, Page 2

return



; Lables
;
;
Page1:
    
    WinGetPos, X1, Y1, W1, H1, A

    Gui, Primary:Show, % "x" X1 "y" Y1 "w" width "h" height, %title%
    Gui, Primary:+LastFound
    Gui, Page2:Hide

    return


Page2:
    
    WinGetPos, X1, Y1, W1, H1, A

    Gui, Page2:Show, % "x" X1 "y" Y1 "w" width "h" height, Page 2
    Gui, Page2:+LastFound
    Gui, Primary:Hide

    return

Open_Menu:

    GuiControlGet, var,, % A_GuiControl
    keyLetter := SubStr(var, 0)
    key := "`;"
    key .= keyLetter
    Gosub, Get_Command
    Gui, KeyGui:Destroy

    WinGetPos, X1, Y1,,, A
    Gui, KeyGui:+LastFound +ToolWindow +AlwaysOnTop +OwnerPrimary
    Gui, KeyGui:Add, Edit, Multi vCommandBox w200 h100, %defaultText%
    Gui, KeyGui:Add, Button, x10 w100 h40 gSet_Key, Set %var%
    Gui, KeyGui:Add, Button, x+ w100 h40 gSet_Key, Reset %var%
    Gui, KeyGui:Show, % "x" X1 + width/2-100 "y" Y1 + 25, %var%

    return

Open_Menu_2:

    GuiControlGet, var,, % A_GuiControl
    key := "`;"
    key .= var
    Gosub, Get_Command
    Gui, KeyGui:Destroy

    var := SubStr(var, 2v )

    WinGetPos, X1, Y1,,, A
    Gui, KeyGui:+LastFound +ToolWindow +AlwaysOnTop +OwnerPrimary
    Gui, KeyGui:Add, Edit, Multi vCommandBox w200 h100, %defaultText%
    Gui, KeyGui:Add, Button, x10 w100 h40 gSet_Key, Set %var%
    Gui, KeyGui:Add, Button, x+ w100 h40 gSet_Key, Reset %var%
    Gui, KeyGui:Show, % "x" X1 + width/2-100 "y" Y1 + 25, %var%

    return

Set_Key:
    
    IfInString, var, Reset
    {
        Gosub, Reset_Button
    }
    
    else
    {
        Gosub, Set_Button
    }

    return

Set_Button:

    Gosub, Reset_Button
    Sleep 100
    keyboardLen := keyboard.Length
    output := ""
    keyboard.Seek(0)
    i := 0
    while (i < keyboardLen) {

        Line := keyboard.ReadLine()
        StringReplace, Line, Line, `n,,,A

        IfInString, Line, %key%
        {
            output .= Line . "`n"
            i += Line.Length
            Line := keyboard.ReadLine()
            StringReplace, Line, Line, `n,,,A
            output .= Line . "`n"
            i += Line.Length
            GuiControlGet, Line,, CommandBox
            StringReplace, Linetemp, Line, `n, `n`t`t`t, All]
            Line := "`t`t`t"
            Line .= Linetemp
        }

        output .= Line . "`n"
        i += Line.Length

        isAtEOF := keyboard.AtEOF
        if (isAtEOF != 0) {
            Break
        }

    }

    FileDelete, Main.ahk
    FileAppend, %output%, Main.ahk
    
    keyboard := FileOpen(keyboardName, "rw`n")

    Run Main.ahk
    return

Reset_Button:

    keyboardLen := keyboard.Length

    output := ""
    keyboard.Seek(0)
    i := 0
    while (i < keyboardLen) {

        Line := keyboard.ReadLine()
        StringReplace, Line, Line, `n,,,A

        IfInString, Line, %key%
        {
            msgbox Working
            output .= Line . "`n"
            i += Line.Length
            Line := keyboard.ReadLine()
            StringReplace, Line, Line, `n,,,A
            output .= Line . "`n"
            i += Line.Length
            boolVar := 0
            while boolVar = 0 {
                Line := keyboard.ReadLine()
                StringReplace, Line, Line, `n,,,A
                IfInString, Line, }
                {
                    break
                }
                i += Line.Length
            }
        }

        output .= Line . "`n"
        i += Line.Length

        isAtEOF := keyboard.AtEOF
        if (isAtEOF != 0) {
            Break
        }

    }

    FileDelete, Main.ahk
    FileAppend, %output%, Main.ahk
    
    keyboard := FileOpen(keyboardName, "rw`n")

    Run Main.ahk
    return

Get_Command:

    keyboardLen := keyboard.Length

    output := ""
    keyboard.Seek(0)
    i := 0
    while (i < keyboardLen) 
    {

        Line := keyboard.ReadLine()
        StringReplace, Line, Line, `n,,,A

        IfInString, Line, %key%
        {
            i += Line.Length
            Line := keyboard.ReadLine()
            i += Line.Length
            boolVar := 0
            while boolVar = 0 
            {
                Line := keyboard.ReadLine()
                StringReplace, Line, Line, `n,,,A
                StringReplace, Line, Line, `t,,,A
                IfInString, Line, }
                {
                    break
                }
                output .= Line . "`n"
                i += Line.Length
            }
        }

        i += Line.Length

        isAtEOF := keyboard.AtEOF
        if (isAtEOF != 0) 
        {
            Break
        }

    }

    if (output != "")
    {
        defaultText := SubStr(output, 1, -1)
    }
    else
    {
        defaultText := "Run`, Notepad`nSleep 100`nSend`, So long and thanks for all the fish"
    }

    return



; Functions
;
;
PrimaryGuiClose:
    file.Length := 0

    Gui, Primary:+LastFound
    
    WinGetPos,x,y

    file.Seek(0, Origin := 0)

    file.WriteLine(x)
    file.WriteLine(y)
    file.WriteLine(keyboardLen)
    file.WriteLine(temps)

    Texts := file.Read()
    file.Close()
    keyboard.Close()
    
    ExitApp
    return

2GuiClose:

    Gui 2:Destroy
    
    return

Page2GuiClose:

    Gosub, PrimaryGuiClose

    return



; Hotkeys
;
;
