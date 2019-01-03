import xcgui
import winim/inc/[windef, wingdi]
import winim/winstr
import sugar

proc OnClick(bHandle: var bool): cint =
    var
        sel = XC_MessageBox(nil, "炫彩界面库pText", "pCaption", 1)
    bHandle = true
    return 0

proc Main() =
    #~ type ptrFnCallBack = (proc(bHandle: var bool): cint)
    #~ type ptrFnCallBack = (cint - > cint)    # sugar does not work
    #~ var fnCallBack: ptrFnCallBack = OnClick

    var
        bOk = XInitXCGUI()

    if bOk == True:
        var
            hWindow = XWnd_Create(0, 0, 300, 200, "炫彩NIM例子", 0, xc_window_style_default)

        if hWindow != nil :
            var hBtn = XBtn_Create(8, 30, 100, 20, "点我", hWindow)

            if hBtn != nil :
                XEle_RegEventC( hBtn, XE_BNCLICK, cast[cstring](OnClick))
                XWnd_ShowWindow(hWindow, 5)
                XRunXCGUI()
            else:
                echo "a"

        XExitXCGUI()

if isMainModule:
    Main()
