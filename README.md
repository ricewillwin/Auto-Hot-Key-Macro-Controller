# Auto Hot Key Macro Controller
A gui for setting up macros for a second keyboard
This script allows for the user to pick a key then change its command without ever having to enter an IDE
It also comes with a bash script to have the program run on startup
Uses the lua scripts from [Parrot029's Repo](https://github.com/Parrot023/Secondary_MACRO_keyboard) but could probably be replaced with the scripts from [TaranVH's Repo](https://github.com/TaranVH/2nd-keyboard/tree/master/LUAMACROS)

# Main Setup -

### 1. Download and Install Necessary Files and Programs
- [AHK](https://www.autohotkey.com)
- [LuaMacros](http://www.hidmacros.eu/forum/viewtopic.php?f=10&t=241#p794)
- [Parrot029's Repo](https://github.com/Parrot023/Secondary_MACRO_keyboard)
- This Repo

### 2. Follow the steps in [Parrot029's README](https://github.com/Parrot023/Secondary_MACRO_keyboard/blob/master/README.md)
I would like to note that you should change the location where the key.txt file is to the folder with the Gui.ahk script
For example -
```
line 21:    local file = io.open("..\\Auto-Hot-Key-Macro-Controller\\key.txt", "w")
```

### 3. Modify the bash file
If you wish to have the program run on start then modify the bash file as follows

Change the luamacros.exe and the lua scripts location
```
start _PATH_TO_LUAMACROS_EXE_ -r "_PATH_TO_PARROTS_REPO_\Secondary_MACRO_keyboard-master\2nd_keyboard.lua" 
```
to something more like this
```
start C:\Users\johnny_appleseed\Downloads\luamacros\LuaMacros.exe -r "C:\Users\johnny_appleseed\Downloads\Secondary_MACRO_keyboard-master\2nd_keyboard.lua" 
```

Then change the location of this REPO
```
start _PATH_TO_MAIN_REPO_\Auto-Hot-Key-Macro-Controller\Main.ahk
start _PATH_TO_MAIN_REPO_\Auto-Hot-Key-Macro-Controller\Gui.ahk
```
to something like this
```
start C:\Users\johnny_appleseed\Downloads\Auto-Hot-Key-Macro-Controller\Main.ahk
start C:\Users\johnny_appleseed\Downloads\Auto-Hot-Key-Macro-Controller\Gui.ahk
```

### 4. You're Done
Hopefully everything goes as its supposed to and the program will work.

# Extra Info

#### Auto Hotkey documentation
If you are new to Auto Hotkey you can find the documentation [here](https://www.autohotkey.com/docs/AutoHotkey.htm)
Its an excellent tool for creating som really powerfull macros