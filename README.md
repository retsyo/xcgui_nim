# what
xcgui binding for nimlang

# notice 
1. the DLL can be download from www.xcgui.com, however it is in Chinese, so I put the DLL and C header file here too. If you, the guys from www.xcgui.com, think this offends the copyright, please let me know to remove them

2. only the 32bits version xcgui.dll is free for use. The 64bits DLL and the GUI layout designer are commercial products.

3. you can only use 32bits nim compiler and GCC/tcc(?) to compile

4. there are bugs. Please help me to fix them

# demo
```nim
import ../../xcgui
import winim/inc/[windef, wingdi]
import winim/winstr

proc Main() =

    var bOk = XInitXCGUI()

    if bOk == True:
        var
            hWindow = XWnd_Create(0, 0, 300, 200, "炫彩VB例子", 0, xc_window_style_default)

        XBtn_Create 8, 30, 100, 20, "button按钮", hWindow

        if hWindow != nil:
            XWnd_ShowWindow hWindow, 5
            XRunXCGUI()

        XExitXCGUI()

if isMainModule:
    Main()

```
