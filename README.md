# Window-Titlebar-Toggle-for-OLED-Protection
Utility that allows you to toggle the window title bar (frame, borders, and control buttons) for any active window using a single hotkey.  This tool is especially useful for OLED monitor users who want to reduce static UI elements during long desktop or gaming sessions.

## Problem

Windows does not provide a native way to hide a window’s title bar while keeping the window in normal mode.

In windowed applications (games, browsers, tools), the following static elements remain visible:

Title bar
Close / Minimize / Maximize buttons
Window borders

These elements contribute to constant pixel exposure, which is undesirable on OLED displays.



## Solution

This script allows you to:

Hide the title bar instantly
Restore it with the same hotkey
Work with any active window
Avoid fullscreen or borderless mode switching

It modifies the window style dynamically using AutoHotkey v2.

## Features
- **Toggle title bar on/off with one hotkey (F9)**
- **Works on the currently active window**
- **No need to configure per application**
- **Lightweight and fast**
- **No fullscreen switching required**
- **OLED-friendly workflow improvement**

## Requirements
- **Windows OS**
- **AutoHotkey v2.x**

Download:   
https://www.autohotkey.com/

## Installation

1.  Install AutoHotkey v2
2.  Download or clone this repository:
   ```bash
 git clone https://github.com/AProd18/Window-Titlebar-Toggle-for-OLED-Protection
   ```
3. Run the script:  
   - **Double-click wow-oled.ahk**    
   - **Or right-click → Run Script**  

## Usage
Toggle title bar

Press:
```bash
F9
```
First press → hides title bar and borders  
Second press → restores original window frame

## Script

```bash
#Requires AutoHotkey v2.0

F9::
{
    hwnd := WinExist("A")
    style := WinGetStyle("ahk_id " hwnd)

    if (style & 0xC00000)
    {
        ; hide title bar and borders
        WinSetStyle("-0xC00000", "ahk_id " hwnd)
        WinSetStyle("-0x40000", "ahk_id " hwnd)
    }
    else
    {
        ; restore title bar and borders
        WinSetStyle("+0xC00000", "ahk_id " hwnd)
        WinSetStyle("+0x40000", "ahk_id " hwnd)
    }
}
```

## How it works

The script toggles Windows style flags:

- **0xC00000 → Title bar**
- **0x40000 → Window border**

It detects the active window (WinExist("A")) and modifies its style in real time.

## ⚠️Notes
- **Works only on the currently active window**
- **Does not permanently modify applications**
- **Some apps may reset window style when resized or refocused**
- **Requires AutoHotkey v2**

