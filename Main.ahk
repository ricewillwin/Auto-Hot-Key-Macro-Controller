#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
SetTitleMatchMode, RegEx
#SingleInstance Force

Main_Keys := {"0": "48", "1": "49", "2": "50", "3": "51", "4": "52"
        ,"5": "53", "6": "54","7": "55", "8": "56", "9": "57", "q": "81"
        , "w": "87", "e": "69", "r": "82", "t": "84", "y": "89", "u": "85"
        , "i": "73", "o": "79", "p": "80", "å": "221", "a": "65", "s": "83"
        , "d": "68", "f": "70", "g": "71", "h": "72", "j": "74", "k": "75"
        , "i": "76", "æ": "192", "ø": "222", "z": "90", "x": "88", "c": "67"
        , "v": "86", "b": "66", "n": "78", "m": "77", "`": "192", "-": "189"
        , "+": "187", "Backspace": "8", "Tab": "9", "[": "219", "]": "221"
        , "\": "220"}

Numpad := {"numlock": "144", "/": "111", "*": "106", "-": "109"
            , "7": "36", "8": "38", "9": "33", "+": "107"
            , "4": "37", "5": "12", "6": "39"
            , "1": "35", "2": "40", "3": "34"
            , "0": "45", "del": "46"}

Page := 0
SetStoreCapsLockMode Off

Slide()

f24::

    FileRead, Output, key.txt

    if (Output == Numpad["del"]) {
        Slide()
    }
    else if (Output == Numpad["0"]) {
        Page := 0
        Blink(1)
    }
    else if (Output == Numpad["1"]) {
        Page := 1
        Blink(1)
    }
    else if (Output == Numpad["2"]) {
        Page := 2
        Blink(2)
    }
    else if (Output == Numpad["3"]) {
        Page := 3
        Blink(3)
    }
    else if (Output == Numpad["4"]) {
        Page := 4
        Blink(4)
    }

    if (Page == 0) {

        ;`
        if (Output == Main_Keys["`"]) {
        }

        ;1
        else if (Output == Main_Keys["1"]) {
        }
        
        ;2
        else if (Output == Main_Keys["2"]) {
        }

        ;3
        else if (Output == Main_Keys["3"]) {
        }

        ;4
        else if (Output == Main_Keys["4"]) {
        }

        ;5
        else if (Output == Main_Keys["5"]) {
        }
        
        ;6
        else if (Output == Main_Keys["6"]) {
        }

        ;7
        else if (Output == Main_Keys["7"]) {
        }

        ;8
        else if (Output == Main_Keys["8"]) {
        }

        ;9
        else if (Output == Main_Keys["9"]) {
        }

        ;0
        else if (Output == Main_Keys["0"]) {
        }

        ;-
        else if (Output == Main_Keys["-"]) {
        }

        ;+
        else if (Output == Main_Keys["+"]) {
        }

        ;_Backspace
        else if (Output == Main_Keys["Backspace"]) {
        }





        ;_Tab
        if (Output == Main_Keys["Tab"]) {
			Run, Notepad
			Sleep 100
			Send, So long and thanks for all the fish
			Run, Notepad
			Sleep 100
			Send, So long and thanks for all the fish
        }

        ;Q
        else if (Output == Main_Keys["q"]) {
			Run, Notepad
			Sleep 100
			Send, So long and thanks for all the fish
        }
        
        ;E
        else if (Output == Main_Keys["e"]) {
        }

        ;R
        else if (Output == Main_Keys["r"]) {
        }

        ;T
        else if (Output == Main_Keys["t"]) {
			Run, Notepad
			Sleep 100
			Send, So long and thanks for all the fish
			Run, Notepad
			Sleep 100
			Send, So long and thanks for all the fish
        }

        ;Y
        else if (Output == Main_Keys["y"]) {
        }
        
        ;U
        else if (Output == Main_Keys["u"]) {
        }

        ;I
        else if (Output == Main_Keys["i"]) {
        }

        ;O
        else if (Output == Main_Keys["o"]) {
        }

        ;P
        else if (Output == Main_Keys["p"]) {
        }

        ;[
        else if (Output == Main_Keys["["]) {
        }

        ;]
        else if (Output == Main_Keys["]"]) {
        }

        ;\
        else if (Output == Main_Keys["\"]) {
        }






        ;S
        else if (Output == Main_Keys["s"]) {
			Run, "D:\Programs\Steam\Steam.exe"
        }

        ;F
        else if (Output == Main_Keys["f"]) {
			Run, "C:\Program Files\Mozilla Firefox\firefox.exe"
        }


    }

Return

Blink(times) {
    
}

Slide() {

}
