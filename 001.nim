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
