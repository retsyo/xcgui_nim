import winim/inc/[windef, wingdi]
import winim/winstr

const
    xcgui* = "xcgui.dll"
    version = "20190103"

#[
/**************************************************************************\
* 炫彩界面库 - 官方网站 : http://www.xcgui.com
*
* 本模块官方网站 : https://github.com/retsyo/xcgui_nim
*
*
\**************************************************************************/
]#

#~ ## ~ #pragma once
#~ ## ~ //v2.5.1
#~ ## ~ ////////////输入输出///////////////////
#~ ## ~ #define in_
#~ ## ~ #define out_
#~ ## ~ #define in_out_
#~ ## ~ #define extern "C"
#~ ## ~ #define  XC_NAME1   _T("name1")
#~ ## ~ #define  XC_NAME2   _T("name2")
#~ ## ~ #define  XC_NAME3   _T("name3")
#~ ## ~ #define  XC_NAME4   _T("name4")
#~ ## ~ #define  XC_NAME5   _T("name5")
#~ ## ~ #define  XC_NAME6   _T("name6")
#~ ## ~ //对象类型决定功能
#~ ## ~ //对象样式决定外观
#~ ## ~ /// @defgroup groupObjectType 接口句柄类型
#~ ## ~ /// @ingroup macroDefine
#~ ## ~ /// @{
#~ ## ~ /// 炫彩对象类型

type
  XC_OBJECT_TYPE* = enum        ## /<炫彩对象类型
    XC_ERROR = -1,              ## /<错误类型
    XC_NOTHING = 0, XC_WINDOW = 1, ## /<窗口
    XC_MODALWINDOW = 2,         ## /<模态窗口
    XC_FRAMEWND = 3,            ## /<框架窗口
    XC_FLOATWND = 4,            ## /<浮动窗口
    XC_COMBOBOXWINDOW = 11,     ## comboBoxWindow_        组合框弹出下拉列表窗口
    XC_POPUPMENUWINDOW = 12,    ## popupMenuWindow_       弹出菜单主窗口
    XC_POPUPMENUCHILDWINDOW = 13, ## popupMenuChildWindow_  弹出菜单子窗口
    XC_OBJECT_UI = 19,          ## /<...
    XC_WIDGET_UI = 20,          ## 元素
    XC_ELE = 21,                ## /<基础元素
    XC_BUTTON = 22,             ## /<按钮
    XC_RICHEDIT = 23,           ## /<富文本编辑框
    XC_COMBOBOX = 24,           ## /<下拉组合框元素
    XC_SCROLLBAR = 25,          ## /<滚动条元素
    XC_SCROLLVIEW = 26,         ## /<滚动视图元素
    XC_LIST = 27,               ## /<列表元素
    XC_LISTBOX = 28,            ## /<列表框元素
    XC_LISTVIEW = 29,           ## /<列表视图,大图标
    XC_TREE = 30,               ## /<树元素
    XC_MENUBAR = 31,            ## /<菜单条
    XC_SLIDERBAR = 32,          ## /<滑动条
    XC_PROGRESSBAR = 33,        ## /<进度条
    XC_TOOLBAR = 34,            ## /<工具条
    XC_MONTHCAL = 35,           ## /<月历元素
    XC_DATETIME = 36,           ## /<时间元素
    XC_PROPERTYGRID = 37,       ## /<属性网格
    XC_RICHEDIT_COLOR = 38,     ## /<颜色选择元素
    XC_RICHEDIT_SET = 39,       ## /<...
    XC_TABBAR = 40,             ## /<tab条
    XC_TEXTLINK = 41,           ## /<文本链接按钮
    XC_PANE = 42,               ## /<布局窗格
    XC_PANE_SPLIT = 43,         ## /<布局窗格拖动分割条
    XC_MENUBAR_BUTTON = 44, ## /<菜单条上的按钮
                         ## 	XC_TOOLBAR_BUTTON       =45,   ///<工具条上按钮
                         ## 	XC_PROPERTYPAGE_LABEL   =46,   ///<属性页标签按钮
                         ## 	XC_PIER                 =47,   ///<窗格停靠码头
                         ## 	XC_BUTTON_MENU          =48,   ///<弹出菜单按钮
                         ## 	XC_VIRTUAL_ELE          =49,   ///<虚拟元素
    XC_EDIT = 45,               ## /<富文本编辑框
    XC_EDITOR = 46, XC_RICHEDIT_FILE = 50, ## /<RichEditFile 文件选择编辑框
    XC_RICHEDIT_FOLDER = 51,    ## /<RichEditFolder  文件夹选择编辑框
    XC_LIST_HEADER = 52,        ## /<列表头元素
    XC_ELE_LAYOUT = 53,         ## /<布局元素
    XC_SHAPE = 61,              ## /<形状对象
    XC_SHAPE_TEXT = 62,         ## /<形状对象-文本
    XC_SHAPE_PICTURE = 63,      ## /<形状对象-图片
    XC_SHAPE_RECT = 64,         ## /<形状对象-矩形
    XC_SHAPE_ELLIPSE = 65,      ## /<形状对象-圆
    XC_SHAPE_LINE = 66,         ## /<形状对象-直线
    XC_SHAPE_GROUPBOX = 67,     ## /<形状对象-组框
    XC_SHAPE_GIF = 68,          ## /<形状对象-GIF
                    ## 其他类型
    XC_MENU = 81,               ## /<弹出菜单
    XC_IMAGE = 82,              ## /<图片
    XC_HDRAW = 83,              ## /<绘图操作
    XC_FONT = 84,               ## /<炫彩字体
    XC_FLASH = 85,              ## /<flash
    XC_PANE_CELL = 86,          ## /<...
    XC_WEB = 87,                ## /<...
    XC_IMAGE_FRAME = 88,        ## /<图片帧,指定图片的渲染属性
    XC_LAYOUT_OBJECT = 101,     ## /<布局对象LayoutObject
    XC_ADAPTER = 102,           ## /<...
    XC_ADAPTER_TABLE = 103,     ## /<数据适配器AdapterTable
    XC_ADAPTER_TREE = 104,      ## /<数据适配器AdapterTree
    XC_ADAPTER_LISTVIEW = 105,  ## /<数据适配器AdapterListView
    XC_ADAPTER_MAP = 106,       ## /<数据适配器AdapterMap
    XC_LAYOUT_LISTVIEW = 111, XC_LAYOUT_LIST = 112, XC_LAYOUT_OBJECT_GROUP = 113,
    XC_LAYOUT_OBJECT_ITEM = 114, XC_LAYOUT_PANEL = 115, ## 无实体对象,只是用来判断类型
    XC_BKINFOM = 116,           ## 背景管理器
                   ## 无实体对象,只是用来判断布局
    XC_LIST_ITEM = 121,         ## 列表项模板 list_item
    XC_LISTVIEW_GROUP = 122, XC_LISTVIEW_ITEM = 123 ## XC_BUTTON_EX,

const
  XC_IMAGE_TEXTURE = XC_IMAGE

#~ ## ~ ///@}
#~ ## ~ /// @defgroup groupObjectTypeEx   对象扩展类型
#~ ## ~ /// @ingroup macroDefine
#~ ## ~ /// @{

type
  XC_OBJECT_TYPE_EX* = enum
    xc_ex_error = -1,           ## /<错误类型
    button_type_default = 0,    ## /<默认类型
    button_type_radio,        ## /<单选按钮
    button_type_check,        ## /<复选按钮
    button_type_close,        ## /<窗口关闭按钮
    button_type_min,          ## /<窗口最小化按钮
    button_type_max,          ## /<窗口最大化还原按钮
    element_type_layout       ## /<布局元素,启用布局功能的元素


#~ ## ~ ///@}
#~ ## ~ /// @defgroup groupObjectStyle 对象样式(用于区分外观)
#~ ## ~ /// @ingroup macroDefine
#~ ## ~ /// @{

type
  XC_OBJECT_STYLE* = enum
    xc_style_default = 0, button_style_check = 1, ## /<复选按钮
    button_style_radio = 2,     ## /<单选按钮
    button_style_expand = 3,    ## /<展开收缩按钮
    button_style_scrollbar_left = 4, ## /<水平滚动条,左按钮
    button_style_scrollbar_right = 5, ## /<水平滚动条,右按钮
    button_style_scrollbar_up = 6, ## /<垂直滚动条,上按钮
    button_style_scrollbar_down = 7, ## /<垂直滚动条,下按钮
    button_style_scrollbar_slider_h = 8, ## /<水平滚动条,滑块
    button_style_scrollbar_slider_v = 9, ## /<垂直滚动条,滑块
    button_style_tabBar_button = 10, ## /<TabBar上的标签按钮
    button_style_toolBar_left = 11, ## /<ToolBar左滚动按钮
    button_style_toolBar_right = 12, ## /<ToolBar右滚动按钮
    button_style_pane_close = 13, ## /<窗格关闭按钮
    button_style_pane_lock = 14, ## /<窗格锁定按钮
    button_style_pane_menu = 15, ## /<窗格下拉菜单按钮
    button_style_pane_dockH = 16, ## /<框架窗口左边或右边码头上按钮
    button_style_pane_dockV = 17, ## /<框架窗口上边或下边码头上按钮
    xc_style_frameWnd_dock_left = 18, ## /<框架窗口停靠码头
    xc_style_frameWnd_dock_top = 19, ## /<框架窗口停靠码头
    xc_style_frameWnd_dock_right = 20, ## /<框架窗口停靠码头
    xc_style_frameWnd_dock_bottom = 21, ## /<框架窗口停靠码头
    xc_style_ToolBar_separator = 22, ## /<工具条上的分割线
    xc_style_listBox_comboBox = 23 ## /<下拉组合框弹出的listBox
                                ## xc_style_richEdit_onlyRead      =23,   ///<编辑框只读模式

const
  button_style_default = xc_style_default

#~ ## ~ ///@}
#~ ## ~ #define DECLARE_HANDLEX(name) struct name##__ { int unused; }; typedef struct name##__ *name
#~ ## ~ /// @defgroup groupHandle 句柄列表
#~ ## ~ /// @ingroup macroDefine
#~ ## ~ /// @{
type
  HXCGUI* = pointer
  HWINDOWTTT* {.bycopy.} = object
    unused*: cint

  HWINDOW* = ptr HWINDOWTTT
  HELETTT* {.bycopy.} = object
    unused*: cint

  HELE* = ptr HELETTT
  HMENUXTTT* {.bycopy.} = object
    unused*: cint

  HMENUX* = ptr HMENUXTTT
  HDRAWTTT* {.bycopy.} = object
    unused*: cint

  HDRAW* = ptr HDRAWTTT
  HIMAGETTT* {.bycopy.} = object
    unused*: cint

  HIMAGE* = ptr HIMAGETTT
  HFONTXTTT* {.bycopy.} = object
    unused*: cint

  HFONTX* = ptr HFONTXTTT
  HBKMTTT* {.bycopy.} = object
    unused*: cint

  HBKM* = ptr HBKMTTT
  HTEMPTTT* {.bycopy.} = object
    unused*: cint

  HTEMP* = ptr HTEMPTTT

#~ ## ~ ///@}
#~ ## ~ #ifndef _INC_SHELLAPI
#~ ## ~ DECLARE_HANDLE(HDROP);
#~ ## ~ #endif
#~ ## ~ #define  XC_GetObjectByUID_(T)  XC_GetObjectByUID(XRes_GetIDValue(L#T))
#~ ## ~ #define  GetLayoutFile()        GetLayoutFile()
#~ ## ~ #define  XC_LAYOUT_FILE(file)   const wchar_t*  GetLayoutFile(){ return file; };
#~ ## ~ #define  XC_EVENT_DECLARE_MARK
#~ ## ~ #define  XC_EVENT_REGISTER_MARK
#~ ## ~ #define  XC_EVENT_IMPLEMENT_MARK(T)
#~ ## ~ #define CLOUDUI_flag_openUrl       1
#~ ## ~ #define CLOUDUI_flag_downloadFile  2
#~ ## ~ #define CLOUDUI_flag_downloadFileComplete      3
#~ ## ~ #define CLOUDUI_flag_complete      4
#~ ## ~ typedef   void  bkInfo_i;  //背景信息
#~ ## ~ typedef   struct lua_State lua_State;

type
  RECTF* {.bycopy.} = object
    left*: cfloat
    top*: cfloat
    right*: cfloat
    bottom*: cfloat


#~ ## ~ //窗口样式----------------------------
#~ ## ~ /// @defgroup groupWindowStyle 炫彩窗口样式
#~ ## ~ /// @ingroup macroDefine
#~ ## ~ /// @{

#~ type
  #~ xc_window_style* = enum
var
    xc_window_style_nothing* = 0x00000000 ## /<什么也没有
    xc_window_style_caption* = 0x00000001 ## /<top布局,如果指定该属性,默认为绑定标题栏元素
    xc_window_style_border* = 0x00000002 ## /<边框,指定默认上下左右布局大小,如果没有指定,那么边框布局大小为0
    xc_window_style_center* = 0x00000004 ## /<窗口居中
    xc_window_style_drag_border* = 0x00000008 ## /<拖动窗口边框
    xc_window_style_drag_window* = 0x00000010 ## /<拖动窗口
    xc_window_style_allow_maxWindow* = 0x00000020 ## /允许窗口最大化

var
    xc_window_style_default* = (xc_window_style_caption or xc_window_style_border or
        xc_window_style_center or xc_window_style_drag_border or
        xc_window_style_allow_maxWindow)    # ## /窗口默认样式
    xc_window_style_default2* = (xc_window_style_caption or
        xc_window_style_border or xc_window_style_drag_border or
        xc_window_style_allow_maxWindow) ## /模态窗口样式
    xc_window_style_modal* = (xc_window_style_caption or xc_window_style_center or
        xc_window_style_border)


#~ ## ~ ///@}
#~ ## ~ #ifdef _DEBUG
#~ ## ~ #define XTRACE   xtrace
#~ ## ~ #define XTRACEW  xtracew
#~ ## ~ #define XERROR   XTRACE
#~ ## ~ #define XERRORW  XTRACEW
#~ ## ~ #else
#~ ## ~ #define XTRACE
#~ ## ~ #define XTRACEW
#~ ## ~ #define XERROR
#~ ## ~ #define XERRORW
#~ ## ~ #endif

const
  XC_WINDOW_TOP* = 1
  XC_WINDOW_BOTTOM* = 2
  XC_WINDOW_LEFT* = 3
  XC_WINDOW_RIGHT* = 4
  XC_WINDOW_TOPLEFT* = 5
  XC_WINDOW_TOPRIGHT* = 6
  XC_WINDOW_BOTTOMLEFT* = 7
  XC_WINDOW_BOTTOMRIGHT* = 8
  XC_WINDOW_CAPTION* = 9
  XC_WINDOW_BODY* = 10

#~ ## ~ /// @defgroup groupWindow_position 窗口位置
#~ ## ~ /// @ingroup macroDefine
#~ ## ~ /// @{

type
  window_position* = enum
    window_position_error = -1, ## /<错误
    window_position_top = 0,    ## /<top
    window_position_bottom,   ## /<bottom
    window_position_left,     ## /<left
    window_position_right,    ## /<right
    window_position_body,     ## /<body
    window_position_window    ## /<window 整个窗口


#~ ## ~ ///@}
#~ ## ~ /// @defgroup groupElement_position UI元素位置
#~ ## ~ /// @ingroup macroDefine
#~ ## ~ /// @{

type
  element_position* = enum
    element_position_no = 0x00000000, ## /<无效
    element_position_left = 0x00000001, ## /<左边
    element_position_top = 0x00000002, ## /<上边
    element_position_right = 0x00000004, ## /<右边
    element_position_bottom = 0x00000008 ## /<下边


#~ ## ~ ///@}
#~ ## ~ //透明窗口
#~ ## ~ /// @defgroup groupWindowTransparent 炫彩窗口透明标识
#~ ## ~ /// @ingroup macroDefine
#~ ## ~ /// @{

type
  window_transparent* = enum
    window_transparent_false = 0, ## /<默认窗口,不透明
    window_transparent_shaped, ## /<透明窗口,带透明通道,异型
    window_transparent_shadow, ## /<阴影窗口,带透明通道,边框阴影,窗口透明或半透明,当前未启用.
    window_transparent_simple, ## /<透明窗口,不带透明通道,指定半透明度,指定透明色.
    window_transparent_win7   ## /<WIN7玻璃窗口,需要WIN7开启特效,当前未启用.


#~ ## ~ ///@}
#~ ## ~ /// @defgroup groupID_fixed  特殊ID
#~ ## ~ /// @ingroup macroDefine
#~ ## ~ /// @{

const
  XC_ID_ROOT* = 0
  XC_ID_ERROR* = -1
  XC_ID_FIRST* = -2
  XC_ID_LAST* = -3

#~ ## ~ /// @}
#~ ## ~ /// @defgroup groupMenu 弹出菜单
#~ ## ~ /// @ingroup macroDefine
#~ ## ~ /// @{
#~ ## ~ //弹出菜单项标识
#~ ## ~ ///@name 弹出菜单项标识
#~ ## ~ ///@{

type
  menu_item_flags* = enum
    menu_item_flags_normal = 0x00000000, ## /<正常
    menu_item_flags_select = 0x00000001, ## /<选择
    menu_item_flags_check = 0x00000002, ## /<勾选
    menu_item_flags_popup = 0x00000004, ## /<弹出
    menu_item_flags_separator = 0x00000008, ## /<分隔栏 ID号任意,ID号被忽略
    menu_item_flags_disable = 0x00000010 ## /<禁用


#~ ## ~ ///@}
#~ ## ~ //弹出菜单方向
#~ ## ~ ///@name 弹出菜单方向
#~ ## ~ ///@{

type
  menu_popup_position* = enum
    menu_popup_position_left_top = 0, ## /<左上角
    menu_popup_position_left_bottom, ## /<左下角
    menu_popup_position_right_top, ## /<右上角
    menu_popup_position_right_bottom, ## /<右下角
    menu_popup_position_center_left, ## /<左居中
    menu_popup_position_center_top, ## /<上居中
    menu_popup_position_center_right, ## /<右居中
    menu_popup_position_center_bottom ## /<下居中


#~ ## ~ ///@}
#~ ## ~ //菜单ID--------------------------------------
#~ ## ~ ///@name 菜单ID , 当前未使用
#~ ## /@{

const
  IDM_CLIP* = 1000000000
  IDM_COPY* = 1000000001
  IDM_PASTE* = 1000000002
  IDM_DELETE* = 1000000003
  IDM_SELECTALL* = 1000000004
  IDM_DELETEALL* = 1000000005

#~ ## ~ ///@}
#~ ## ~ ///@}
#~ ## ~ /// @defgroup groupImageDrawType 图片绘制类型
#~ ## ~ /// @ingroup macroDefine
#~ ## ~ /// @{

type
  image_draw_type* = enum
    image_draw_type_default = 0, ## /<默认
    image_draw_type_stretch,  ## /<拉伸
    image_draw_type_adaptive, ## /<自适应,九宫格
    image_draw_type_tile,     ## /<平铺
    image_draw_type_fixed_ratio, ## /<固定比例,当图片超出显示范围时,按照原始比例压缩显示图片
    image_draw_type_adaptive_border ## /<九宫格不绘制中间区域


#~ ## ~ ///@}
#~ ## ~ //状态--------------------------------------
#~ ## ~ /// @defgroup groupCommonState3 普通三种状态
#~ ## ~ /// @ingroup  macroDefine
#~ ## ~ /// @{

type
  common_state3* = enum
    common_state3_leave = 0,    ## /<离开
    common_state3_stay,       ## /<停留
    common_state3_down        ## /<按下


#~ ## ~ ///@}
#~ ## ~ /// @defgroup groupButtonStateFlag 按钮状态
#~ ## ~ /// @ingroup  macroDefine
#~ ## ~ /// @{

type
  button_state* = enum
    button_state_leave = 0,     ## /<离开状态
    button_state_stay,        ## /<停留状态
    button_state_down,        ## /<按下状态
    button_state_check,       ## /<选中状态
    button_state_disable      ## /<禁用状态


#~ ## ~ ///@}
#~ ## ~ /// @defgroup   groupComboBoxState ComboBox状态
#~ ## ~ /// @ingroup macroDefine
#~ ## ~ /// @{

type
  comboBox_state* = enum
    comboBox_state_leave = 0,   ## /<鼠标离开状态
    comboBox_state_stay = 1,    ## /<鼠标停留状态
    comboBox_state_down = 2     ## /<按下状态


#~ ## ~ ///@}
#~ ## ~ /// @defgroup groupListItemState List项状态
#~ ## ~ /// @ingroup macroDefine
#~ ## ~ /// @{

type
  list_item_state* = enum
    list_item_state_leave = 0,  ## /<项鼠标离开状态
    list_item_state_stay = 1,   ## /<项鼠标停留状态
    list_item_state_select = 2  ## /<项选择状态


#~ ## ~ ///@}
#~ ## ~ /// @defgroup groupTreeItemState Tree项状态
#~ ## ~ /// @ingroup macroDefine
#~ ## ~ /// @{

type
  tree_item_state* = enum
    tree_item_state_leave = 0,  ## /<项鼠标离开状态
    tree_item_state_stay = 1,   ## /<项鼠标停留状态
    tree_item_state_select = 2  ## /<项选择状态


#~ ## ~ ///@}
#~ ## ~ //按钮图标对齐方式
#~ ## ~ /// @defgroup groupButtonIconAlign 按钮图标对齐方式
#~ ## ~ /// @ingroup macroDefine
#~ ## ~ /// @{

#~ type
  #~ button_icon_align_* = enum
    #~ button_icon_align_left = 0, ## /<图标在左边
    #~ button_icon_align_top,    ## /<图标在顶部
    #~ button_icon_align_right,  ## /<图标在右边
    #~ button_icon_align_bottom  ## /<图标在底部


#~ ## ~ ///@}
#~ ## ~ /// @defgroup groupLayoutSize 布局大小类型
#~ ## ~ /// @ingroup macroDefine
#~ ## ~ /// @{

type
  layout_size_type* = enum
    layout_size_type_fixed = 0, ## /<指定大小
    layout_size_type_fill,    ## /<fill 填充父
    layout_size_type_auto,    ## /<auto 自动大小,根据内容计算大小
    layout_size_type_weight,  ## /<weight 比例,按照比例分配剩余空间
    layout_size_type_disable  ## /<disable 不使用


#~ ## ~ ///@}
#~ ## ~ /// @defgroup  groupListDrawItemBkFlags  List,ListBox,ListView,Tree,项背景绘制标志位
#~ ## ~ /// @ingroup macroDefine
#~ ## ~ /// @{

#~ type
  #~ list_drawItemBk_flags_* = enum
    #~ list_drawItemBk_flags_nothing = 0x00000000, ## /<不绘制
    #~ list_drawItemBk_flags_leave = 0x00000001, ## /<绘制鼠标离开状态项背景
    #~ list_drawItemBk_flags_stay = 0x00000002, ## /<绘制鼠标选择状态项背景
    #~ list_drawItemBk_flags_select = 0x00000004, ## /<绘制鼠标停留状态项项背景
    #~ list_drawItemBk_flags_group_leave = 0x00000008, ## /<绘制鼠标离开状态组背景,当项为组时
    #~ list_drawItemBk_flags_group_stay = 0x00000010


#~ ## ~ /// @}
#~ ## ~ //弹出消息框类型
#~ ## ~ /// @defgroup groupMessageBox 弹出消息框
#~ ## ~ /// @ingroup macroDefine
#~ ## ~ /// @{

type
  messageBox_flags* = enum
    messageBox_flags_other = 0x00000000, ## /<其他
    messageBox_flags_ok = 0x00000001, ## /<确定按钮
    messageBox_flags_cancel = 0x00000002, ## /<取消按钮
    messageBox_flags_icon_appicon = 0x00001000, ## /<图标 应用程序  IDI_APPLICATION
    messageBox_flags_icon_info = 0x00002000, ## /<图标 信息     IDI_ASTERISK
    messageBox_flags_icon_qustion = 0x00004000, ## /<图标 问询/帮助/提问   IDI_QUESTION
    messageBox_flags_icon_error = 0x00008000, ## /<图标 错误/拒绝/禁止  IDI_ERROR
    messageBox_flags_icon_warning = 0x00010000, ## /<图标 警告       IDI_WARNING
    messageBox_flags_icon_shield = 0x00020000 ## /<图标 盾牌/安全   IDI_SHIELD


#~ ## ~ ///@}
#~ ## ~ ///@defgroup GroupPropertyGrid_item_type    属性网格项类型
#~ ## ~ ///@ingroup  macroDefine
#~ ## ~ ///@{

type
  propertyGrid_item_type* = enum
    propertyGrid_item_type_text = 0, ## /<默认,字符串类型
    propertyGrid_item_type_edit, ## /<编辑框
    propertyGrid_item_type_edit_color, ## /<颜色选择元素
    propertyGrid_item_type_edit_file, ## /<文件选择编辑框
    propertyGrid_item_type_edit_set, ## /<设置
    propertyGrid_item_type_comboBox, ## /<组合框
    propertyGrid_item_type_group, ## /<组
    propertyGrid_item_type_panel ## /<面板


#~ ## ~ ///@}
#~ ## ~ ///@defgroup  GroupZOrder    Z序位置
#~ ## ~ ///@ingroup  macroDefine
#~ ## ~ ///@{

type
  zorder* = enum
    zorder_top,               ## /<最上面
    zorder_bottom,            ## /<最下面
    zorder_before,            ## /<指定目标下面
    zorder_after              ## /<指定目标上面


#~ ## ~ ///@}
#~ ## ~ //////////////框架窗口///////////////////////////////////////////////
#~ ## ~ //窗格菜单 当前未使用

const
  IDM_LOCK* = 1000000006
  IDM_DOCK* = 1000000007
  IDM_FLOAT* = 1000000008
  IDM_HIDE* = 1000000009

type
  layout_align* = enum
    layout_align_left = 0, layout_align_top, layout_align_right, layout_align_bottom,
    layout_align_center, layout_align_equidistant


type
  align_type* = enum
    align_error = -1, align_left = 0, align_top, align_right, align_bottom, align_center


#~ type
  #~ dock_align_* = enum           ## 停靠码头方向
    #~ dock_align_none = 0, dock_align_left, dock_align_top, dock_align_right,
    #~ dock_align_bottom


#~ ## ~ ///@defgroup Group_pane_state_  窗格状态
#~ ## ~ ///@ingroup  macroDefine
#~ ## ~ ///@{

type
  pane_state* = enum
    pane_state_any = 0, pane_state_lock, ## /<锁定
    pane_state_dock,          ## /<停靠码头
    pane_state_float          ## /<浮动窗格


#~ ## ~ ///@}
#~ ## ~ ///@defgroup Group_textFormatFlag_    字符串显示格式
#~ ## ~ ///@ingroup  macroDefine
#~ ## ~ ///@{

#~ type
  #~ textFormatFlag_* = enum
    #~ textAlignFlag_left = 0,     ## /<左对齐
    #~ textAlignFlag_center = 0x00000001, ## /<水平居中
    #~ textAlignFlag_right = 0x00000002, ## /<右对齐
    #~ textAlignFlag_vcenter = 0x00000004, ## /<垂直居中
    #~ textAlignFlag_bottom = 0x00000008, ## /<垂直底对齐
    #~ textFormatFlag_DirectionRightToLeft = 0x00000010, ## /<从右向左顺序显示文本
    #~ textFormatFlag_NoWrap = 0x00000020, ## /<禁止换行
    #~ textFormatFlag_DirectionVertical = 0x00000040, ## /<垂直显示文本
    #~ textFormatFlag_NoFitBlackBox = 0x00000080, ## /<允许部分字符延伸该字符串的布局矩形。默认情况下，将重新定位字符以避免任何延伸
    #~ textFormatFlag_DisplayFormatControl = 0x00000100, ## /<控制字符（如从左到右标记）随具有代表性的标志符号一起显示在输出中。
    #~ textFormatFlag_NoFontFallback = 0x00000200, ## /<对于请求的字体中不支持的字符，禁用回退到可选字体。缺失的任何字符都用缺失标志符号的字体显示，通常是一个空的方块
    #~ textFormatFlag_MeasureTrailingSpaces = 0x00000400, ## /<包括每一行结尾处的尾随空格。在默认情况下，MeasureString 方法返回的边框都将排除每一行结尾处的空格。设置此标记以便在测定时将空格包括进去
    #~ textFormatFlag_LineLimit = 0x00000800, ## /<如果内容显示高度不够一行,那么不显示
    #~ textFormatFlag_NoClip = 0x00001000, ## /<允许显示标志符号的伸出部分和延伸到边框外的未换行文本。在默认情况下，延伸到边框外侧的所有文本和标志符号部分都被剪裁
    #~ textAlignFlag_left_top = 0x00004000, ## /<内部保留
    #~ textTrimming_EllipsisCharacter = 0x00008000, ## /<以字符为单位去尾,省略部分使用且略号表示
    #~ textTrimming_EllipsisWord = 0x00010000, ## /<以单词为单位去尾,
    #~ textTrimming_EllipsisPath = 0x00020000, ## /<略去字符串中间部分，保证字符的首尾都能够显示
    #~ textTrimming_Character = 0x00040000, ## /<以字符为单位去尾
    #~ textTrimming_Word = 0x00080000 ## /<以单词为单位去尾

#~ const
  #~ textAlignFlag_top = textAlignFlag_left
  #~ textTrimming_None = textAlignFlag_left

#~ ## ~ ///@}
#~ ## ~ ///@defgroup Group_listItemTemp_type_    列表项模板类型
#~ ## ~ ///@ingroup  macroDefine
#~ ## ~ ///@{

#~ type
  #~ listItemTemp_type* = enum
    #~ listItemTemp_type_tree = 0x00000001, ## /<tree
    #~ listItemTemp_type_listBox = 0x00000002, ## /<listBox
    #~ listItemTemp_type_list_head = 0x00000004, ## /<list 列表头
    #~ listItemTemp_type_list_item = 0x00000008, ## /<list 列表项
    #~ listItemTemp_type_listView_group = 0x00000010, ## /<listView 列表视组
    #~ listItemTemp_type_listView_item = 0x00000020, ## /<listView 列表视项
#~ const
    #~ listItemTemp_type_list = listItemTemp_type_list_head or
        #~ listItemTemp_type_list_item ## /<list (列表头)与(列表项)组合
    #~ listItemTemp_type_listView = listItemTemp_type_listView_group or
        #~ listItemTemp_type_listView_item ## /<listView (列表视组)与(列表视项)组合


#~ ## ~ ///@}
#~ ## ~ ///@defgroup Group_adjustLayout    调整布局标识位
#~ ## ~ ///@ingroup  macroDefine
#~ ## ~ ///@{

type
  xc_adjustLayout* = enum
    xc_adjustLayout_no = 0x00000000, ## /<不调整布局
    xc_adjustLayout_all = 0x00000001, ## /<强制调整自身和子对象布局.
    xc_adjustLayout_self = 0x00000002 ## /<只调整自身布局,不调整子对象布局.


#~ ## ~ ///@}
#~ ## ~ typedef void (CALLBACK *funDebugError)(const char *pInfo);  //错误回调
#~ ## ~ typedef BOOL (CALLBACK *funLoadFile)(const wchar_t *pFileName);  //图片资源文件加载回调
#~ ## ~ typedef void (CALLBACK *funCloudEvent)(const wchar_t *pFileName,int nEvent, HXCGUI hXCGUI);  //云UI事件回调
#~ ## ~ typedef int  (CALLBACK *funCallUiThread)(int data);
#~ ## ~ typedef void (CALLBACK *funIdle)();
#~ ## ~ typedef void (CALLBACK *funExit)();
#~ ## ~ /////////////////////////////////////////////////////////
#~ ## ~ //////////////定义结构体///////////////////////////////////
#~ ## ~ /////////////////////////////////////////////////////////

type
  BorderSize_i* {.bycopy.} = object
    leftSize*: cint
    topSize*: cint
    rightSize*: cint
    bottomSize*: cint

type
  PaddingSize_i* {.bycopy.} = BorderSize_i

#~ ## ~ typedef  BorderSize_i  SpaceSize_i, PaddingSize_i, MarginSize_i;

type
  Position_i* {.bycopy.} = object
    iRow*: cint
    iColumn*: cint

  listBox_item_i* {.bycopy.} = object
    index*: cint               ## /<项索引
    nUserData*: cint           ## /<用户绑定数据
    nHeight*: cint             ## /<项默认高度
    nSelHeight*: cint          ## /<项选中时高度
    nState*: list_item_state  ## /<状态
    rcItem*: RECT              ## /<项坐标
    hLayout*: HXCGUI           ## /<布局对象
    hTemp*: HTEMP              ## /<列表项模板

  listBox_item_info_i* {.bycopy.} = object
    nUserData*: cint           ## /<用户绑定数据
    nHeight*: cint             ## /<项高度, -1使用默认高度
    nSelHeight*: cint          ## /<项选中时高度, -1使用默认高度

  listView_item_id_i* {.bycopy.} = object
    iGroup*: cint              ## /<组索引
    iItem*: cint               ## /<项索引

  list_item_i* {.bycopy.} = object
    index*: cint
    iSubItem*: cint
    nUserData*: cint
    nState*: list_item_state
    rcItem*: RECT
    hLayout*: HXCGUI           ## /<布局对象
    hTemp*: HTEMP              ## /<列表项模板

  list_header_item_i* {.bycopy.} = object
    index*: cint
    nUserData*: cint
    bSort*: BOOL               ## 是否支持排序
    nSortType*: cint           ## 排序方式,0无效,1升序,2降序
    iColumnAdapter*: cint      ## 对应数据适配器中的列索引
    nState*: common_state3
    rcItem*: RECT
    hLayout*: HXCGUI           ## /<布局对象
    hTemp*: HTEMP              ## /<列表项模板

  tree_item_i* {.bycopy.} = object
    nID*: cint
    nDepth*: cint
    nHeight*: cint
    nSelHeight*: cint
    nUserData*: cint
    bExpand*: BOOL
    nState*: tree_item_state
    rcItem*: RECT
    hLayout*: HXCGUI           ## /<布局对象
    hTemp*: HTEMP              ## /<列表项模板

  listView_item_i* {.bycopy.} = object
    iGroup*: cint              ## /<项所述组索引 -1没有组
    iItem*: cint               ## /<项在数组中位置索引,如果此致为-1,那么为组
    nUserData*: cint           ## /<用户绑定数据
    nState*: list_item_state  ## /<状态
    rcItem*: RECT              ## /<整个区域,包含边框
    hLayout*: HXCGUI           ## /<布局对象
    hTemp*: HTEMP              ## /<列表项模板


#~ ## 布局信息

type
  layout_info_i* {.bycopy.} = object
    widthType*: layout_size_type
    heightType*: layout_size_type
    width*: cshort             ## /<宽度
    height*: cshort            ## /<高度

  menu_popupWnd_i* {.bycopy.} = object
    hWindow*: HWINDOW          ## /<窗口句柄
    nParentID*: cint           ## /<父项ID


#~ ## /菜单背景自绘结构

type
  menu_drawBackground_i* {.bycopy.} = object
    hMenu*: HMENUX             ## /<菜单句柄
    hWindow*: HWINDOW          ## /<当前弹出菜单项的窗口句柄
    nParentID*: cint           ## /<父项ID


#~ ## /菜单项自绘结构

type
  menu_drawItem_i* {.bycopy.} = object
    hMenu*: HMENUX             ## /<菜单句柄
    hWindow*: HWINDOW          ## /<当前弹出菜单项的窗口句柄
    nID*: cint                 ## /<ID
    nState*: cint              ## /<状态 @ref menu_item_flags
    rcItem*: RECT              ## /<坐标
    hIcon*: HIMAGE             ## /<菜单项图标
    pText*: ptr WCHAR         ## /<文本


#~ ## 树UI元素拖动项

type
  tree_drag_item_i* {.bycopy.} = object
    nDragItem*: cint           ## /< 拖动项ID
    nDestItem*: cint           ## /< 目标项ID
    nType*: cint               ## /< 停放相对目标位置,1:(上)停放到目标的上面,2:(中)停放到目标的的子项, 3:(下)停放到目标的下面,


#~ ## 字体信息

type
  xc_font_info_i* {.bycopy.} = object
    nSize*: cint               ## /<字体大小,单位(pt,磅).
    nStyle*: cint              ## /<字体样式 xc_fontStyle_i
    name*: array[LF_FACESIZE, WCHAR] ## /<字体名称

  propertyGrid_item_i* {.bycopy.} = object
    nType*: propertyGrid_item_type
    nID*: cint
    nDepth*: cint
    nUserData*: cint           ## 用户数据
    nNameColWidth*: cint       ## 名称列宽带
    rcItem*: RECT
    rcExpand*: RECT
    bExpand*: BOOL             ## 是否展开
    bShow*: BOOL               ## 是否可见


#~ ## ~ #ifndef __IOleControlSite_INTERFACE_DEFINED__

type
  POINTF* {.bycopy.} = object
    x*: cfloat
    y*: cfloat


#~ ## ~ /// @defgroup group_combo_StateFlags 组合状态
#~ ## ~ /// @ingroup macroDefine
#~ ## ~ /// @{

#~ type
  #~ window_state_flag_* = enum
    #~ window_state_flag_nothing = 0x00000000, ## /<无
    #~ window_state_flag_leave = 0x00000001, ## /<整个窗口
    #~ window_state_flag_body_leave = 0x00000002, ## /<窗口-body
    #~ window_state_flag_top_leave = 0x00000004, ## /<窗口-top
    #~ window_state_flag_bottom_leave = 0x00000008, ## /<窗口-bottom
    #~ window_state_flag_left_leave = 0x00000010, ## /<窗口-left
    #~ window_state_flag_right_leave = 0x00000020, ## /<窗口-right
    #~ window_state_flag_layout_body = 0x20000000 ## /<布局内容区


#~ type
  #~ element_state_flag_* = enum   ## 组合状态
    #~ element_state_flag_nothing = window_state_flag_nothing, ## /<无
    #~ element_state_flag_enable = 0x00000001, ## /<启用
    #~ element_state_flag_disable = 0x00000002, ## /<禁用
    #~ element_state_flag_focus = 0x00000004, ## /<焦点
    #~ element_state_flag_focus_no = 0x00000008, ## /<无焦点
    #~ element_state_flag_leave = 0x00000010, ## /<鼠标离开
    #~ element_state_flag_stay = 0x00000020, ## /<为扩展模块保留
    #~ element_state_flag_down = 0x00000040, ## /<为扩展模块保留
    #~ element_state_flag_focusEx = 0x40000000, ## /<该元素或该元素的子元素拥有焦点
    #~ element_state_flag_focusEx_no = 0x80000000, ## /<无焦点Ex
    #~ layout_state_flag_layout_body = window_state_flag_layout_body ## /<布局内容区


#~ type
  #~ button_state_flag_* = enum    ## 组合状态
    #~ button_state_flag_leave = element_state_flag_leave, ## /<鼠标离开
    #~ button_state_flag_stay = element_state_flag_stay, ## /<鼠标停留
    #~ button_state_flag_down = element_state_flag_down, ## /<鼠标按下
    #~ button_state_flag_check = 0x00000080, ## /<选中
    #~ button_state_flag_check_no = 0x00000100, ## /<未选中
    #~ button_state_flag_WindowRestore = 0x00000200, ## /<窗口还原
    #~ button_state_flag_WindowMaximize = 0x00000400 ## /<窗口最大化


#~ type
  #~ comboBox_state_flag_* = enum
    #~ comboBox_state_flag_leave = element_state_flag_leave, ## /<鼠标离开
    #~ comboBox_state_flag_stay = element_state_flag_stay, ## /<鼠标停留
    #~ comboBox_state_flag_down = element_state_flag_down ## /<鼠标按下


#~ type
  #~ listBox_state_flag_* = enum
    #~ listBox_state_flag_item_leave = 0x00000080, ## /<项鼠标离开
    #~ listBox_state_flag_item_stay = 0x00000100, ## /<项鼠标停留
    #~ listBox_state_flag_item_select = 0x00000200, ## /<项选择
    #~ listBox_state_flag_item_select_no = 0x00000400 ## /<项未选择


#~ type
  #~ list_state_flag_* = enum
    #~ list_state_flag_item_leave = 0x00000080, ## /<项鼠标离开
    #~ list_state_flag_item_stay = 0x00000100, ## /<项鼠标停留
    #~ list_state_flag_item_select = 0x00000200, ## /<项选择
    #~ list_state_flag_item_select_no = 0x00000400 ## /<项未选择


#~ type
  #~ listHeader_state_flag_* = enum
    #~ listHeader_state_flag_item_leave = 0x00000080, ## /<项鼠标离开
    #~ listHeader_state_flag_item_stay = 0x00000100, ## /<项鼠标停留
    #~ listHeader_state_flag_item_down = 0x00000200 ## /<项鼠标按下


#~ type
  #~ listView_state_flag_* = enum
    #~ listView_state_flag_item_leave = 0x00000080, ## /<项鼠标离开
    #~ listView_state_flag_item_stay = 0x00000100, ## /<项鼠标停留
    #~ listView_state_flag_item_select = 0x00000200, ## /<项选择
    #~ listView_state_flag_item_select_no = 0x00000400, ## /<项未选择
    #~ listView_state_flag_group_leave = 0x00000800, ## /<组鼠标离开
    #~ listView_state_flag_group_stay = 0x00001000, ## /<组鼠标停留
    #~ listView_state_flag_group_select = 0x00002000, ## /<组选择
    #~ listView_state_flag_group_select_no = 0x00004000 ## /<组未选择


#~ type
  #~ tree_state_flag_* = enum
    #~ tree_state_flag_item_leave = 0x00000080, ## /<项鼠标离开
    #~ tree_state_flag_item_stay = 0x00000100, ## /<项鼠标停留,保留值, 暂未使用
    #~ tree_state_flag_item_select = 0x00000200, ## /<项选择
    #~ tree_state_flag_item_select_no = 0x00000400, ## /<项未选择
    #~ tree_state_flag_group = 0x00000800, ## /<项为组
    #~ tree_state_flag_group_no = 0x00001000 ## /<项不为组


#~ type
  #~ monthCal_state_flag_* = enum
    #~ monthCal_state_flag_leave = element_state_flag_leave, ## /<离开状态
    #~ monthCal_state_flag_item_leave = 0x00000080, ## /< 项-离开
    #~ monthCal_state_flag_item_stay = 0x00000100, ## /< 项-停留
    #~ monthCal_state_flag_item_down = 0x00000200, ## /< 项-按下
    #~ monthCal_state_flag_item_select = 0x00000400, ## /< 项-选择
    #~ monthCal_state_flag_item_select_no = 0x00000800, ## /< 项-未选择
    #~ monthCal_state_flag_item_today = 0x00001000, ## /< 项-今天
    #~ monthCal_state_flag_item_other = 0x00002000, ## /< 项-上月及下月
    #~ monthCal_state_flag_item_last_month = 0x00004000, ## /< 项-上月
    #~ monthCal_state_flag_item_cur_month = 0x00008000, ## /< 项-当月
    #~ monthCal_state_flag_item_next_month = 0x00010000 ## /< 项-下月


#~ type
  #~ propertyGrid_state_flag_* = enum
    #~ propertyGrid_state_flag_item_leave = 0x00000080,
    #~ propertyGrid_state_flag_item_stay = 0x00000100,
    #~ propertyGrid_state_flag_item_select = 0x00000200,
    #~ propertyGrid_state_flag_item_select_no = 0x00000400,
    #~ propertyGrid_state_flag_group_leave = 0x00000800,
    #~ propertyGrid_state_flag_group_expand = 0x00001000,
    #~ propertyGrid_state_flag_group_expand_no = 0x00002000


#~ type
  #~ pane_state_flag_* = enum
    #~ pane_state_flag_leave = element_state_flag_leave,
    #~ pane_state_flag_stay = element_state_flag_stay,
    #~ pane_state_flag_caption = 0x00000080, pane_state_flag_body = 0x00000100


#~ type
  #~ layout_state_flag_* = enum
    #~ layout_state_flag_nothing = window_state_flag_nothing, ## /<无
    #~ layout_state_flag_full = 0x00000001, ## 完整背景
    #~ layout_state_flag_body = 0x00000002 ## 内容区域, 不包含边大小


#~ ## ~ ///@}
#~ ## ~ /// @defgroup group_monthCal_button_type_    月历元素上的按钮类型
#~ ## ~ /// @ingroup macroDefine
#~ ## ~ /// @{

#~ type
  #~ monthCal_button_type_* = enum
    #~ monthCal_button_type_today = 0, ## /< 今天按钮
    #~ monthCal_button_type_last_year, ## /< 上一年
    #~ monthCal_button_type_next_year, ## /< 下一年
    #~ monthCal_button_type_last_month, ## /< 上一月
    #~ monthCal_button_type_next_month ## /< 下一月


#~ ## ~ ///@}
#~ ## ~ ///@defgroup  group_monthCal_item_i_    月历元素项数据
#~ ## ~ ///@ingroup   macroDefine
#~ ## ~ ///@{
#~ ## ~ /// 月历元素项数据

#~ type
  #~ monthCal_item_i* {.bycopy.} = object
    #~ nDay*: cint                ## /< 日期
    #~ nType*: cint               ## /< 1上月,2当月,3下月
    #~ nState*: cint              ## /< 组合状态 monthCal_state_flag_
    #~ rcItem*: RECT              ## /< 项坐标

  #~ xc_fontStyle_i* = enum
    #~ xc_fontStyle_regular = 0,   ## /<正常
    #~ xc_fontStyle_bold = 1,      ## /<粗体
    #~ xc_fontStyle_italic = 2,    ## /<斜体
    #~ xc_fontStyle_boldItalic = 3, ## /<粗斜体
    #~ xc_fontStyle_underline = 4, ## /<下划线
    #~ xc_fontStyle_strikeout = 8


#~ ## ~ ///@}
#~ ## ~ ///@defgroup  group_adapter_date_type_    数据适配器数据类型
#~ ## ~ ///@ingroup   macroDefine
#~ ## ~ ///@{

#~ type
  #~ adapter_date_type_* = enum
    #~ adapter_date_type_error = -1, adapter_date_type_int = 0, ## /<整形
    #~ adapter_date_type_float = 1, ## /<浮点型
    #~ adapter_date_type_string = 2, ## /<字符串
    #~ adapter_date_type_image = 3 ## /<图片


#~ ## ~ ///@}
#~ ## ~
#~ ## ///////////////////////////////////////////////////////////////////////////////////
#~ ## ~
#~ ## /////////////////////窗口消息//////////////////////////////////////////////////////
#~ ## ~
#~ ## ///////////////////////////////////////////////////////////////////////////////////
#~ ## ~ //窗口消息
#~ ## ~ /**
#~ ## ~ @addtogroup wndMSG
#~ ## ~ <hr>
#~ ## ~ <h2>Windows 标准消息</h2>
#~ ## ~ - @ref WM_PAINT 窗口绘制消息
#~ ## ~ - @ref WM_CLOSE 窗口关闭消息.
#~ ## ~ - @ref WM_DESTROY 窗口销毁消息.
#~ ## ~ - @ref WM_NCDESTROY 窗口非客户区销毁消息.
#~ ## ~ - @ref WM_MOUSEMOVE 窗口鼠标移动消息.
#~ ## ~ - @ref WM_LBUTTONDOWN 窗口鼠标左键按下消息
#~ ## ~ - @ref WM_LBUTTONUP 窗口鼠标左键弹起消息.
#~ ## ~ - @ref WM_RBUTTONDOWN 窗口鼠标右键按下消息.
#~ ## ~ - @ref WM_RBUTTONUP 窗口鼠标右键弹起消息.
#~ ## ~ - @ref WM_LBUTTONDBLCLK 窗口鼠标左键双击消息.
#~ ## ~ - @ref WM_RBUTTONDBLCLK 窗口鼠标右键双击消息.
#~ ## ~ - @ref WM_MOUSEWHEEL 窗口鼠标滚轮滚动消息.
#~ ## ~ - @ref WM_EXITSIZEMOVE 窗口退出移动或调整大小模式循环改，详情参见MSDN.
#~ ## ~ - @ref WM_MOUSEHOVER 窗口鼠标进入消息
#~ ## ~ - @ref WM_MOUSELEAVE 窗口鼠标离开消息.
#~ ## ~ - @ref WM_SIZE 窗口大小改变消息.
#~ ## ~ - @ref WM_TIMER 窗口定时器消息.
#~ ## ~ - @ref WM_SETFOCUS 窗口获得焦点.
#~ ## ~ - @ref WM_KILLFOCUS 窗口失去焦点.
#~ ## ~ - @ref WM_KEYDOWN 窗口键盘按键消息.
#~ ## ~ - @ref WM_CAPTURECHANGED 窗口鼠标捕获改变消息.
#~ ## ~ - @ref WM_SETCURSOR  窗口设置鼠标光标.
#~ ## ~ - @ref WM_CHAR       窗口字符消息.
#~ ## ~ - @ref WM_DROPFILES  拖动文件到窗口.
#~ ## ~ - @ref other 其他Windows系统消息,包含你自定义的Windows消息.
#~ ## ~ <hr>
#~ ## ~ @anchor WM_PAINT WM_PAINT 窗口绘制消息
#~ ## ~ @code   int CALLBACK OnWndDrawWindow(HDRAW hDraw,BOOL *pbHandled); @endcode
#~ ## ~ @param  hDraw   图形绘制句柄.
#~ ## ~ <hr>
#~ ## ~ @anchor WM_CLOSE WM_CLOSE 窗口关闭消息.
#~ ## ~ @code   int CALLBACK OnWndClose(BOOL *pbHandled); @endcode
#~ ## ~ <hr>
#~ ## ~ @anchor WM_DESTROY WM_DESTROY 窗口销毁消息.
#~ ## ~ @code   int CALLBACK OnWndDestroy(BOOL *pbHandled);  @endcode
#~ ## ~ <hr>
#~ ## ~ @anchor WM_NCDESTROY WM_NCDESTROY 窗口非客户区销毁消息.
#~ ## ~ @code   int CALLBACK OnWndNCDestroy(BOOL *pbHandled); @endcode
#~ ## ~ <hr>
#~ ## ~ @anchor WM_MOUSEMOVE WM_MOUSEMOVE 窗口鼠标移动消息.
#~ ## ~ @code   int CALLBACK OnWndMouseMove(UINT nFlags,POINT *pPt,BOOL *pbHandled);  @endcode
#~ ## ~ @param  flags   请参见MSDN WM_MOUSEMOVE wParam参数.
#~ ## ~ @param  pPt     鼠标坐标点.
#~ ## ~ <hr>
#~ ## ~ @anchor WM_LBUTTONDOWN WM_LBUTTONDOWN 窗口鼠标左键按下消息
#~ ## ~ @code   int CALLBACK OnWndLButtonDown(UINT nFlags,POINT *pPt,BOOL *pbHandled); @endcode
#~ ## ~ @param  flags   请参见MSDN WM_LBUTTONDOWN.
#~ ## ~ @param  pPt     鼠标坐标点.
#~ ## ~ <hr>
#~ ## ~ @anchor WM_LBUTTONUP WM_LBUTTONUP 窗口鼠标左键弹起消息.
#~ ## ~ @code   int CALLBACK OnWndLButtonUp(UINT nFlags,POINT *pPt,BOOL *pbHandled); @endcode
#~ ## ~ @param  flags   请参见MSDN WM_LBUTTONUP.
#~ ## ~ @param  pPt     鼠标坐标点.
#~ ## ~ <hr>
#~ ## ~ @anchor WM_RBUTTONDOWN WM_RBUTTONDOWN 窗口鼠标右键按下消息.
#~ ## ~ @code   int CALLBACK OnWndRButtonDown(UINT nFlags,POINT *pPt,BOOL *pbHandled); @endcode
#~ ## ~ @param  flags   请参见MSDN WM_RBUTTONDOWN.
#~ ## ~ @param  pPt     鼠标坐标点.
#~ ## ~ <hr>
#~ ## ~ @anchor WM_RBUTTONUP WM_RBUTTONUP 窗口鼠标右键弹起消息.
#~ ## ~ @code   int CALLBACK OnWndRButtonUp(UINT nFlags,POINT *pPt,BOOL *pbHandled); @endcode
#~ ## ~ @param  flags   请参见MSDN WM_RBUTTONUP.
#~ ## ~ @param  pPt     鼠标坐标点.
#~ ## ~ <hr>
#~ ## ~ @anchor WM_LBUTTONDBLCLK WM_LBUTTONDBLCLK 窗口鼠标左键双击消息.
#~ ## ~ @code   int CALLBACK OnWndLButtonDBClick(UINT nFlags,POINT *pPt,BOOL *pbHandled); @endcode
#~ ## ~ @param  flags   请参见MSDN WM_LBUTTONDBLCLK.
#~ ## ~ @param  pPt     鼠标坐标点.
#~ ## ~ <hr>
#~ ## ~ @anchor WM_RBUTTONDBLCLK WM_RBUTTONDBLCLK 窗口鼠标右键双击消息.
#~ ## ~ @code   int CALLBACK OnWndRButtonDBClick(UINT nFlags,POINT *pPt,BOOL *pbHandled); @endcode
#~ ## ~ @param  flags   请参见MSDN WM_RBUTTONDBLCLK.
#~ ## ~ @param  pPt     鼠标坐标点.
#~ ## ~ <hr>
#~ ## ~ @anchor WM_MOUSEWHEEL WM_MOUSEWHEEL 窗口鼠标滚轮滚动消息.
#~ ## ~ @code   int CALLBACK OnWndMouseWheel(UINT nFlags,POINT *pPt,BOOL *pbHandled); @endcode
#~ ## ~ @param  flags   请参见MSDN WM_MOUSEWHEEL消息wParam参数.
#~ ## ~ @param  pPt     鼠标坐标点.
#~ ## ~ <hr>
#~ ## ~ @anchor WM_EXITSIZEMOVE WM_EXITSIZEMOVE 窗口退出移动或调整大小模式循环改，详情参见MSDN.
#~ ## ~ @code   int CALLBACK OnWndExitSizeMove(BOOL *pbHandled); @endcode
#~ ## ~ <hr>
#~ ## ~ @anchor WM_MOUSEHOVER WM_MOUSEHOVER 窗口鼠标进入消息.
#~ ## ~ @code   int CALLBACK OnWndMouseHover(UINT nFlags,POINT *pPt,BOOL *pbHandled); @endcode
#~ ## ~ @param  flags  请参见MSDN WM_MOUSEHOVER消息wParam参数.
#~ ## ~ @param  pPt    鼠标位置
#~ ## ~ <hr>
#~ ## ~ @anchor WM_MOUSELEAVE WM_MOUSELEAVE 窗口鼠标离开消息.
#~ ## ~ @code   int CALLBACK OnWndMouseLeave(BOOL *pbHandled); @endcode
#~ ## ~ <hr>
#~ ## ~ @anchor WM_SIZE WM_SIZE 窗口大小改变消息.
#~ ## ~ @code   int CALLBACK OnWndSize(UINT nFlags,SIZE *pSize,BOOL *pbHandled); @endcode
#~ ## ~ @param  flags   请参见MSDN WM_SIZE消息wParam参数.
#~ ## ~ @param  pSize   窗口大小.
#~ ## ~ <hr>
#~ ## ~ @anchor WM_TIMER WM_TIMER 窗口定时器消息.
#~ ## ~ @code   int CALLBACK OnWndTimer(UINT nIDEvent,BOOL *pbHandled); @endcode
#~ ## ~ @param  nIDEnent 定时器标示符.
#~ ## ~ @param  uElapse
#~ ## 指定所经过的系统启动以来的毫秒数,这是由GetTickCount函数的返回值.
#~ ## ~ <hr>
#~ ## ~ @anchor WM_SETFOCUS WM_SETFOCUS 窗口获得焦点.
#~ ## ~ @code   int CALLBACK OnWndSetFocus(BOOL *pbHandled); @endcode
#~ ## ~ <hr>
#~ ## ~ @anchor WM_KILLFOCUS WM_KILLFOCUS 窗口失去焦点.
#~ ## ~ @code   int CALLBACK OnWndKillFocus(BOOL *pbHandled); @endcode
#~ ## ~ <hr>
#~ ## ~ @anchor WM_KEYDOWN WM_KEYDOWN 窗口键盘按键消息.
#~ ## ~ @code   int CALLBACK OnWndKeyDown(WPARAM wParam,LPARAM lParam,BOOL *pbHandled); @endcode
#~ ## ~ @note   wParam,lParam:请参见MSDN WM_KEYDOWN.
#~ ## ~ <hr>
#~ ## ~ @anchor WM_CAPTURECHANGED WM_CAPTURECHANGED 窗口鼠标捕获改变消息.
#~ ## ~ @code   int CALLBACK OnWndCaptureChanged(HWND hWnd,BOOL *pbHandled); @endcode
#~ ## ~ @param  hWnd    获得鼠标捕获的窗口句柄.
#~ ## ~ <hr>
#~ ## ~ @anchor  WM_SETCURSOR WM_SETCURSOR 窗口设置鼠标光标.
#~ ## ~ @code    int CALLBACK OnWndSetCursor(WPARAM wParam,LPARAM lParam,BOOL *pbHandled); @endcode
#~ ## ~ @note    wParam,lParam:请参见MSDN WM_SETCURSOR.
#~ ## ~ <hr>
#~ ## ~ @anchor  WM_CHAR WM_CHAR 窗口字符输入消息.
#~ ## ~ @code    int CALLBACK OnWndChar(WPARAM wParam,LPARAM lParam,BOOL *pbHandled); @endcode
#~ ## ~ @note    wParam,lParam:请参见MSDN WM_CHAR.
#~ ## ~ <hr>
#~ ## ~ @anchor  WM_DROPFILES WM_DROPFILES 拖动文件到窗口消息.
#~ ## ~ @code    int CALLBACK OnDropFiles(HDROP hDropInfo , BOOL *pbHandled); @endcode
#~ ## ~ @note    请参见MSDN WM_DROPFILES.
#~ ## ~ <hr>
#~ ## ~ @anchor other 其他Windows系统消息,包含你自定义的Windows消息.
#~ ## ~ @code   int CALLBACK OnWndOther(WPARAM wParam,LPARAM lParam,BOOL *pbHandled); @endcode
#~ ## ~ @param  wParam  消息参数.
#~ ## ~ @param  lParam  消息参数.
#~ ## ~ @note   参数信息请参见MSDN.
#~ ## ~ @{
#~ ## ~ */
#~ ## ~ //窗口消息-包含系统非客户区消息
#~ ## ~ #define  XWM_EVENT_ALL        WM_APP+1000 //事件投递 -------不公开-------不需要注册
#~ ## ~ //wParam:left-top坐标组合; lParam:right-bottom坐标组合; 如果这2个参数为空,那么重绘整个窗口
#~ ## ~ //#define  XWM_REDRAW           WM_APP+1007  //窗口重绘延时 ----不公开-----内部自定义消息
#~ ## ~ //重绘元素,内部使用

#~ const
  #~ XWM_REDRAW_ELE* = 0x00007000 + 1

#~ ## ~ ///@brief 窗口消息过程
#~ ## ~ ///@code  int CALLBACK OnWndProc(UINT message, WPARAM wParam, LPARAM lParam, BOOL *pbHandled);  @endcode

#~ const
  #~ XWM_WINDPROC* = 0x00007000 + 2
  #~ XWM_DRAW_T* = 0x00007000 + 3
  #~ XWM_TIMER_T* = 0x00007000 + 4
  #~ XWM_CLOUDUI_DOWNLOADFILE_COMPLETE* = 0x00007000 + 6
  #~ XWM_CLOUNDUI_OPENURL_WAIT* = 0x00007000 + 7
  #~ XWM_CALL_UI_THREAD* = 0x00007000 + 8

#~ ## ~ /// @brief  炫彩定时器,非系统定时器,注册消息XWM_TIMER接收
#~ ## ~ /// @code  int CALLBACK OnWndXCTimer(UINT nTimerID,BOOL *pbHandled);  @endcode
#~ ## ~ /// @param hWindow   窗口句柄
#~ ## ~ /// @param nTimerID   定时器ID

#~ const
  #~ XWM_XC_TIMER* = 0x00007000 + 5

#~ ## ~ ///@brief 菜单弹出
#~ ## ~ ///@code  int CALLBACK OnWndMenuPopup(HMENUX hMenu, BOOL *pbHandled); @endcode

#~ const
  #~ XWM_MENU_POPUP* = 0x00007000 + 11

#~ ## ~ ///@brief 菜单弹出窗口
#~ ## ~ ///@code  int CALLBACK OnWndMenuPopupWnd(HMENUX hMenu,menu_popupWnd_i *pInfo,BOOL *pbHandled); @endcode

#~ const
  #~ XWM_MENU_POPUP_WND* = 0x00007000 + 12

#~ ## ~ ///@brief 菜单选择
#~ ## ~ ///@code  int CALLBACK OnWndMenuSelect(int nID,BOOL *pbHandled); @endcode

#~ const
  #~ XWM_MENU_SELECT* = 0x00007000 + 13

#~ ## ~ ///@brief 菜单退出
#~ ## ~ ///@code  int CALLBACK OnWndMenuExit(BOOL *pbHandled); @endcode

#~ const
  #~ XWM_MENU_EXIT* = 0x00007000 + 14

#~ ## ~ ///@brief 绘制菜单背景, 启用该功能需要调用XMenu_EnableDrawBackground().
#~ ## ~ ///@code  int CALLBACK OnWndMenuDrawBackground(HDRAW hDraw,menu_drawBackground_i *pInfo,BOOL *pbHandled); @endcode

#~ const
  #~ XWM_MENU_DRAW_BACKGROUND* = 0x00007000 + 15

#~ ## ~ /// @brief 绘制菜单项事件, 启用该功能需要调用XMenu_EnableDrawItem().
#~ ## ~ /// @code  int CALLBACK OnMenuDrawItem(HDRAW hDraw,menu_drawItem_i* pInfo,BOOL *pbHandled); @endcode

#~ const
  #~ XWM_MENU_DRAWITEM* = 0x00007000 + 16

#~ ## ~ #define  XWM_COMBOBOX_POPUP_DROPLIST   0x7000+17  //弹出下拉组框列表,内部使用
#~ ## ~ ///@brief 浮动窗格
#~ ## ~ ///@code  int CALLBACK OnWndFloatPane(HWINDOW hFloatWnd, HELE hPane, BOOL *pbHandled); @endcode

#~ const
  #~ XWM_FLOAT_PANE* = 0x00007000 + 18

#~ ## ~ ///@brief 窗口绘制完成消息
#~ ## ~ ///@code   int CALLBACK OnWndDrawWindowEnd(HDRAW hDraw,BOOL *pbHandled); @endcode

#~ const
  #~ XWM_PAINT_END* = 0x00007000 + 19

#~ ## ~ ///@brief 窗口绘制完成并且已经显示到屏幕
#~ ## ~ ///@code   int CALLBACK OnWndDrawWindowDisplay(BOOL *pbHandled); @endcode

#~ const
  #~ XWM_PAINT_DISPLAY* = 0x00007000 + 20

#~ ## ~ ///@}
#~ ## ~
#~ ## ///////////////////////////////////////////////////////////////////////////////////
#~ ## ~
#~ ## /////////////////元素事件//////////////////////////////////////////////////////////
#~ ## ~
#~ ## ///////////////////////////////////////////////////////////////////////////////////
#~ ## ~ //元素事件
#~ ## ~ /// @addtogroup eleEvents
#~ ## ~ /// @{
#~ ## ~ /// @brief 元素处理过程事件.
#~ ## ~ /// @code  int CALLBACK OnEventProc(UINT nEvent, WPARAM wParam, LPARAM lParam, BOOL *pbHandled) @endcode

const
  XE_ELEPROCE* = 1

#~ ## ~ /// @brief 元素绘制事件
#~ ## ~ /// @code  int CALLBACK OnDraw(HDRAW hDraw,BOOL *pbHandled);  @endcode

const
  XE_PAINT* = 2

#~ ## ~ /// @brief
#~ ## 该元素及子元素绘制完成事件.启用该功能需要调用XEle_EnableEvent_XE_PAINT_END();
#~ ## ~ /// @code  int CALLBACK OnPaintEnd(HDRAW hDraw,BOOL *pbHandled); @endcode

const
  XE_PAINT_END* = 3

#~ ## ~ /// @brief 滚动视图绘制事件.
#~ ## ~ /// @code int CALLBACK OnDrawScrollView(HDRAW hDraw,BOOL *pbHandled); @endcode

const
  XE_PAINT_SCROLLVIEW* = 4

#~ ## ~ /// @brief 元素鼠标移动事件.
#~ ## ~ /// @code  int CALLBACK OnMouseMove(UINT nFlags, POINT *pPt, BOOL *pbHandled);  @endcode

const
  XE_MOUSEMOVE* = 5

#~ ## ~ /// @brief 元素鼠标停留事件.
#~ ## ~ /// @code  int CALLBACK OnMouseStay(BOOL *pbHandled); @endcode

const
  XE_MOUSESTAY* = 6

#~ ## ~ /// @brief 元素鼠标悬停事件.
#~ ## ~ /// @code  int CALLBACK OnMouseHover(UINT nFlags, POINT *pPt, BOOL *pbHandled); @endcode

const
  XE_MOUSEHOVER* = 7

#~ ## ~ /// @brief 元素鼠标离开事件.
#~ ## ~ /// @param  hEleStay 将获得鼠标停留状态的元素.
#~ ## ~ /// @code  int CALLBACK OnMouseLeave(HELE hEleStay,BOOL *pbHandled); @endcode

const
  XE_MOUSELEAVE* = 8

#~ ## ~ /// @brief 元素鼠标滚轮滚动事件. 如果非滚动视图需要调用 XEle_EnableEvent_XE_MOUSEWHEEL()
#~ ## ~ /// @code  int CALLBACK OnMouseWheel(UINT nFlags,POINT *pPt,BOOL *pbHandled); @endcode
#~ ## ~ /// @param flags      见MSDN中WM_MOUSEWHEEL消息wParam参数说明.

const
  XE_MOUSEWHEEL* = 9

#~ ## ~ /// @brief 鼠标左键按下事件.
#~ ## ~ /// @code  int CALLBACK OnLButtonDown(UINT nFlags, POINT *pPt,BOOL *pbHandled);  @endcode

const
  XE_LBUTTONDOWN* = 10

#~ ## ~ /// @brief 鼠标左键弹起事件.
#~ ## ~ /// @code  int CALLBACK OnLButtonUp(UINT nFlags, POINT *pPt,BOOL *pbHandled); @endcode

const
  XE_LBUTTONUP* = 11

#~ ## ~ /// @brief 鼠标右键按下事件.
#~ ## ~ /// @code  int CALLBACK OnRButtonDown(UINT nFlags, POINT *pPt,BOOL *pbHandled);  @endcode

const
  XE_RBUTTONDOWN* = 12

#~ ## ~ /// @brief 鼠标右键弹起事件.
#~ ## ~ /// @code int CALLBACK OnRButtonUp(UINT nFlags, POINT *pPt,BOOL *pbHandled);  @endcode

const
  XE_RBUTTONUP* = 13

#~ ## ~ /// @brief 鼠标左键双击事件.
#~ ## ~ /// @code   int CALLBACK OnLButtonDBClick(UINT nFlags, POINT *pPt,BOOL *pbHandled); @endcode

const
  XE_LBUTTONDBCLICK* = 14

#~ ## #define  XE_RBUTTONDBCLICK     15
#~ ## ~ /// @brief 炫彩定时器,非系统定时器,定时器消息 XM_TIMER.
#~ ## ~ /// @code int CALLBACK OnEleXCTimer(UINT nTimerID,BOOL *pbHandled); @endcode
#~ ## ~ /// @param hEle        元素句柄.
#~ ## ~ /// @param nTimerID    定时器ID.

const
  XE_XC_TIMER* = 16

#~ ## ~ /// @brief 调整布局事件.
#~ ## ~ /// @code int CALLBACK OnAdjustLayout(int nFlags, BOOL *pbHandled); @endcode

const
  XE_ADJUSTLAYOUT* = 17

#~ ## ~ /// @brief 调整布局完成事件.
#~ ## ~ /// @code int CALLBACK OnAdjustLayoutEnd(int nFlags, BOOL *pbHandled); @endcode

const
  XE_ADJUSTLAYOUT_END* = 18

#~ ## ~ /// @brief 元素获得焦点事件.
#~ ## ~ /// @code int CALLBACK OnSetFocus(BOOL *pbHandled); @endcode

const
  XE_SETFOCUS* = 31

#~ ## ~ /// @brief 元素失去焦点事件.
#~ ## ~ /// @code int CALLBACK OnKillFocus(BOOL *pbHandled); @endcode

const
  XE_KILLFOCUS* = 32

#~ ## ~ /// @brief 元素销毁事件.
#~ ## ~ /// @code int CALLBACK OnDestroy(BOOL *pbHandled); @endcode

const
  XE_DESTROY* = 33

#~ ## ~ /// @brief 按钮点击事件.
#~ ## ~ /// @code int CALLBACK OnBtnClick(BOOL *pbHandled); @endcode

const
  XE_BNCLICK* = 34

#~ ## ~ /// @brief 按钮选中事件.
#~ ## ~ /// @code int CALLBACK OnButtonCheck(BOOL bCheck,BOOL *pbHandled); @endcode

const
  XE_BUTTON_CHECK* = 35

#~ ## ~ /// @brief 元素大小改变事件.
#~ ## ~ /// @code int CALLBACK OnSize(int nFlags, BOOL *pbHandled); @endcode

const
  XE_SIZE* = 36

#~ ## ~ /// @brief 元素显示隐藏事件.
#~ ## ~ /// @code  int CALLBACK OnShow(BOOL bShow,BOOL *pbHandled); @endcode

const
  XE_SHOW* = 37

#~ ## ~ /// @brief 元素设置字体事件.
#~ ## ~ /// @code  int CALLBACK OnSetFont(BOOL *pbHandled); @endcode

const
  XE_SETFONT* = 38

#~ ## ~ /// @brief 元素按键事件.
#~ ## ~ /// @code  int CALLBACK OnEventKeyDown(WPARAM wParam,LPARAM lParam,BOOL *pbHandled); @endcode
#~ ## ~ /// @note  wParam,lParam:请参见MSDN WM_KEYDOWN.

const
  XE_KEYDOWN* = 39

#~ ## ~ /// @brief 元素按键事件.
#~ ## ~ /// @code  int CALLBACK OnEventKeyUp(WPARAM wParam,LPARAM lParam,BOOL *pbHandled); @endcode
#~ ## ~ /// @note  wParam,lParam:请参见MSDN WM_KEYDOWN.

const
  XE_KEYUP* = 40

#~ ## ~ /// @brief 通过TranslateMessage函数翻译的字符事件.
#~ ## ~ /// @code  int CALLBACK OnEventChar(WPARAM wParam,LPARAM lParam,BOOL *pbHandled); @endcode
#~ ## ~ /// @note   wParam,lParam:请参见MSDN WM_KEYDOWN.

const
  XE_CHAR* = 41

#~ ## ~ /// @brief 元素设置鼠标捕获.
#~ ## ~ /// @code int CALLBACK OnSetCapture(BOOL *pbHandled); @endcode

const
  XE_SETCAPTURE* = 51

#~ ## ~ /// @brief 元素失去鼠标捕获.
#~ ## ~ /// @code int CALLBACK OnKillCapture(BOOL *pbHandled); @endcode

const
  XE_KILLCAPTURE* = 52

#~ ## ~ /// @brief 设置鼠标光标
#~ ## ~ /// @code int CALLBACK OnSetCursor(WPARAM wParam,LPARAM lParam,BOOL *pbHandled) @endcode

const
  XE_SETCURSOR* = 53

#~ ## ~ /// @brief 滚动视图元素水平滚动事件,滚动视图触发.
#~ ## ~ /// @code  int CALLBACK OnScrollViewScrollH(int pos,BOOL *pbHandled); @endcode
#~ ## ~ /// @param pos         当前滚动点.

const
  XE_SCROLLVIEW_SCROLL_H* = 54

#~ ## ~ /// @brief 滚动视图元素垂直滚动事件,滚动视图触发.
#~ ## ~ /// @code  int CALLBACK OnScrollViewScrollV(int pos,BOOL *pbHandled); @endcode
#~ ## ~ /// @param pos         当前滚动点.

const
  XE_SCROLLVIEW_SCROLL_V* = 55

#~ ## ~ /// @brief 滚动条元素滚动事件,滚动条触发.
#~ ## ~ /// @code  int CALLBACK OnSBarScroll(int pos,BOOL *pbHandled); @endcode
#~ ## ~ /// @param pos   当前滚动点.

const
  XE_SBAR_SCROLL* = 56

#~ ## ~ ///@brief 菜单弹出
#~ ## ~ ///@code  int CALLBACK OnMenuPopup(HMENUX hMenu, BOOL *pbHandled); @endcode

const
  XE_MENU_POPUP* = 57

#~ ## ~ ///@brief 菜单弹出窗口
#~ ## ~ ///@code  int CALLBACK OnMenuPopupWnd(HMENUX hMenu,menu_popupWnd_i* pInfo,BOOL *pbHandled); @endcode

const
  XE_MENU_POPUP_WND* = 58

#~ ## ~ /// @brief 弹出菜单项选择事件.
#~ ## ~ /// @code  int CALLBACK OnMenuSelect(int nItem,BOOL *pbHandled); @endcode
#~ ## ~ /// @param nItem          菜单项id.

const
  XE_MENU_SELECT* = 59

#~ ## ~ ///@brief 绘制菜单背景, 启用该功能需要调用XMenu_EnableDrawBackground().
#~ ## ~ ///@code  int CALLBACK OnMenuDrawBackground(HDRAW hDraw,menu_drawBackground_i *pInfo,BOOL *pbHandled); @endcode

const
  XE_MENU_DRAW_BACKGROUND* = 60

#~ ## ~ /// @brief 绘制菜单项事件, 启用该功能需要调用XMenu_EnableDrawItem().
#~ ## ~ /// @code  int CALLBACK OnMenuDrawItem(HDRAW hDraw,menu_drawItem_i* pInfo,BOOL *pbHandled); @endcode

const
  XE_MENU_DRAWITEM* = 61

#~ ## ~ /// @brief 弹出菜单退出事件.
#~ ## ~ /// @code  int CALLBACK OnMenuExit(BOOL *pbHandled); @endcode

const
  XE_MENU_EXIT* = 62

#~ ## ~ /// @brief 滑动条元素,滑块位置改变事件.
#~ ## ~ /// @code  int CALLBACK OnSliderBarChange(int pos,BOOL *pbHandled); @endcode

const
  XE_SLIDERBAR_CHANGE* = 63

#~ ## ~ /// @brief 进度条元素,进度改变事件.
#~ ## ~ /// @code  int CALLBACK OnProgressBarChange(int pos,BOOL *pbHandled); @endcode

const
  XE_PROGRESSBAR_CHANGE* = 64

#~ ## ~ /// @brief 组合框下拉列表项选择事件.
#~ ## ~ /// @code  int CALLBACK OnComboBoxSelect(int iItem,BOOL *pbHandled);  @endcode

const
  XE_COMBOBOX_SELECT* = 71

#~ ## ~ /// @brief 组合框下拉列表项选择完成事件,编辑框内容已经改变.
#~ ## ~ /// @code  int CALLBACK OnComboBoxSelectEnd(int iItem,BOOL *pbHandled);  @endcode

const
  XE_COMBOBOX_SELECT_END* = 74

#~ ## ~ /// @brief 组合框下拉列表弹出事件.
#~ ## ~ /// @code  int CALLBACK OnComboBoxPopupList(HWINDOW hWindow,HELE hListBox,BOOL *pbHandled);  @endcode

const
  XE_COMBOBOX_POPUP_LIST* = 72

#~ ## ~ /// @brief 组合框下拉列表退出事件.
#~ ## ~ /// @code  int CALLBACK OnComboBoxExitList(BOOL *pbHandled);  @endcode

const
  XE_COMBOBOX_EXIT_LIST* = 73

#~ ## ~ /// @brief 列表框元素,项模板创建.
#~ ## ~ /// @code int CALLBACK OnListBoxTemplateCreate(listBox_item_i* pItem,BOOL *pbHandled); @endcode

const
  XE_LISTBOX_TEMP_CREATE* = 81

#~ ## ~ /// @brief 列表框元素,项模板创建完成事件.
#~ ## ~ /// @code int CALLBACK OnListBoxTemplateCreateEnd(listBox_item_i* pItem,BOOL *pbHandled); @endcode

const
  XE_LISTBOX_TEMP_CREATE_END* = 82

#~ ## ~ /// @brief 列表框元素,项模板销毁.
#~ ## ~ /// @code int CALLBACK OnListBoxTemplateDestroy(listBox_item_i* pItem,BOOL *pbHandled); @endcode

const
  XE_LISTBOX_TEMP_DESTROY* = 83

#~ ## ~ /// @brief 列表框元素,项模板调整坐标.
#~ ## ~ /// @code  int CALLBACK OnListBoxTemplateAdjustCoordinate(listBox_item_i* pItem,BOOL *pbHandled); @endcode

const
  XE_LISTBOX_TEMP_ADJUST_COORDINATE* = 84

#~ ## ~ /// @brief 列表框元素,项绘制事件.
#~ ## ~ /// @code  int CALLBACK OnListBoxDrawItem(HDRAW hDraw,listBox_item_i* pItem,BOOL *pbHandled); @endcode

const
  XE_LISTBOX_DRAWITEM* = 85

#~ ## ~ /// @brief 列表框元素,项选择事件.
#~ ## ~ /// @code  int CALLBACK OnListBoxSelect(int iItem,BOOL *pbHandled);  @endcode

const
  XE_LISTBOX_SELECT* = 86

#~ ## ~ /// @brief 列表元素,项模板创建.
#~ ## ~ /// @code  int CALLBACK OnListTemplateCreate(list_item_i* pItem,BOOL *pbHandled); @endcode

const
  XE_LIST_TEMP_CREATE* = 101

#~ ## ~ /// @brief 列表元素,项模板创建完成事件.
#~ ## ~ /// @code  int CALLBACK OnListTemplateCreateEnd(list_item_i* pItem,BOOL *pbHandled); @endcode

const
  XE_LIST_TEMP_CREATE_END* = 102

#~ ## ~ /// @brief 列表元素,项模板销毁.
#~ ## ~ /// @code int CALLBACK OnListTemplateDestroy(list_item_i* pItem,BOOL *pbHandled); @endcode

const
  XE_LIST_TEMP_DESTROY* = 103

#~ ## ~ /// @brief 列表元素,项模板调整坐标.
#~ ## ~ /// @code  typedef int CALLBACK OnListTemplateAdjustCoordinate(list_item_i* pItem,BOOL *pbHandled); @endcode

const
  XE_LIST_TEMP_ADJUST_COORDINATE* = 104

#~ ## ~ /// @brief 列表元素,绘制项.
#~ ## ~ /// @code  int CALLBACK OnListDrawItem(HDRAW hDraw,list_item_i* pItem,BOOL *pbHandled); @endcode

const
  XE_LIST_DRAWITEM* = 105

#~ ## ~ /// @brief 列表元素,项选择事件.
#~ ## ~ /// @code  int CALLBACK OnListSelect(int iItem,BOOL *pbHandled); @endcode

const
  XE_LIST_SELECT* = 106

#~ ## ~ /// @brief 列表元素绘制列表头项.
#~ ## ~ /// @code  int CALLBACK OnListHeaderDrawItem(HDRAW hDraw, list_header_item_i* pItem, BOOL *pbHandled); @endcode

const
  XE_LIST_HEADER_DRAWITEM* = 107

#~ ## ~ /// @brief 列表元素,列表头项点击事件.
#~ ## ~ /// @code  int CALLBACK OnListHeaderClick(int iItem, BOOL *pbHandled); @endcode

const
  XE_LIST_HEADER_CLICK* = 108

#~ ## ~ /// @brief 列表元素,列表头项宽度改变事件.
#~ ## ~ /// @code  int CALLBACK OnListHeaderItemWidthChange(int iItem, int nWidth BOOL *pbHandled); @endcode

const
  XE_LIST_HEADER_WIDTH_CHANGE* = 109

#~ ## ~ /// @brief 列表元素,列表头项模板创建.
#~ ## ~ /// @code  int CALLBACK OnListHeaderTemplateCreate(list_header_item_i* pItem,BOOL *pbHandled); @endcode

const
  XE_LIST_HEADER_TEMP_CREATE* = 110

#~ ## ~ /// @brief 列表元素,列表头项模板创建完成事件.
#~ ## ~ /// @code  int CALLBACK OnListHeaderTemplateCreateEnd(list_header_item_i* pItem,BOOL *pbHandled); @endcode

#~ const
  #~ XE_LIST_HEADER_TEMP_CREATE_END* = 111

#~ ## ~ /// @brief 列表元素,列表头项模板销毁.
#~ ## ~ /// @code int CALLBACK OnListHeaderTemplateDestroy(list_header_item_i* pItem,BOOL *pbHandled); @endcode

#~ const
  #~ XE_LIST_HEADER_TEMP_DESTROY* = 112

#~ ## ~ /// @brief 列表元素,列表头项模板调整坐标.
#~ ## ~ /// @code  typedef int CALLBACK OnListHeaderTemplateAdjustCoordinate(list_header_item_i* pItem,BOOL *pbHandled); @endcode

#~ const
  #~ XE_LIST_HEADER_TEMP_ADJUST_COORDINATE* = 113

#~ ## ~ /// @brief 树元素,项模板创建.
#~ ## ~ /// @code  int CALLBACK OnTreeTemplateCreate(tree_item_i* pItem,BOOL *pbHandled); @endcode

#~ const
  #~ XE_TREE_TEMP_CREATE* = 121

#~ ## ~ /// @brief 树元素,项模板创建完成.
#~ ## ~ /// @code  int CALLBACK OnTreeTemplateCreateEnd(tree_item_i* pItem,BOOL *pbHandled); @endcode

#~ const
  #~ XE_TREE_TEMP_CREATE_END* = 122

#~ ## ~ /// @brief 树元素,项模板销毁.
#~ ## ~ /// @code  int CALLBACK OnTreeTemplateDestroy(tree_item_i* pItem,BOOL *pbHandled); @endcode

#~ const
  #~ XE_TREE_TEMP_DESTROY* = 123

#~ ## ~ /// @brief 树元素,项模板,调整项坐标.
#~ ## ~ /// @code  int CALLBACK OnTreeTemplateAdjustCoordinate(tree_item_i* pItem,BOOL *pbHandled); @endcode

#~ const
  #~ XE_TREE_TEMP_ADJUST_COORDINATE* = 124

#~ ## ~ /// @brief 树元素,绘制项.
#~ ## ~ /// @code  int CALLBACK OnTreeDrawItem(HDRAW hDraw,tree_item_i* pItem,BOOL *pbHandled); @endcode

#~ const
  #~ XE_TREE_DRAWITEM* = 125

#~ ## ~ /// @brief 树元素,项选择事件.
#~ ## ~ /// @code  int CALLBACK OnTreeSelect(int nItemID,BOOL *pbHandled); @endcode
#~ ## ~ /// @param nItemID  项ID.

#~ const
  #~ XE_TREE_SELECT* = 126

#~ ## ~ /// @brief 树元素,项展开收缩事件.
#~ ## ~ /// @code int CALLBACK OnTreeExpand(int id,BOOL bExpand,BOOL *pbHandled); @endcode

#~ const
  #~ XE_TREE_EXPAND* = 127

#~ ## ~ /// @brief 树元素,用户正在拖动项, 可对参数值修改.
#~ ## ~ /// @code int CALLBACK OnTreeDragItemIng(tree_drag_item_i* pInfo, BOOL *pbHandled); @endcode

#~ const
  #~ XE_TREE_DRAG_ITEM_ING* = 128

#~ ## / @brief 树元素,拖动项事件.
#~ ## / @code int CALLBACK OnTreeDragItem(tree_drag_item_i* pInfo, BOOL *pbHandled); @endcode

#~ const
  #~ XE_TREE_DRAG_ITEM* = 129

#~ ## ~ /// @brief 列表视元素,项模板创建.
#~ ## ~ /// @code  int CALLBACK OnListViewTemplateCreate(listView_item_i* pItem,BOOL *pbHandled); @endcode

#~ const
  #~ XE_LISTVIEW_TEMP_CREATE* = 141

#~ ## ~ /// @brief 列表视元素,项模板创建完成事件.
#~ ## ~ /// @code  int CALLBACK OnListViewTemplateCreateEnd(listView_item_i* pItem,BOOL *pbHandled); @endcode

#~ const
  #~ XE_LISTVIEW_TEMP_CREATE_END* = 142

#~ ## ~ /// @brief 列表视元素,项模板销毁.
#~ ## ~ /// @code  int CALLBACK OnListViewTemplateDestroy(listView_item_i* pItem,BOOL *pbHandled); @endcode

#~ const
  #~ XE_LISTVIEW_TEMP_DESTROY* = 143

#~ ## ~ /// @brief 列表视元素,项模板调整坐标.
#~ ## ~ /// @code  int CALLBACK OnListViewTemplateAdjustCoordinate(listView_item_i* pItem,BOOL *pbHandled); @endcode

#~ const
  #~ XE_LISTVIEW_TEMP_ADJUST_COORDINATE* = 144

#~ ## ~ /// @brief 列表视元素,自绘项.
#~ ## ~ /// @code int CALLBACK OnListViewDrawItem(HDRAW hDraw,listView_item_i* pItem,BOOL *pbHandled);  @endcode

#~ const
  #~ XE_LISTVIEW_DRAWITEM* = 145

#~ ## ~ /// @brief 列表视元素,项选择事件.
#~ ## ~ /// @code int CALLBACK OnListViewSelect(int iGroup,int iItem,BOOL *pbHandled); @endcode

#~ const
  #~ XE_LISTVIEW_SELECT* = 146

#~ ## ~ /// @brief 列表视元素,组展开收缩事件.
#~ ## ~ /// @code int CALLBACK OnListViewExpand(int iGroup,BOOL bExpand,BOOL *pbHandled); @endcode

#~ const
  #~ XE_LISTVIEW_EXPAND* = 147

#~ ## ~ /// @brief 属性网格元素 项值改变事件
#~ ## ~ /// @code   int CALLBACK OnPGridValueChange(int nItemID,BOOL *pbHandled); @endcode
#~ ## ~ /// @param  nItemID  项ID.

#~ const
  #~ XE_PGRID_VALUE_CHANGE* = 151

#~ ## ~ /// @code int CALLBACK OnPGridItemSet(int nItemID, BOOL *pbHandled);  @endcode

#~ const
  #~ XE_PGRID_ITEM_SET* = 152

#~ ## ~ /// @code int CALLBACK OnPGridItemSelect(int nItemID, BOOL *pbHandled);  @endcode

#~ const
  #~ XE_PGRID_ITEM_SELECT* = 153

#~ ## ~ /// @code int CALLBACK OnPGridItemAdjustCoordinate(propertyGrid_item_i* pItem, BOOL *pbHandled);  @endcode

#~ const
  #~ XE_PGRID_ITEM_ADJUST_COORDINATE* = 154

#~ ## ~ /// @code int CALLBACK OnPGridItemDestroy(int nItemID, BOOL *pbHandled);  @endcode

#~ const
  #~ XE_PGRID_ITEM_DESTROY* = 155

#~ ## ~ /// @code int CALLBACK OnPGridItemExpand(int nItemID, BOOL bExpand, BOOL *pbHandled); @endcode

#~ const
  #~ XE_PGRID_ITEM_EXPAND* = 156

#~ ## ~ /// @brief 富文本元素
#~ ## 用户修改内容事件,只有当用户操作时才会触发,需要开启后有效, XRichEdit_EnableEvent_XE_RICHEDIT_CHANGE()；
#~ ## ~ /// XRichEdit_SetText()、 XRichEdit_InsertString()不会触发此事件
#~ ## ~ /// @code   int CALLBACK OnRichEditChange(BOOL *pbHandled); @endcode

#~ const
  #~ XE_RICHEDIT_CHANGE* = 161

#~ ## ~ /// @code int CALLBACK OnRichEditSet(BOOL *pbHandled);  @endcode

#~ const
  #~ XE_RICHEDIT_SET* = 162

#~ ## ~ /// @code int CALLBACK OnEditorChanged(BOOL *pbHandled);  @endcode

#~ const
  #~ XE_EDIT_CHANGED* = 181

#~ ## ~ /// @code int CALLBACK OnEditDrawRow(HDRAW hDraw, int iRow, BOOL *pbHandled);  @endcode

#~ const
  #~ XE_EDIT_DRAWROW* = 182

#~ ## ~ /// @code int CALLBACK OnEditPosChanged(int iPos, BOOL *pbHandled);  @endcode

#~ const
  #~ XE_EDIT_POS_CHANGED* = 183

#~ ## ~ /// @code int CALLBACK OnEditorSetBreakpoint(int iRow, BOOL bCheck, BOOL *pbHandled);  @endcode

#~ const
  #~ XE_EDITOR_SETBREAKPOINT* = 191

#~ ## ~ /// @code int CALLBACK OnEditorRemoveBreakpoint(int iRow, BOOL *pbHandled);  @endcode

#~ const
  #~ XE_EDITOR_REMOVEBREAKPOINT* = 192

#~ ## ~ /// @code int CALLBACK OnEditorBreakpointChanged(int iRow, int iChangeRows, BOOL *pbHandled);  @endcode

#~ const
  #~ XE_EDITOR_BREAKPOINT_CHANGED* = 193

#~ ## ~ /// @brief  TabBar标签按钮选择改变事件
#~ ## ~ /// @code   int CALLBACK OnTabBarSelect(int iItem, BOOL *pbHandled); @endcode
#~ ## ~ /// @param  iItem  标签位置索引.

#~ const
  #~ XE_TABBAR_SELECT* = 221

#~ ## ~ /// @brief  TabBar标签按钮删除事件
#~ ## ~ /// @code   int CALLBACK OnTabBarDelete(int iItem, BOOL *pbHandled); @endcode
#~ ## ~ /// @param  iItem  标签位置索引.

#~ const
  #~ XE_TABBAR_DELETE* = 222

#~ ## ~ /// @brief  月历元素日期改变事件, 未开放
#~ ## ~ /// @code   int CALLBACK OnCalendarChange(BOOL *pbHandled); @endcode

#~ const
  #~ XE_MONTHCAL_CHANGE* = 231

#~ ## ~ /// @brief  日期时间元素,内容改变事件, 未开放
#~ ## ~ /// @code   int CALLBACK OnDateTimeChange(BOOL *pbHandled); @endcode

#~ const
  #~ XE_DATETIME_CHANGE* = 241

#~ ## ~ /// @brief  日期时间元素,弹出月历卡片事件, 未开放
#~ ## ~ /// @code   int CALLBACK OnDateTimePopupMonthCal(HWINDOW hMonthCalWnd,HELE hMonthCal,BOOL *pbHandled); @endcode

#~ const
  #~ XE_DATETIME_POPUP_MONTHCAL* = 242

#~ ## ~ /// @brief  日期时间元素,弹出的月历卡片退出事件, 未开放
#~ ## ~ /// @code   int CALLBACK OnDateTimeExitMonthCal(HWINDOW hMonthCalWnd,HELE hMonthCal,BOOL *pbHandled); @endcode

#~ const
  #~ XE_DATETIME_EXIT_MONTHCAL* = 243

#~ ## ~ /// @brief  文件拖放事件.
#~ ## ~ /// @code   int CALLBACK OnDropFiles(HDROP hDropInfo, BOOL *pbHandled); @endcode

#~ const
  #~ XE_DROPFILES* = 250

#~ ## ~ #define  XE_LISTVIEW_DRAG_INSERT
#~ ## ~ #define  XE_PANE_LOACK
#~ ## ~ #define  XE_PANE_DOCK
#~ ## ~ #define  XE_PANE_FLOAT
#~ ## ~ #define  XE_EDIT_CHANGE
#~ ## ~ ///@}
#~ ## ~
#~ ## ///////////////////////////////////////////////////////////////////////////////////
#~ ## ~
#~ ## /////////////事件注册//////////////////////////////////////////////////////////////
#~ ## ~
#~ ## ///////////////////////////////////////////////////////////////////////////////////
#~ ## ~ class bind_event_cpp
#~ ## ~ {
#~ ## ~ public:
#~ ## ~ virtual BOOL  Equal(bind_event_cpp* p)=0;
#~ ## ~ virtual void* GetThis()=0;
#~ ## ~ virtual void* GetMFun(int &nSize)=0;
#~ ## ~ virtual int HandleEvent(int regType, HELE hEle,HELE hEventEle, UINT nEvent, WPARAM wParam, LPARAM lParam, BOOL *pbHandled)=0;
#~ ## ~ virtual int HandleEventWnd(int regType, HWINDOW hWindow, UINT nEvent, WPARAM wParam, LPARAM lParam, BOOL *pbHandled)=0;
#~ ## ~ };
#~ ## ~ template<class R, class C, class F>
#~ ## ~ class bind_event_cpp_ : public bind_event_cpp
#~ ## ~ {
#~ ## ~ public:
#~ ## ~ bind_event_cpp_(C* c,F f) :_c(c), _f(f){ }
#~ ## ~ virtual BOOL Equal(bind_event_cpp* p){
#~ ## ~ if(_c!=p->GetThis())
#~ ## ~ return FALSE;
#~ ## ~ int size=0;
#~ ## ~ void*  f=p->GetMFun(size);
#~ ## ~ if(sizeof(F)==size)
#~ ## ~ {
#~ ## ~ if(0==memcmp(f,&_f, size))
#~ ## ~ return TRUE;
#~ ## ~ }
#~ ## ~ return FALSE;
#~ ## ~ }
#~ ## ~ virtual void* GetThis(){ return (void*)_c;}
#~ ## ~ virtual void* GetMFun(int &nSize){ nSize=sizeof(F); return &_f; }
#~ ## ~ template<class H,class A1>
#~ ## ~ int CallT( int (C::*f)(A1),int regType, H hEleOrWindow,H hEventEle, UINT nEvent, WPARAM wParam, LPARAM lParam, BOOL *pbHandled)
#~ ## ~ {
#~ ## ~ if(0==regType)
#~ ## ~ return (_c->*f)(pbHandled);
#~ ## ~ MessageBoxA(NULL,"HandleEvent_cpp_Call a1","error",0);
#~ ## ~ return 0;
#~ ## ~ }
#~ ## ~ template<class H,class A1,class A2>
#~ ## ~ int CallT( int (C::*f)(A1,A2),int regType, H hEleOrWindow,H hEventEle, UINT nEvent, WPARAM wParam, LPARAM lParam, BOOL *pbHandled)
#~ ## ~ {
#~ ## ~ if(0==regType)
#~ ## ~ return (_c->*f)((A1)wParam,pbHandled);
#~ ## ~ else if(1==regType)
#~ ## ~ return (_c->*f)((A1)hEventEle, pbHandled);
#~ ## ~ MessageBoxA(NULL,"HandleEvent_cpp_Call a2","error",0);
#~ ## ~ return 0;
#~ ## ~ }
#~ ## ~ template<class H,class A1,class A2,class A3>
#~ ## ~ int CallT( int (C::*f)(A1,A2,A3),int regType, H hEleOrWindow,H hEventEle, UINT nEvent, WPARAM wParam, LPARAM lParam, BOOL *pbHandled)
#~ ## ~ {
#~ ## ~ if(0==regType)
#~ ## ~ return (_c->*f)((A1)wParam, (A2)lParam,pbHandled);
#~ ## ~ else if(1==regType)
#~ ## ~ return (_c->*f)((A1)hEventEle, (A2)wParam,pbHandled);
#~ ## ~ else if(2==regType)
#~ ## ~ return (_c->*f)((A1)hEleOrWindow, (A2)hEventEle,pbHandled);
#~ ## ~ MessageBoxA(NULL,"HandleEvent_cpp_Call a3","error",0);
#~ ## ~ return 0;
#~ ## ~ }
#~ ## ~ template<class H,class A1,class A2,class A3,class A4>
#~ ## ~ int CallT( int (C::*f)(A1,A2,A3,A4),int regType, H hEleOrWindow,H hEventEle, UINT nEvent, WPARAM wParam, LPARAM lParam, BOOL *pbHandled)
#~ ## ~ {
#~ ## ~ if(0==regType)
#~ ## ~ return (_c->*f)((A1)nEvent, (A2)wParam, (A3)lParam,pbHandled);
#~ ## ~ if(1==regType)
#~ ## ~ return (_c->*f)((A1)hEventEle, (A2)wParam, (A3)lParam,pbHandled);
#~ ## ~ else if(2==regType)
#~ ## ~ return (_c->*f)((A1)hEleOrWindow,(A2)hEventEle, (A3)wParam,pbHandled);
#~ ## ~ MessageBoxA(NULL,"HandleEvent_cpp_Call a4","error",0);
#~ ## ~ return 0;
#~ ## ~ }
#~ ## ~ template<class H,class A1,class A2,class A3,class A4,class A5>
#~ ## ~ int CallT( int (C::*f)(A1,A2,A3,A4,A5),int regType, H hEleOrWindow,H hEventEle, UINT nEvent, WPARAM wParam, LPARAM lParam, BOOL *pbHandled)
#~ ## ~ {
#~ ## ~ if(1==regType)
#~ ## ~ return (_c->*f)((A1)hEventEle, (A2)nEvent, (A3)wParam, (A4)lParam, pbHandled);
#~ ## ~ else if(2==regType)
#~ ## ~ return (_c->*f)((A1)hEleOrWindow, (A2)hEventEle, (A3)wParam, (A4)lParam, pbHandled);
#~ ## ~ MessageBoxA(NULL,"HandleEvent_cpp_Call a5","error",0);
#~ ## ~ return 0;
#~ ## ~ }
#~ ## ~ virtual int HandleEvent(int regType, HELE hEle,HELE hEventEle, UINT nEvent, WPARAM wParam, LPARAM lParam, BOOL *pbHandled)
#~ ## ~ {
#~ ## ~ return CallT(_f,regType,hEle,hEventEle,nEvent,wParam,lParam,pbHandled);
#~ ## ~ }
#~ ## ~ virtual int HandleEventWnd(int regType, HWINDOW hWindow, UINT nEvent, WPARAM wParam, LPARAM lParam, BOOL *pbHandled)
#~ ## ~ {
#~ ## ~ return CallT(_f,regType,hWindow,hWindow,nEvent,wParam,lParam,pbHandled);
#~ ## ~ }
#~ ## ~ C*  _c;
#~ ## ~ F   _f;
#~ ## ~ };
#~ ## ~ struct bind_event_c
#~ ## ~ {
#~ ## ~ enum MyEnum
#~ ## ~ {
#~ ## ~ event_c_ex,
#~ ## ~ event_lua_ex,
#~ ## ~ event_js_ex,
#~ ## ~ } type;
#~ ## ~ virtual ~bind_event_c() {}
#~ ## ~ virtual BOOL Equal(bind_event_c* p) { return FALSE; };
#~ ## ~ virtual void*  GetFunc() { return nullptr; };
#~ ## ~ virtual int HandleEvent(int regType, HELE hEle, HELE hEventEle, UINT nEvent, WPARAM wParam, LPARAM lParam, BOOL *pbHandled) { return 0;  };
#~ ## ~ virtual int HandleEventWnd(int regType, HWINDOW hWindow, UINT nEvent, WPARAM wParam, LPARAM lParam, BOOL *pbHandled) { return 0; };
#~ ## ~ };
#~ ## ~ struct xc_event
#~ ## ~ {
#~ ## ~ xc_event(int regType,const char* pFunName){
#~ ## ~ m_pBind=0;
#~ ## ~ m_pFunC=0;
#~ ## ~ m_name[0]=0;
#~ ## ~ m_regType=regType;
#~ ## ~ if(pFunName) strcpy_s(m_name,pFunName);
#~ ## ~ }
#~ ## ~ int            m_regType;   //注册类型, 0:CPP,1:CPP1,2:CPP2
#~ ## ~ bind_event_cpp*  m_pBind;     //C++事件回调
#~ ## ~ bind_event_c*    m_pFunC;     //C事件回调
#~ ## ~ char           m_name[MAX_PATH]; //函数名
#~ ## ~ BOOL Equal(xc_event* pEvent){
#~ ## ~ if(m_pBind && pEvent->m_pBind)
#~ ## ~ return (m_pBind->Equal(pEvent->m_pBind));
#~ ## ~ if(m_pFunC && pEvent->m_pFunC)
#~ ## ~ return (m_pFunC->Equal(pEvent->m_pFunC));
#~ ## ~ return FALSE;
#~ ## ~ }
#~ ## ~ BOOL Equal(void* pFunc){
#~ ## ~ if(m_pFunC){
#~ ## ~ if(m_pFunC->GetFunc()==pFunc)
#~ ## ~ return TRUE;
#~ ## ~ }
#~ ## ~ return FALSE;
#~ ## ~ }
#~ ## ~ int HandleEvent(HELE hEle,HELE hEventEle, UINT nEvent, WPARAM wParam, LPARAM lParam, BOOL *pbHandled)
#~ ## ~ {
#~ ## ~ if(m_pBind)
#~ ## ~ return m_pBind->HandleEvent(m_regType,hEle,hEventEle,nEvent,wParam,lParam,pbHandled);
#~ ## ~ if(m_pFunC)
#~ ## ~ return m_pFunC->HandleEvent(m_regType,hEle,hEventEle, nEvent, wParam, lParam, pbHandled);
#~ ## ~ MessageBoxA(NULL,"HandleEvent()","error",0);
#~ ## ~ return 0;
#~ ## ~ }
#~ ## ~ int HandleEventWnd(HWINDOW hWindow, UINT nEvent, WPARAM wParam, LPARAM lParam, BOOL *pbHandled)
#~ ## ~ {
#~ ## ~ if(m_pBind)
#~ ## ~ return m_pBind->HandleEventWnd(m_regType,hWindow, nEvent,wParam,lParam,pbHandled);
#~ ## ~ if(m_pFunC)
#~ ## ~ return m_pFunC->HandleEventWnd(m_regType,hWindow, nEvent, wParam, lParam, pbHandled);
#~ ## ~ MessageBoxA(NULL,"HandleEventWnd()","error",0);
#~ ## ~ return 0;
#~ ## ~ }
#~ ## ~ char* GetFunName(){ return m_name; }
#~ ## ~ virtual void Release(){
#~ ## ~ if(m_pBind) delete m_pBind;
#~ ## ~ if(m_pFunC) delete m_pFunC;
#~ ## ~ delete this;
#~ ## ~ }
#~ ## ~ };
#~ ## ~ template<class R,class C,class F>
#~ ## ~ BOOL XEle_RegEventCPP_tt(HXCGUI hXCGUI, UINT nEvent,int regType, BOOL bEle, C* c, F f,const char* pFunName){
#~ ## ~ BOOL bResult=TRUE;
#~ ## ~ bind_event_cpp*  pBind=new bind_event_cpp_<R,C, F>(c, f);
#~ ## ~ xc_event*  pEvent=new xc_event(regType,pFunName);
#~ ## ~ pEvent->m_pBind=pBind;
#~ ## ~ if(-1==regType){
#~ ## ~ bResult=_XEle_RemoveEvent((HELE)hXCGUI, nEvent, pEvent);
#~ ## ~ pEvent->Release();
#~ ## ~ }else{
#~ ## ~ if(bEle){
#~ ## ~ if(FALSE==_XEle_RegEvent((HELE)hXCGUI, nEvent, pEvent))
#~ ## ~ {
#~ ## ~ pEvent->Release();
#~ ## ~ bResult=FALSE;
#~ ## ~ }
#~ ## ~ }else{
#~ ## ~ if(FALSE==_XWnd_RegEvent((HWINDOW)hXCGUI, nEvent, pEvent))
#~ ## ~ {
#~ ## ~ pEvent->Release();
#~ ## ~ bResult=FALSE;
#~ ## ~ }
#~ ## ~ }
#~ ## ~ }
#~ ## ~ return bResult;
#~ ## ~ }
#~ ## ~ template<class R, class C, class CT, class A1>
#~ ## ~ BOOL XCGUI_RegEventCPP_t(HXCGUI hXCGUI, UINT nEvent, int type, BOOL bEle, C* c, R (CT::*f)(A1), const char* pFunName){
#~ ## ~ return XEle_RegEventCPP_tt<R>(hXCGUI,nEvent,type,bEle,(CT*)c,f, pFunName);}
#~ ## ~ template<class R, class C, class CT, class A1, class A2>
#~ ## ~ BOOL XCGUI_RegEventCPP_t(HXCGUI hXCGUI, UINT nEvent, int type, BOOL bEle, C* c, R (CT::*f)(A1,A2), const char* pFunName){
#~ ## ~ return XEle_RegEventCPP_tt<R>(hXCGUI,nEvent,type,bEle,(CT*)c,f, pFunName);}
#~ ## ~ template<class R, class C, class CT, class A1, class A2, class A3>
#~ ## ~ BOOL XCGUI_RegEventCPP_t(HXCGUI hXCGUI, UINT nEvent, int type, BOOL bEle, C* c, R (CT::*f)(A1,A2,A3), const char* pFunName){
#~ ## ~ return XEle_RegEventCPP_tt<R>(hXCGUI,nEvent,type,bEle,(CT*)c,f, pFunName);}
#~ ## ~ template<class R, class C, class CT, class A1, class A2, class A3,class A4>
#~ ## ~ BOOL XCGUI_RegEventCPP_t(HXCGUI hXCGUI, UINT nEvent, int type, BOOL bEle, C* c, R (CT::*f)(A1,A2,A3,A4), const char* pFunName){
#~ ## ~ return XEle_RegEventCPP_tt<R>(hXCGUI,nEvent,type,bEle,(CT*)c,f, pFunName);}
#~ ## ~ template<class R, class C, class CT,class A1, class A2, class A3, class A4, class A5>
#~ ## ~ BOOL XCGUI_RegEventCPP_t(HXCGUI hXCGUI, UINT nEvent, int type, BOOL bEle, C* c, R (CT::*f)(A1,A2,A3,A4,A5), const char* pFunName){
#~ ## ~ return XEle_RegEventCPP_tt<R>(hXCGUI,nEvent,type,bEle,(CT*)c,f, pFunName);}
#~ ## ~ #define XEle_RegEventCPP(hXCGUI,Event,mFun)  XCGUI_RegEventCPP_t(hXCGUI,Event,0,TRUE,this,mFun,#mFun)
#~ ## ~ #define XEle_RegEventCPP1(hXCGUI,Event,mFun)  XCGUI_RegEventCPP_t(hXCGUI,Event,1,TRUE,this,mFun,#mFun)
#~ ## ~ #define XEle_RegEventCPP2(hXCGUI,Event,mFun)  XCGUI_RegEventCPP_t(hXCGUI,Event,2,TRUE,this,mFun,#mFun)
#~ ## ~ #define XEle_RemoveEventCPP(hXCGUI,Event,mFun) XCGUI_RegEventCPP_t(hXCGUI,Event,-1,TRUE,this,mFun,#mFun)
#~ ## ~ #define XWnd_RegEventCPP(hXCGUI,Event,mFun)  XCGUI_RegEventCPP_t(hXCGUI,Event,0,FALSE,this,mFun,#mFun)
#~ ## ~ #define XWnd_RegEventCPP1(hXCGUI,Event,mFun)  XCGUI_RegEventCPP_t(hXCGUI,Event,1,FALSE,this,mFun,#mFun)
#~ ## ~ #define XWnd_RemoveEventCPP(hXCGUI,Event,mFun) XCGUI_RegEventCPP_t(hXCGUI,Event,-1,FALSE,this,mFun,#mFun)
#~ ## ~ //hEle      接收事件的元素句柄
#~ ## ~ //hEventEle 触发事件的元素句柄
#~ ## ~ //////////////////////////////////////////////////////////////////////


proc XCloudUI_Init*(): BOOL {.cdecl, importc: "XCloudUI_Init", dynlib: xcgui, discardable.}

proc XCloudUI_OpenAppCmd*(pCmdLine: ptr WCHAR): BOOL {.cdecl,
    importc: "XCloudUI_OpenAppCmd", dynlib: xcgui, discardable.}

proc XCloudUI_Exit*() {.cdecl, importc: "XCloudUI_Exit", dynlib: xcgui, discardable.}

proc XCloudUI_EnableDependBrowser*(bEnable: BOOL) {.cdecl,
    importc: "XCloudUI_EnableDependBrowser", dynlib: xcgui, discardable.}

proc XCloudUI_EnableTipsWindow*(bEnable: BOOL) {.cdecl,
    importc: "XCloudUI_EnableTipsWindow", dynlib: xcgui, discardable.}

proc XCloudUI_OpenUrl*(pUrl: ptr WCHAR): BOOL {.cdecl, importc: "XCloudUI_OpenUrl",
    dynlib: xcgui, discardable.}

#~ proc XCloudUI_SetEventCallback*(pFun: funCloudEvent) {.cdecl,
    #~ importc: "XCloudUI_SetEventCallback", dynlib: xcgui, discardable.}


proc XCloudUI_GetAppDir*(pOut: ptr WCHAR; nOutlen: cint): cint {.cdecl,
    importc: "XCloudUI_GetAppDir", dynlib: xcgui, discardable.}

proc XDateTime_Create*(x: cint; y: cint; cx: cint; cy: cint; hParent: HXCGUI): HELE {.cdecl,
    importc: "XDateTime_Create", dynlib: xcgui, discardable.}

proc XDateTime_SetStyle*(hEle: HELE; nStyle: cint) {.cdecl,
    importc: "XDateTime_SetStyle", dynlib: xcgui, discardable.}

proc XDateTime_GetStyle*(hEle: HELE): cint {.cdecl, importc: "XDateTime_GetStyle",
    dynlib: xcgui, discardable.}

proc XDateTime_EnableSplitSlash*(hEle: HELE; bSlash: BOOL) {.cdecl,
    importc: "XDateTime_EnableSplitSlash", dynlib: xcgui, discardable.}

proc XDateTime_GetTime*(hEle: HELE; pnHour: ptr cint; pnMinute: ptr cint;
                       pnSecond: ptr cint) {.cdecl, importc: "XDateTime_GetTime",
    dynlib: xcgui, discardable.}

proc XDateTime_SetTime*(hEle: HELE; nHour: cint; nMinute: cint; nSecond: cint) {.cdecl,
    importc: "XDateTime_SetTime", dynlib: xcgui, discardable.}

proc XDateTime_GetDate*(hEle: HELE; pnYear: ptr cint; pnMonth: ptr cint; pnDay: ptr cint) {.
    cdecl, importc: "XDateTime_GetDate", dynlib: xcgui, discardable.}

proc XDateTime_SetDate*(hEle: HELE; nYear: cint; nMonth: cint; nDay: cint) {.cdecl,
    importc: "XDateTime_SetDate", dynlib: xcgui, discardable.}

proc XDateTime_GetSelBkColor*(hEle: HELE): COLORREF {.cdecl,
    importc: "XDateTime_GetSelBkColor", dynlib: xcgui, discardable.}

proc XDateTime_SetSelBkColor*(hEle: HELE; crSelectBk: COLORREF; alpha: BYTE = 255) {.
    cdecl, importc: "XDateTime_SetSelBkColor", dynlib: xcgui, discardable.}

proc XDateTime_GetButton*(hEle: HELE; nType: cint): HELE {.cdecl,
    importc: "XDateTime_GetButton", dynlib: xcgui, discardable.}

proc XMonthCal_Create*(x: cint; y: cint; cx: cint; cy: cint; hParent: HXCGUI): HELE {.cdecl,
    importc: "XMonthCal_Create", dynlib: xcgui, discardable.}

proc XMonthCal_SetToday*(hEle: HELE; nYear: cint; nMonth: cint; nDay: cint) {.cdecl,
    importc: "XMonthCal_SetToday", dynlib: xcgui, discardable.}

proc XMonthCal_GetToday*(hEle: HELE; pnYear: ptr cint; pnMonth: ptr cint; pnDay: ptr cint) {.
    cdecl, importc: "XMonthCal_GetToday", dynlib: xcgui, discardable.}

proc XMonthCal_SeSelDate*(hEle: HELE; nYear: cint; nMonth: cint; nDay: cint) {.cdecl,
    importc: "XMonthCal_SeSelDate", dynlib: xcgui, discardable.}

proc XMonthCal_GetSelDate*(hEle: HELE; pnYear: ptr cint; pnMonth: ptr cint;
                          pnDay: ptr cint) {.cdecl, importc: "XMonthCal_GetSelDate",
    dynlib: xcgui, discardable.}

#~ proc XMonthCal_GetButton*(hEle: HELE; nType: monthCal_button_type_): HELE {.cdecl,
    #~ importc: "XMonthCal_GetButton", dynlib: xcgui, discardable.}

#~ proc XC_InitLua*(): ptr lua_State {.cdecl, importc: "XC_InitLua", dynlib: xcgui, discardable.}
#~ proc XC_RunLua*(pLuaFile: cstring): BOOL {.cdecl, importc: "XC_RunLua", dynlib: xcgui, discardable.}
#~ proc XC_ExitLua*(): BOOL {.cdecl, importc: "XC_ExitLua", dynlib: xcgui, discardable.}


proc XC_UnicodeToAnsi*(pIn: ptr WCHAR; inLen: cint; pOut: cstring; outLen: cint): cint {.
    cdecl, importc: "XC_UnicodeToAnsi", dynlib: xcgui, discardable.}

proc XC_AnsiToUnicode*(pIn: cstring; inLen: cint; pOut: ptr WCHAR; outLen: cint): cint {.
    cdecl, importc: "XC_AnsiToUnicode", dynlib: xcgui, discardable.}

proc XC_MessageBox*(hWindow: HWINDOW; pText: ptr WCHAR; pCaption: ptr WCHAR;
                   nFlags: cint): cint {.cdecl, importc: "XC_MessageBox",
                                      dynlib: xcgui, discardable.}

proc XC_SendMessage*(hWindow: HWINDOW; msg: UINT; wParam: WPARAM; lParam: LPARAM): LRESULT {.
    cdecl, importc: "XC_SendMessage", dynlib: xcgui, discardable.}

proc XC_PostMessage*(hWindow: HWINDOW; msg: UINT; wParam: WPARAM; lParam: LPARAM): BOOL {.
    cdecl, importc: "XC_PostMessage", dynlib: xcgui, discardable.}

#~ proc XC_CallUiThread*(pCall: funCallUiThread; data: cint): cint {.cdecl,
    #~ importc: "XC_CallUiThread", dynlib: xcgui, discardable.}


proc XC_DebugToFileInfo*(pInfo: cstring) {.cdecl, importc: "XC_DebugToFileInfo",
                                        dynlib: xcgui, discardable.}
## 打印调试信息到文件 xcgui_debug.txt


proc XC_IsHELE*(hEle: HXCGUI): BOOL {.cdecl, importc: "XC_IsHELE", dynlib: xcgui, discardable.}
## 检查句柄


proc XC_IsHWINDOW*(hWindow: HXCGUI): BOOL {.cdecl, importc: "XC_IsHWINDOW",
                                        dynlib: xcgui, discardable.}
## 检查句柄


proc XC_IsShape*(hShape: HXCGUI): BOOL {.cdecl, importc: "XC_IsShape", dynlib: xcgui, discardable.}
## 检查句柄


proc XC_IsHXCGUI*(hXCGUI: HXCGUI; nType: XC_OBJECT_TYPE): BOOL {.cdecl,
    importc: "XC_IsHXCGUI", dynlib: xcgui, discardable.}

proc XC_hWindowFromHWnd*(hWnd: HWND): HWINDOW {.cdecl, importc: "XC_hWindowFromHWnd",
    dynlib: xcgui, discardable.}

proc XC_SetActivateTopWindow*(): BOOL {.cdecl, importc: "XC_SetActivateTopWindow",
                                     dynlib: xcgui, discardable.}

proc XC_SetProperty*(hXCGUI: HXCGUI; pName: ptr WCHAR; pValue: ptr WCHAR): BOOL {.
    cdecl, importc: "XC_SetProperty", dynlib: xcgui, discardable.}

proc XC_GetProperty*(hXCGUI: HXCGUI; pName: ptr WCHAR): ptr WCHAR {.cdecl,
    importc: "XC_GetProperty", dynlib: xcgui, discardable.}

proc XC_RegisterWindowClassName*(pClassName: ptr WCHAR): BOOL {.cdecl,
    importc: "XC_RegisterWindowClassName", dynlib: xcgui, discardable.}
## 注册窗口类名


proc XC_IsSViewExtend*(hEle: HELE): BOOL {.cdecl, importc: "XC_IsSViewExtend",
                                       dynlib: xcgui, discardable.}
## 判断元素是否从滚动视图元素扩展的新元素,包含滚动视图元素


proc XC_GetObjectType*(hXCGUI: HXCGUI): XC_OBJECT_TYPE {.cdecl,
    importc: "XC_GetObjectType", dynlib: xcgui, discardable.}

proc XC_GetObjectByID*(hWindow: HWINDOW; nID: cint): HXCGUI {.cdecl,
    importc: "XC_GetObjectByID", dynlib: xcgui, discardable.}
## 通过ID获取对象句柄


proc XC_GetObjectByIDName*(hWindow: HWINDOW; pName: ptr WCHAR): HXCGUI {.cdecl,
    importc: "XC_GetObjectByIDName", dynlib: xcgui, discardable.}

proc XC_GetObjectByUID*(nUID: cint): HXCGUI {.cdecl, importc: "XC_GetObjectByUID",
    dynlib: xcgui, discardable.}

proc XC_GetObjectByUIDName*(pName: ptr WCHAR): HXCGUI {.cdecl,
    importc: "XC_GetObjectByUIDName", dynlib: xcgui, discardable.}

proc XC_GetObjectByName*(pName: ptr WCHAR): HXCGUI {.cdecl,
    importc: "XC_GetObjectByName", dynlib: xcgui, discardable.}

proc XC_SetPaintFrequency*(nMilliseconds: cint) {.cdecl,
    importc: "XC_SetPaintFrequency", dynlib: xcgui, discardable.}
## 设置UI绘制频率


proc XC_SetTextRenderingHint*(nType: cint) {.cdecl,
    importc: "XC_SetTextRenderingHint", dynlib: xcgui, discardable.}
## 设置文本渲染质量


proc XC_RectInRect*(pRect1: ptr RECT; pRect2: ptr RECT): BOOL {.cdecl,
    importc: "XC_RectInRect", dynlib: xcgui, discardable.}

proc XC_CombineRect*(pDest: ptr RECT; pSrc1: ptr RECT; pSrc2: ptr RECT) {.cdecl,
    importc: "XC_CombineRect", dynlib: xcgui, discardable.}

proc XC_ShowLayoutFrame*(bShow: BOOL) {.cdecl, importc: "XC_ShowLayoutFrame",
                                     dynlib: xcgui, discardable.}

proc XC_EnableDebugFile*(bEnable: BOOL) {.cdecl, importc: "XC_EnableDebugFile",
                                       dynlib: xcgui, discardable.}

proc XC_EnableResMonitor*(bEnable: BOOL) {.cdecl, importc: "XC_EnableResMonitor",
                                        dynlib: xcgui, discardable.}

proc XC_SetLayoutFrameColor*(color: COLORREF) {.cdecl,
    importc: "XC_SetLayoutFrameColor", dynlib: xcgui, discardable.}

proc XC_EnableErrorMessageBox*(bEnabel: BOOL) {.cdecl,
    importc: "XC_EnableErrorMessageBox", dynlib: xcgui, discardable.}

proc XC_EnableAutoExitApp*(bEnabel: BOOL) {.cdecl, importc: "XC_EnableAutoExitApp",
    dynlib: xcgui, discardable.}

proc XC_LoadLayout*(pFileName: ptr WCHAR; hParent: HXCGUI = nil): HXCGUI {.cdecl,
    importc: "XC_LoadLayout", dynlib: xcgui, discardable.}

proc XC_LoadLayoutZip*(pZipFileName: ptr WCHAR; pFileName: ptr WCHAR;
                      pPassword: ptr WCHAR = nil; hParent: HXCGUI = nil): HXCGUI {.
    cdecl, importc: "XC_LoadLayoutZip", dynlib: xcgui, discardable.}

proc XC_LoadLayoutFromString*(pStringXML: cstring; hParent: HXCGUI = nil): HXCGUI {.
    cdecl, importc: "XC_LoadLayoutFromString", dynlib: xcgui, discardable.}

proc XC_LoadResource*(pFileName: ptr WCHAR): BOOL {.cdecl,
    importc: "XC_LoadResource", dynlib: xcgui, discardable.}

proc XC_LoadResourceZip*(pZipFileName: ptr WCHAR; pFileName: ptr WCHAR;
                        pPassword: ptr WCHAR = nil): BOOL {.cdecl,
    importc: "XC_LoadResourceZip", dynlib: xcgui, discardable.}

proc XC_LoadResourceFromString*(pStringXML: cstring; pFileName: ptr WCHAR): BOOL {.
    cdecl, importc: "XC_LoadResourceFromString", dynlib: xcgui, discardable.}

proc XC_LoadStyle*(pFileName: ptr WCHAR): BOOL {.cdecl, importc: "XC_LoadStyle",
    dynlib: xcgui, discardable.}

proc XC_LoadStyleZip*(pZipFile: ptr WCHAR; pFileName: ptr WCHAR;
                     pPassword: ptr WCHAR = nil): BOOL {.cdecl,
    importc: "XC_LoadStyleZip", dynlib: xcgui, discardable.}

proc XC_GetTextSize*(pString: ptr WCHAR; length: cint; hFontX: HFONTX;
                    pOutSize: ptr SIZE) {.cdecl, importc: "XC_GetTextSize",
                                       dynlib: xcgui, discardable.}

proc XC_GetTextShowSize*(pString: ptr WCHAR; length: cint; hFontX: HFONTX;
                        pOutSize: ptr SIZE) {.cdecl, importc: "XC_GetTextShowSize",
    dynlib: xcgui, discardable.}

proc XC_GetDefaultFont*(): HFONTX {.cdecl, importc: "XC_GetDefaultFont", dynlib: xcgui, discardable.}
## 获取默认字体


proc XC_SetDefaultFont*(hFontX: HFONTX) {.cdecl, importc: "XC_SetDefaultFont",
                                       dynlib: xcgui, discardable.}
## 设置默认字体


proc XC_AddFileSearchPath*(pPath: ptr WCHAR) {.cdecl,
    importc: "XC_AddFileSearchPath", dynlib: xcgui, discardable.}

#~ proc XC_InitFont*(pFont: ptr LOGFONTW; pName: ptr WCHAR; size: cint;
                 #~ bBold: BOOL = FALSE; bItalic: BOOL = FALSE; bUnderline: BOOL = FALSE;
                 #~ bStrikeOut: BOOL = FALSE) {.cdecl, importc: "XC_InitFont",
    #~ dynlib: xcgui, discardable.}

proc XC_Malloc*(size: cint): pointer {.cdecl, importc: "XC_Malloc", dynlib: xcgui, discardable.}

proc XC_Free*(p: pointer) {.cdecl, importc: "XC_Free", dynlib: xcgui, discardable.}

#~ proc _XC_SetType*(hXCGUI: HXCGUI; nType: XC_OBJECT_TYPE) {.cdecl,
    #~ importc: "_XC_SetType", dynlib: xcgui, discardable.}

#~ proc _XC_AddType*(hXCGUI: HXCGUI; nType: XC_OBJECT_TYPE) {.cdecl,
    #~ importc: "_XC_AddType", dynlib: xcgui, discardable.}

#~ proc _XC_BindData*(hXCGUI: HXCGUI; data: cint) {.cdecl, importc: "_XC_BindData",
    #~ dynlib: xcgui, discardable.}

#~ proc _XC_GetBindData*(hXCGUI: HXCGUI): cint {.cdecl, importc: "_XC_GetBindData",
    #~ dynlib: xcgui, discardable.}

proc XC_Alert*(pText: ptr WCHAR; pTitle: ptr WCHAR) {.cdecl, importc: "XC_Alert",
    dynlib: xcgui, discardable.}

proc XC_Sys_ShellExecute*(hwnd: HWND; lpOperation: ptr WCHAR; lpFile: ptr WCHAR;
                         lpParameters: ptr WCHAR; lpDirectory: ptr WCHAR;
                         nShowCmd: cint): pointer {.cdecl,
    importc: "XC_Sys_ShellExecute", dynlib: xcgui, discardable.}

proc XC_LoadLibrary*(lpFileName: ptr WCHAR): HMODULE {.cdecl,
    importc: "XC_LoadLibrary", dynlib: xcgui, discardable.}

proc XC_GetProcAddress*(hModule: HMODULE; lpProcName: LPCSTR): FARPROC {.cdecl,
    importc: "XC_GetProcAddress", dynlib: xcgui, discardable.}

proc XC_FreeLibrary*(hModule: HMODULE): BOOL {.cdecl, importc: "XC_FreeLibrary",
    dynlib: xcgui, discardable.}

proc XC_LoadDll*(pDllFileName: ptr WCHAR): HMODULE {.cdecl, importc: "XC_LoadDll",
    dynlib: xcgui, discardable.}

proc XInitXCGUI*(pText: ptr WCHAR = nil): BOOL {.cdecl, importc: "XInitXCGUI",
    dynlib: xcgui, discardable.}

proc XRunXCGUI*() {.cdecl, importc: "XRunXCGUI", dynlib: xcgui, discardable.}

proc XExitXCGUI*() {.cdecl, importc: "XExitXCGUI", dynlib: xcgui, discardable.}


proc XC_PostQuitMessage*(nExitCode: cint) {.cdecl, importc: "XC_PostQuitMessage",
    dynlib: xcgui, discardable.}

proc XObj_GetType*(hXCGUI: HXCGUI): XC_OBJECT_TYPE {.cdecl, importc: "XObj_GetType",
    dynlib: xcgui, discardable.}

proc XObj_GetTypeBase*(hXCGUI: HXCGUI): XC_OBJECT_TYPE {.cdecl,
    importc: "XObj_GetTypeBase", dynlib: xcgui, discardable.}

proc XObj_GetTypeEx*(hXCGUI: HXCGUI): XC_OBJECT_TYPE_EX {.cdecl,
    importc: "XObj_GetTypeEx", dynlib: xcgui, discardable.}

proc XUI_SetStyle*(hXCGUI: HXCGUI; nStyle: XC_OBJECT_STYLE) {.cdecl,
    importc: "XUI_SetStyle", dynlib: xcgui, discardable.}

proc XUI_GetStyle*(hXCGUI: HXCGUI): XC_OBJECT_STYLE {.cdecl, importc: "XUI_GetStyle",
    dynlib: xcgui, discardable.}

proc XWidget_IsShow*(hXCGUI: HXCGUI): BOOL {.cdecl, importc: "XWidget_IsShow",
    dynlib: xcgui, discardable.}

proc XWidget_Show*(hXCGUI: HXCGUI; bShow: BOOL) {.cdecl, importc: "XWidget_Show",
    dynlib: xcgui, discardable.}

proc XWidget_GetParentEle*(hXCGUI: HXCGUI): HELE {.cdecl,
    importc: "XWidget_GetParentEle", dynlib: xcgui, discardable.}

proc XWidget_GetParent*(hXCGUI: HXCGUI): HXCGUI {.cdecl,
    importc: "XWidget_GetParent", dynlib: xcgui, discardable.}

proc XWidget_GetHWND*(hXCGUI: HXCGUI): HWND {.cdecl, importc: "XWidget_GetHWND",
    dynlib: xcgui, discardable.}

proc XWidget_GetHWINDOW*(hXCGUI: HXCGUI): HWINDOW {.cdecl,
    importc: "XWidget_GetHWINDOW", dynlib: xcgui, discardable.}

proc XC_RegJsBind*(pName: cstring; `func`: cint) {.cdecl, importc: "XC_RegJsBind",
    dynlib: xcgui, discardable.}

#~ proc XC_RegFunIdle*(`func`: funIdle) {.cdecl, importc: "XC_RegFunIdle", dynlib: xcgui, discardable.}

#~ proc XC_RegFunExit*(`func`: funExit) {.cdecl, importc: "XC_RegFunExit", dynlib: xcgui, discardable.}

proc XBkM_Create*(): HBKM {.cdecl, importc: "XBkM_Create", dynlib: xcgui, discardable.}

proc XBkM_Destroy*(hBkInfoM: HBKM) {.cdecl, importc: "XBkM_Destroy", dynlib: xcgui, discardable.}

proc XBkM_SetBkInfo*(hBkInfoM: HBKM; pText: ptr WCHAR): cint {.cdecl,
    importc: "XBkM_SetBkInfo", dynlib: xcgui, discardable.}

proc XBkM_AddInfo*(hBkInfoM: HBKM; pText: ptr WCHAR): cint {.cdecl,
    importc: "XBkM_AddInfo", dynlib: xcgui, discardable.}

proc XBkM_AddBorder*(hBkInfoM: HBKM; nState: cint; color: COLORREF; alpha: BYTE;
                    width: cint) {.cdecl, importc: "XBkM_AddBorder", dynlib: xcgui, discardable.}

proc XBkM_AddFill*(hBkInfoM: HBKM; nState: cint; color: COLORREF; alpha: BYTE) {.cdecl,
    importc: "XBkM_AddFill", dynlib: xcgui, discardable.}

proc XBkM_AddImage*(hBkInfoM: HBKM; nState: cint; hImage: HIMAGE) {.cdecl,
    importc: "XBkM_AddImage", dynlib: xcgui, discardable.}

proc XBkM_GetCount*(hBkInfoM: HBKM): cint {.cdecl, importc: "XBkM_GetCount",
                                        dynlib: xcgui, discardable.}

proc XBkM_Clear*(hBkInfoM: HBKM) {.cdecl, importc: "XBkM_Clear", dynlib: xcgui, discardable.}

proc XBkM_Draw*(hBkInfoM: HBKM; nState: cint; hDraw: HDRAW; pRect: ptr RECT): BOOL {.cdecl,
    importc: "XBkM_Draw", dynlib: xcgui, discardable.}

proc XBkM_DrawEx*(hBkInfoM: HBKM; nState: cint; hDraw: HDRAW; pRect: ptr RECT;
                 nStateEx: cint): BOOL {.cdecl, importc: "XBkM_DrawEx", dynlib: xcgui, discardable.}

proc XBtn_Create*(x: cint; y: cint; cx: cint; cy: cint; pName: ptr WCHAR;
                 hParent: HXCGUI = nil): HELE {.cdecl, importc: "XBtn_Create",
    dynlib: xcgui, discardable.}

#~ proc XBtn_Create*(x: cint; y: cint; cx: cint; cy: cint; pName: ptr WCHAR;
                 #~ hParent: cstring = nil): HELE {.
    #~ importc: "XBtn_Create", cdecl, dynlib:xcgui, discardable.}


proc XBtn_IsCheck*(hEle: HELE): BOOL {.cdecl, importc: "XBtn_IsCheck", dynlib: xcgui, discardable.}
## 按钮是否被选中


proc XBtn_SetCheck*(hEle: HELE; bCheck: BOOL): BOOL {.cdecl, importc: "XBtn_SetCheck",
    dynlib: xcgui, discardable.}

proc XBtn_SetState*(hEle: HELE; nState: common_state3) {.cdecl,
    importc: "XBtn_SetState", dynlib: xcgui, discardable.}

proc XBtn_GetState*(hEle: HELE): common_state3 {.cdecl, importc: "XBtn_GetState",
    dynlib: xcgui, discardable.}

proc XBtn_GetStateEx*(hEle: HELE): button_state {.cdecl, importc: "XBtn_GetStateEx",
    dynlib: xcgui, discardable.}

proc XBtn_SetStyle*(hEle: HELE; nStyle: XC_OBJECT_STYLE) {.cdecl,
    importc: "XBtn_SetStyle", dynlib: xcgui, discardable.}





proc XBtn_GetStyle*(hEle: HELE): XC_OBJECT_STYLE {.cdecl, importc: "XBtn_GetStyle",
    dynlib: xcgui, discardable.}

proc XBtn_SetType*(hEle: HELE; nType: XC_OBJECT_TYPE_EX) {.cdecl,
    importc: "XBtn_SetType", dynlib: xcgui, discardable.}

proc XBtn_SetTypeEx*(hEle: HELE; nType: XC_OBJECT_TYPE_EX) {.cdecl,
    importc: "XBtn_SetTypeEx", dynlib: xcgui, discardable.}

proc XBtn_GetType*(hEle: HELE): XC_OBJECT_TYPE_EX {.cdecl, importc: "XBtn_GetType",
    dynlib: xcgui, discardable.}

proc XBtn_SetGroupID*(hEle: HELE; nID: cint) {.cdecl, importc: "XBtn_SetGroupID",
    dynlib: xcgui, discardable.}

proc XBtn_GetGroupID*(hEle: HELE): cint {.cdecl, importc: "XBtn_GetGroupID",
                                      dynlib: xcgui, discardable.}

proc XBtn_SetBindEle*(hEle: HELE; hBindEle: HELE) {.cdecl, importc: "XBtn_SetBindEle",
    dynlib: xcgui, discardable.}

proc XBtn_GetBindEle*(hEle: HELE): HELE {.cdecl, importc: "XBtn_GetBindEle",
                                      dynlib: xcgui, discardable.}

proc XBtn_SetTextAlign*(hEle: HELE; nFlags: cint) {.cdecl,
    importc: "XBtn_SetTextAlign", dynlib: xcgui, discardable.}

proc XBtn_GetTextAlign*(hEle: HELE): cint {.cdecl, importc: "XBtn_GetTextAlign",
                                        dynlib: xcgui, discardable.}

#~ proc XBtn_SetIconAlign*(hEle: HELE; align: button_icon_align_) {.cdecl,
    #~ importc: "XBtn_SetIconAlign", dynlib: xcgui, discardable.}

proc XBtn_SetOffset*(hEle: HELE; x: cint; y: cint) {.cdecl, importc: "XBtn_SetOffset",
    dynlib: xcgui, discardable.}

proc XBtn_SetOffsetIcon*(hEle: HELE; x: cint; y: cint) {.cdecl,
    importc: "XBtn_SetOffsetIcon", dynlib: xcgui, discardable.}

proc XBtn_SetIconSpace*(hEle: HELE; size: cint) {.cdecl, importc: "XBtn_SetIconSpace",
    dynlib: xcgui, discardable.}

proc XBtn_GetText*(hEle: HELE; pOut: ptr WCHAR; nOutLen: cint) {.cdecl,
    importc: "XBtn_GetText", dynlib: xcgui, discardable.}

proc XBtn_SetText*(hEle: HELE; pName: ptr WCHAR) {.cdecl, importc: "XBtn_SetText",
    dynlib: xcgui, discardable.}

proc XBtn_SetIcon*(hEle: HELE; hImage: HIMAGE) {.cdecl, importc: "XBtn_SetIcon",
    dynlib: xcgui, discardable.}

proc XBtn_SetIconDisable*(hEle: HELE; hImage: HIMAGE) {.cdecl,
    importc: "XBtn_SetIconDisable", dynlib: xcgui, discardable.}

proc XBtn_GetIcon*(hEle: HELE; nType: cint): HIMAGE {.cdecl, importc: "XBtn_GetIcon",
    dynlib: xcgui, discardable.}

proc XBtn_AddAnimationFrame*(hEle: HELE; hImage: HIMAGE; uElapse: UINT) {.cdecl,
    importc: "XBtn_AddAnimationFrame", dynlib: xcgui, discardable.}

proc XBtn_EnableAnimation*(hEle: HELE; bEnable: BOOL; bLoopPlay: BOOL = FALSE) {.cdecl,
    importc: "XBtn_EnableAnimation", dynlib: xcgui, discardable.}

proc XBtn_AddBkBorder*(hEle: HELE; nState: button_state; color: COLORREF; alpha: BYTE;
                      width: cint) {.cdecl, importc: "XBtn_AddBkBorder",
                                   dynlib: xcgui, discardable.}

proc XBtn_AddBkFill*(hEle: HELE; nState: button_state; color: COLORREF; alpha: BYTE) {.
    cdecl, importc: "XBtn_AddBkFill", dynlib: xcgui, discardable.}

proc XBtn_AddBkImage*(hEle: HELE; nState: button_state; hImage: HIMAGE) {.cdecl,
    importc: "XBtn_AddBkImage", dynlib: xcgui, discardable.}

proc XBtn_GetBkInfoCount*(hEle: HELE): cint {.cdecl, importc: "XBtn_GetBkInfoCount",
    dynlib: xcgui, discardable.}

proc XBtn_ClearBkInfo*(hEle: HELE) {.cdecl, importc: "XBtn_ClearBkInfo", dynlib: xcgui, discardable.}

proc XComboBox_Create*(x: cint; y: cint; cx: cint; cy: cint; hParent: HXCGUI = nil): HELE {.
    cdecl, importc: "XComboBox_Create", dynlib: xcgui, discardable.}

proc XComboBox_SetSelItem*(hEle: HELE; iIndex: cint): BOOL {.cdecl,
    importc: "XComboBox_SetSelItem", dynlib: xcgui, discardable.}

proc XComboBox_GetButtonRect*(hEle: HELE; pRect: ptr RECT) {.cdecl,
    importc: "XComboBox_GetButtonRect", dynlib: xcgui, discardable.}

proc XComboBox_SetButtonSize*(hEle: HELE; size: cint) {.cdecl,
    importc: "XComboBox_SetButtonSize", dynlib: xcgui, discardable.}

proc XComboBox_SetDropHeight*(hEle: HELE; height: cint) {.cdecl,
    importc: "XComboBox_SetDropHeight", dynlib: xcgui, discardable.}
## 设置下拉列表高度


proc XComboBox_GetDropHeight*(hEle: HELE): cint {.cdecl,
    importc: "XComboBox_GetDropHeight", dynlib: xcgui, discardable.}

proc XComboBox_CreateAdapter*(hEle: HELE): HXCGUI {.cdecl,
    importc: "XComboBox_CreateAdapter", dynlib: xcgui, discardable.}

proc XComboBox_BindAdapter*(hEle: HELE; hAdapter: HXCGUI) {.cdecl,
    importc: "XComboBox_BindAdapter", dynlib: xcgui, discardable.}

proc XComboBox_GetAdapter*(hEle: HELE): HXCGUI {.cdecl,
    importc: "XComboBox_GetAdapter", dynlib: xcgui, discardable.}

proc XComboBox_SetBindName*(hEle: HELE; pName: ptr WCHAR) {.cdecl,
    importc: "XComboBox_SetBindName", dynlib: xcgui, discardable.}

proc XComboBox_SetItemTemplateXML*(hEle: HELE; pXmlFile: ptr WCHAR) {.cdecl,
    importc: "XComboBox_SetItemTemplateXML", dynlib: xcgui, discardable.}

proc XComboBox_SetItemTemplateXMLFromString*(hEle: HELE; pStringXML: cstring) {.
    cdecl, importc: "XComboBox_SetItemTemplateXMLFromString", dynlib: xcgui, discardable.}

proc XComboBox_EnableDrawButton*(hEle: HELE; bEnable: BOOL) {.cdecl,
    importc: "XComboBox_EnableDrawButton", dynlib: xcgui, discardable.}

proc XComboBox_EnableEdit*(hEle: HELE; bEdit: BOOL) {.cdecl,
    importc: "XComboBox_EnableEdit", dynlib: xcgui, discardable.}
## 启动编辑内容


proc XComboBox_EnableDropHeightFixed*(hEle: HELE; bEnable: BOOL) {.cdecl,
    importc: "XComboBox_EnableDropHeightFixed", dynlib: xcgui, discardable.}

proc XComboBox_AddBkBorder*(hEle: HELE; nState: comboBox_state; color: COLORREF;
                           alpha: BYTE; width: cint) {.cdecl,
    importc: "XComboBox_AddBkBorder", dynlib: xcgui, discardable.}

proc XComboBox_AddBkFill*(hEle: HELE; nState: comboBox_state; color: COLORREF;
                         alpha: BYTE) {.cdecl, importc: "XComboBox_AddBkFill",
                                      dynlib: xcgui, discardable.}

proc XComboBox_AddBkImage*(hEle: HELE; nState: comboBox_state; hImage: HIMAGE) {.
    cdecl, importc: "XComboBox_AddBkImage", dynlib: xcgui, discardable.}

proc XComboboX_GetBkInfoCount*(hEle: HELE): cint {.cdecl,
    importc: "XComboboX_GetBkInfoCount", dynlib: xcgui, discardable.}

proc XComboBox_ClearBkInfo*(hEle: HELE) {.cdecl, importc: "XComboBox_ClearBkInfo",
                                       dynlib: xcgui, discardable.}

proc XComboBox_GetSelItem*(hEle: HELE): cint {.cdecl,
    importc: "XComboBox_GetSelItem", dynlib: xcgui, discardable.}

#~ proc XComboBox_GetState*(hEle: HELE): comboBox_state_ {.cdecl,
    #~ importc: "XComboBox_GetState", dynlib: xcgui, discardable.}

proc XComboBox_AddItemText*(hEle: HELE; pText: ptr WCHAR): cint {.cdecl,
    importc: "XComboBox_AddItemText", dynlib: xcgui, discardable.}

proc XComboBox_AddItemTextEx*(hEle: HELE; pName: ptr WCHAR; pText: ptr WCHAR): cint {.
    cdecl, importc: "XComboBox_AddItemTextEx", dynlib: xcgui, discardable.}

proc XComboBox_AddItemImage*(hEle: HELE; hImage: HIMAGE): cint {.cdecl,
    importc: "XComboBox_AddItemImage", dynlib: xcgui, discardable.}

proc XComboBox_AddItemImageEx*(hEle: HELE; pName: ptr WCHAR; hImage: HIMAGE): cint {.
    cdecl, importc: "XComboBox_AddItemImageEx", dynlib: xcgui, discardable.}

proc XComboBox_InsertItemText*(hEle: HELE; iItem: cint; pValue: ptr WCHAR): cint {.
    cdecl, importc: "XComboBox_InsertItemText", dynlib: xcgui, discardable.}

proc XComboBox_InsertItemTextEx*(hEle: HELE; iItem: cint; pName: ptr WCHAR;
                                pValue: ptr WCHAR): cint {.cdecl,
    importc: "XComboBox_InsertItemTextEx", dynlib: xcgui, discardable.}

proc XComboBox_InsertItemImage*(hEle: HELE; iItem: cint; hImage: HIMAGE): cint {.cdecl,
    importc: "XComboBox_InsertItemImage", dynlib: xcgui, discardable.}

proc XComboBox_InsertItemImageEx*(hEle: HELE; iItem: cint; pName: ptr WCHAR;
                                 hImage: HIMAGE): cint {.cdecl,
    importc: "XComboBox_InsertItemImageEx", dynlib: xcgui, discardable.}

proc XComboBox_SetItemText*(hEle: HELE; iItem: cint; iColumn: cint; pText: ptr WCHAR): BOOL {.
    cdecl, importc: "XComboBox_SetItemText", dynlib: xcgui, discardable.}

proc XComboBox_SetItemTextEx*(hEle: HELE; iItem: cint; pName: ptr WCHAR;
                             pText: ptr WCHAR): BOOL {.cdecl,
    importc: "XComboBox_SetItemTextEx", dynlib: xcgui, discardable.}

proc XComboBox_SetItemImage*(hEle: HELE; iItem: cint; iColumn: cint; hImage: HIMAGE): BOOL {.
    cdecl, importc: "XComboBox_SetItemImage", dynlib: xcgui, discardable.}

proc XComboBox_SetItemImageEx*(hEle: HELE; iItem: cint; pName: ptr WCHAR;
                              hImage: HIMAGE): BOOL {.cdecl,
    importc: "XComboBox_SetItemImageEx", dynlib: xcgui, discardable.}

proc XComboBox_SetItemInt*(hEle: HELE; iItem: cint; iColumn: cint; nValue: cint): BOOL {.
    cdecl, importc: "XComboBox_SetItemInt", dynlib: xcgui, discardable.}

proc XComboBox_SetItemIntEx*(hEle: HELE; iItem: cint; pName: ptr WCHAR; nValue: cint): BOOL {.
    cdecl, importc: "XComboBox_SetItemIntEx", dynlib: xcgui, discardable.}

proc XComboBox_SetItemFloat*(hEle: HELE; iItem: cint; iColumn: cint; fFloat: cfloat): BOOL {.
    cdecl, importc: "XComboBox_SetItemFloat", dynlib: xcgui, discardable.}

proc XComboBox_SetItemFloatEx*(hEle: HELE; iItem: cint; pName: ptr WCHAR;
                              fFloat: cfloat): BOOL {.cdecl,
    importc: "XComboBox_SetItemFloatEx", dynlib: xcgui, discardable.}

proc XComboBox_GetItemText*(hEle: HELE; iItem: cint; iColumn: cint; pOut: ptr WCHAR;
                           nOutLen: cint): BOOL {.cdecl,
    importc: "XComboBox_GetItemText", dynlib: xcgui, discardable.}

proc XComboBox_GetItemTextEx*(hEle: HELE; iItem: cint; pName: ptr WCHAR;
                             pOut: ptr WCHAR; nOutLen: cint): BOOL {.cdecl,
    importc: "XComboBox_GetItemTextEx", dynlib: xcgui, discardable.}

proc XComboBox_GetItemImage*(hEle: HELE; iItem: cint; iColumn: cint): HIMAGE {.cdecl,
    importc: "XComboBox_GetItemImage", dynlib: xcgui, discardable.}

proc XComboBox_GetItemImageEx*(hEle: HELE; iItem: cint; pName: ptr WCHAR): HIMAGE {.
    cdecl, importc: "XComboBox_GetItemImageEx", dynlib: xcgui, discardable.}

proc XComboBox_GetItemInt*(hEle: HELE; iItem: cint; iColumn: cint; pOutValue: ptr cint): BOOL {.
    cdecl, importc: "XComboBox_GetItemInt", dynlib: xcgui, discardable.}

proc XComboBox_GetItemIntEx*(hEle: HELE; iItem: cint; pName: ptr WCHAR;
                            pOutValue: ptr cint): BOOL {.cdecl,
    importc: "XComboBox_GetItemIntEx", dynlib: xcgui, discardable.}

proc XComboBox_GetItemFloat*(hEle: HELE; iItem: cint; iColumn: cint;
                            pOutValue: ptr cfloat): BOOL {.cdecl,
    importc: "XComboBox_GetItemFloat", dynlib: xcgui, discardable.}

proc XComboBox_GetItemFloatEx*(hEle: HELE; iItem: cint; pName: ptr WCHAR;
                              pOutValue: ptr cfloat): BOOL {.cdecl,
    importc: "XComboBox_GetItemFloatEx", dynlib: xcgui, discardable.}

proc XComboBox_DeleteItem*(hEle: HELE; iItem: cint): BOOL {.cdecl,
    importc: "XComboBox_DeleteItem", dynlib: xcgui, discardable.}

proc XComboBox_DeleteItemEx*(hEle: HELE; iItem: cint; nCount: cint): BOOL {.cdecl,
    importc: "XComboBox_DeleteItemEx", dynlib: xcgui, discardable.}

proc XComboBox_DeleteItemAll*(hEle: HELE) {.cdecl,
    importc: "XComboBox_DeleteItemAll", dynlib: xcgui, discardable.}

proc XComboBox_DeleteColumnAll*(hEle: HELE) {.cdecl,
    importc: "XComboBox_DeleteColumnAll", dynlib: xcgui, discardable.}

proc XComboBox_GetCount*(hEle: HELE): cint {.cdecl, importc: "XComboBox_GetCount",
    dynlib: xcgui, discardable.}

proc XComboBox_GetCountColumn*(hEle: HELE): cint {.cdecl,
    importc: "XComboBox_GetCountColumn", dynlib: xcgui, discardable.}

proc XAd_Destroy*(hAdapter: HXCGUI) {.cdecl, importc: "XAd_Destroy", dynlib: xcgui, discardable.}

proc XAdListView_Create*(): HXCGUI {.cdecl, importc: "XAdListView_Create",
                                  dynlib: xcgui, discardable.}

proc XAdListView_Group_AddColumn*(hAdapter: HXCGUI; pName: ptr WCHAR): cint {.cdecl,
    importc: "XAdListView_Group_AddColumn", dynlib: xcgui, discardable.}

proc XAdListView_Group_AddItemText*(hAdapter: HXCGUI; pValue: ptr WCHAR): cint {.
    cdecl, importc: "XAdListView_Group_AddItemText", dynlib: xcgui, discardable.}

proc XAdListView_Group_AddItemTextEx*(hAdapter: HXCGUI; pName: ptr WCHAR;
                                     pValue: ptr WCHAR): cint {.cdecl,
    importc: "XAdListView_Group_AddItemTextEx", dynlib: xcgui, discardable.}

proc XAdListView_Group_AddItemImage*(hAdapter: HXCGUI; hImage: HIMAGE): cint {.cdecl,
    importc: "XAdListView_Group_AddItemImage", dynlib: xcgui, discardable.}

proc XAdListView_Group_AddItemImageEx*(hAdapter: HXCGUI; pName: ptr WCHAR;
                                      hImage: HIMAGE): cint {.cdecl,
    importc: "XAdListView_Group_AddItemImageEx", dynlib: xcgui, discardable.}

proc XAdListView_Group_SetText*(hAdapter: HXCGUI; iGroup: cint; iColumn: cint;
                               pValue: ptr WCHAR): BOOL {.cdecl,
    importc: "XAdListView_Group_SetText", dynlib: xcgui, discardable.}

proc XAdListView_Group_SetTextEx*(hAdapter: HXCGUI; iGroup: cint; pName: ptr WCHAR;
                                 pValue: ptr WCHAR): BOOL {.cdecl,
    importc: "XAdListView_Group_SetTextEx", dynlib: xcgui, discardable.}

proc XAdListView_Group_SetImage*(hAdapter: HXCGUI; iGroup: cint; iColumn: cint;
                                hImage: HIMAGE): BOOL {.cdecl,
    importc: "XAdListView_Group_SetImage", dynlib: xcgui, discardable.}

proc XAdListView_Group_SetImageEx*(hAdapter: HXCGUI; iGroup: cint;
                                  pName: ptr WCHAR; hImage: HIMAGE): BOOL {.cdecl,
    importc: "XAdListView_Group_SetImageEx", dynlib: xcgui, discardable.}

proc XAdListView_Group_GetCount*(hAdapter: HXCGUI): cint {.cdecl,
    importc: "XAdListView_Group_GetCount", dynlib: xcgui, discardable.}

proc XAdListView_Item_GetCount*(hAdapter: HXCGUI; iGroup: cint): cint {.cdecl,
    importc: "XAdListView_Item_GetCount", dynlib: xcgui, discardable.}

proc XAdListView_Item_AddColumn*(hAdapter: HXCGUI; pName: ptr WCHAR): cint {.cdecl,
    importc: "XAdListView_Item_AddColumn", dynlib: xcgui, discardable.}
## 增加列


proc XAdListView_Item_AddItemText*(hAdapter: HXCGUI; iGroup: cint;
                                  pValue: ptr WCHAR): cint {.cdecl,
    importc: "XAdListView_Item_AddItemText", dynlib: xcgui, discardable.}

proc XAdListView_Item_AddItemTextEx*(hAdapter: HXCGUI; iGroup: cint;
                                    pName: ptr WCHAR; pValue: ptr WCHAR): cint {.
    cdecl, importc: "XAdListView_Item_AddItemTextEx", dynlib: xcgui, discardable.}

proc XAdListView_Item_AddItemImage*(hAdapter: HXCGUI; iGroup: cint; hImage: HIMAGE): cint {.
    cdecl, importc: "XAdListView_Item_AddItemImage", dynlib: xcgui, discardable.}

proc XAdListView_Item_AddItemImageEx*(hAdapter: HXCGUI; iGroup: cint;
                                     pName: ptr WCHAR; hImage: HIMAGE): cint {.
    cdecl, importc: "XAdListView_Item_AddItemImageEx", dynlib: xcgui, discardable.}

proc XAdListView_Item_SetText*(hAdapter: HXCGUI; iGroup: cint; iItem: cint;
                              iColumn: cint; pValue: ptr WCHAR): BOOL {.cdecl,
    importc: "XAdListView_Item_SetText", dynlib: xcgui, discardable.}

proc XAdListView_Item_SetTextEx*(hAdapter: HXCGUI; iGroup: cint; iItem: cint;
                                pName: ptr WCHAR; pValue: ptr WCHAR): BOOL {.cdecl,
    importc: "XAdListView_Item_SetTextEx", dynlib: xcgui, discardable.}

proc XAdListView_Item_SetImage*(hAdapter: HXCGUI; iGroup: cint; iItem: cint;
                               iColumn: cint; hImage: HIMAGE): BOOL {.cdecl,
    importc: "XAdListView_Item_SetImage", dynlib: xcgui, discardable.}

proc XAdListView_Item_SetImageEx*(hAdapter: HXCGUI; iGroup: cint; iItem: cint;
                                 pName: ptr WCHAR; hImage: HIMAGE): BOOL {.cdecl,
    importc: "XAdListView_Item_SetImageEx", dynlib: xcgui, discardable.}

proc XAdListView_Group_DeleteItem*(hAdapter: HXCGUI; iGroup: cint): BOOL {.cdecl,
    importc: "XAdListView_Group_DeleteItem", dynlib: xcgui, discardable.}

proc XAdListView_Group_DeleteAllChildItem*(hAdapter: HXCGUI; iGroup: cint) {.cdecl,
    importc: "XAdListView_Group_DeleteAllChildItem", dynlib: xcgui, discardable.}

proc XAdListView_Item_DeleteItem*(hAdapter: HXCGUI; iGroup: cint; iItem: cint): BOOL {.
    cdecl, importc: "XAdListView_Item_DeleteItem", dynlib: xcgui, discardable.}

proc XAdListView_DeleteAll*(hAdapter: HXCGUI) {.cdecl,
    importc: "XAdListView_DeleteAll", dynlib: xcgui, discardable.}

proc XAdListView_DeleteAllGroup*(hAdapter: HXCGUI) {.cdecl,
    importc: "XAdListView_DeleteAllGroup", dynlib: xcgui, discardable.}

proc XAdListView_DeleteAllItem*(hAdapter: HXCGUI) {.cdecl,
    importc: "XAdListView_DeleteAllItem", dynlib: xcgui, discardable.}

proc XAdListView_DeleteColumnGroup*(hAdapter: HXCGUI; iColumn: cint) {.cdecl,
    importc: "XAdListView_DeleteColumnGroup", dynlib: xcgui, discardable.}

proc XAdListView_DeleteColumnItem*(hAdapter: HXCGUI; iColumn: cint) {.cdecl,
    importc: "XAdListView_DeleteColumnItem", dynlib: xcgui, discardable.}

proc XAdListView_Item_GetTextEx*(hAdapter: HXCGUI; iGroup: cint; iItem: cint;
                                pName: ptr WCHAR; pOut: ptr WCHAR; nOutLen: cint): BOOL {.
    cdecl, importc: "XAdListView_Item_GetTextEx", dynlib: xcgui, discardable.}

proc XAdListView_Item_GetImageEx*(hAdapter: HXCGUI; iGroup: cint; iItem: cint;
                                 pName: ptr WCHAR): HIMAGE {.cdecl,
    importc: "XAdListView_Item_GetImageEx", dynlib: xcgui, discardable.}

proc XAdTable_Create*(): HXCGUI {.cdecl, importc: "XAdTable_Create", dynlib: xcgui, discardable.}

proc XAdTable_Sort*(hAdapter: HXCGUI; iColumn: cint; bAscending: BOOL) {.cdecl,
    importc: "XAdTable_Sort", dynlib: xcgui, discardable.}
## 排序


#~ proc XAdTable_GetItemDataType*(hAdapter: HXCGUI; iItem: cint; iColumn: cint): adapter_date_type_ {.
    #~ cdecl, importc: "XAdTable_GetItemDataType", dynlib: xcgui, discardable.}

#~ proc XAdTable_GetItemDataTypeEx*(hAdapter: HXCGUI; iItem: cint; pName: ptr WCHAR): adapter_date_type_ {.
    #~ cdecl, importc: "XAdTable_GetItemDataTypeEx", dynlib: xcgui, discardable.}

proc XAdTable_AddColumn*(hAdapter: HXCGUI; pName: ptr WCHAR): cint {.cdecl,
    importc: "XAdTable_AddColumn", dynlib: xcgui, discardable.}

proc XAdTable_SetColumn*(hAdapter: HXCGUI; pColName: ptr WCHAR): cint {.cdecl,
    importc: "XAdTable_SetColumn", dynlib: xcgui, discardable.}

proc XAdTable_AddItemText*(hAdapter: HXCGUI; pValue: ptr WCHAR): cint {.cdecl,
    importc: "XAdTable_AddItemText", dynlib: xcgui, discardable.}

proc XAdTable_AddItemTextEx*(hAdapter: HXCGUI; pName: ptr WCHAR; pValue: ptr WCHAR): cint {.
    cdecl, importc: "XAdTable_AddItemTextEx", dynlib: xcgui, discardable.}

proc XAdTable_AddItemImage*(hAdapter: HXCGUI; hImage: HIMAGE): cint {.cdecl,
    importc: "XAdTable_AddItemImage", dynlib: xcgui, discardable.}

proc XAdTable_AddItemImageEx*(hAdapter: HXCGUI; pName: ptr WCHAR; hImage: HIMAGE): cint {.
    cdecl, importc: "XAdTable_AddItemImageEx", dynlib: xcgui, discardable.}

proc XAdTable_InsertItemText*(hAdapter: HXCGUI; iItem: cint; pValue: ptr WCHAR): cint {.
    cdecl, importc: "XAdTable_InsertItemText", dynlib: xcgui, discardable.}

proc XAdTable_InsertItemTextEx*(hAdapter: HXCGUI; iItem: cint; pName: ptr WCHAR;
                               pValue: ptr WCHAR): cint {.cdecl,
    importc: "XAdTable_InsertItemTextEx", dynlib: xcgui, discardable.}

proc XAdTable_InsertItemImage*(hAdapter: HXCGUI; iItem: cint; hImage: HIMAGE): cint {.
    cdecl, importc: "XAdTable_InsertItemImage", dynlib: xcgui, discardable.}

proc XAdTable_InsertItemImageEx*(hAdapter: HXCGUI; iItem: cint; pName: ptr WCHAR;
                                hImage: HIMAGE): cint {.cdecl,
    importc: "XAdTable_InsertItemImageEx", dynlib: xcgui, discardable.}

proc XAdTable_SetItemText*(hAdapter: HXCGUI; iItem: cint; iColumn: cint;
                          pValue: ptr WCHAR): BOOL {.cdecl,
    importc: "XAdTable_SetItemText", dynlib: xcgui, discardable.}

proc XAdTable_SetItemTextEx*(hAdapter: HXCGUI; iItem: cint; pName: ptr WCHAR;
                            pValue: ptr WCHAR): BOOL {.cdecl,
    importc: "XAdTable_SetItemTextEx", dynlib: xcgui, discardable.}

proc XAdTable_SetItemInt*(hAdapter: HXCGUI; iItem: cint; iColumn: cint; nValue: cint): BOOL {.
    cdecl, importc: "XAdTable_SetItemInt", dynlib: xcgui, discardable.}

proc XAdTable_SetItemIntEx*(hAdapter: HXCGUI; iItem: cint; pName: ptr WCHAR;
                           nValue: cint): BOOL {.cdecl,
    importc: "XAdTable_SetItemIntEx", dynlib: xcgui, discardable.}

proc XAdTable_SetItemFloat*(hAdapter: HXCGUI; iItem: cint; iColumn: cint;
                           nValue: cfloat): BOOL {.cdecl,
    importc: "XAdTable_SetItemFloat", dynlib: xcgui, discardable.}

proc XAdTable_SetItemFloatEx*(hAdapter: HXCGUI; iItem: cint; pName: ptr WCHAR;
                             nValue: cfloat): BOOL {.cdecl,
    importc: "XAdTable_SetItemFloatEx", dynlib: xcgui, discardable.}

proc XAdTable_SetItemImage*(hAdapter: HXCGUI; iItem: cint; iColumn: cint;
                           hImage: HIMAGE): BOOL {.cdecl,
    importc: "XAdTable_SetItemImage", dynlib: xcgui, discardable.}

proc XAdTable_SetItemImageEx*(hAdapter: HXCGUI; iItem: cint; pName: ptr WCHAR;
                             hImage: HIMAGE): BOOL {.cdecl,
    importc: "XAdTable_SetItemImageEx", dynlib: xcgui, discardable.}

proc XAdTable_DeleteItem*(hAdapter: HXCGUI; iItem: cint): BOOL {.cdecl,
    importc: "XAdTable_DeleteItem", dynlib: xcgui, discardable.}

proc XAdTable_DeleteItemEx*(hAdapter: HXCGUI; iItem: cint; nCount: cint): BOOL {.cdecl,
    importc: "XAdTable_DeleteItemEx", dynlib: xcgui, discardable.}

proc XAdTable_DeleteItemAll*(hAdapter: HXCGUI) {.cdecl,
    importc: "XAdTable_DeleteItemAll", dynlib: xcgui, discardable.}

proc XAdTable_DeleteColumnAll*(hAdapter: HXCGUI) {.cdecl,
    importc: "XAdTable_DeleteColumnAll", dynlib: xcgui, discardable.}

proc XAdTable_GetCount*(hAdapter: HXCGUI): cint {.cdecl,
    importc: "XAdTable_GetCount", dynlib: xcgui, discardable.}

proc XAdTable_GetCountColumn*(hAdapter: HXCGUI): cint {.cdecl,
    importc: "XAdTable_GetCountColumn", dynlib: xcgui, discardable.}

proc XAdTable_GetItemText*(hAdapter: HXCGUI; iItem: cint; iColumn: cint;
                          pOut: ptr WCHAR; nOutLen: cint): BOOL {.cdecl,
    importc: "XAdTable_GetItemText", dynlib: xcgui, discardable.}

proc XAdTable_GetItemTextEx*(hAdapter: HXCGUI; iItem: cint; pName: ptr WCHAR;
                            pOut: ptr WCHAR; nOutLen: cint): BOOL {.cdecl,
    importc: "XAdTable_GetItemTextEx", dynlib: xcgui, discardable.}

proc XAdTable_GetItemImage*(hAdapter: HXCGUI; iItem: cint; iColumn: cint): HIMAGE {.
    cdecl, importc: "XAdTable_GetItemImage", dynlib: xcgui, discardable.}

proc XAdTable_GetItemImageEx*(hAdapter: HXCGUI; iItem: cint; pName: ptr WCHAR): HIMAGE {.
    cdecl, importc: "XAdTable_GetItemImageEx", dynlib: xcgui, discardable.}

proc XAdTable_GetItemInt*(hAdapter: HXCGUI; iItem: cint; iColumn: cint;
                         pOutValue: ptr cint): BOOL {.cdecl,
    importc: "XAdTable_GetItemInt", dynlib: xcgui, discardable.}

proc XAdTable_GetItemIntEx*(hAdapter: HXCGUI; iItem: cint; pName: ptr WCHAR;
                           pOutValue: ptr cint): BOOL {.cdecl,
    importc: "XAdTable_GetItemIntEx", dynlib: xcgui, discardable.}

proc XAdTable_GetItemFloat*(hAdapter: HXCGUI; iItem: cint; iColumn: cint;
                           pOutValue: ptr cfloat): BOOL {.cdecl,
    importc: "XAdTable_GetItemFloat", dynlib: xcgui, discardable.}

proc XAdTable_GetItemFloatEx*(hAdapter: HXCGUI; iItem: cint; pName: ptr WCHAR;
                             pOutValue: ptr cfloat): BOOL {.cdecl,
    importc: "XAdTable_GetItemFloatEx", dynlib: xcgui, discardable.}

proc XAdTree_Create*(): HXCGUI {.cdecl, importc: "XAdTree_Create", dynlib: xcgui, discardable.}

proc XAdTree_AddColumn*(hAdapter: HXCGUI; pName: ptr WCHAR): cint {.cdecl,
    importc: "XAdTree_AddColumn", dynlib: xcgui, discardable.}

proc XAdTree_SetColumn*(hAdapter: HXCGUI; pColName: ptr WCHAR): cint {.cdecl,
    importc: "XAdTree_SetColumn", dynlib: xcgui, discardable.}

proc XAdTree_InsertItemText*(hAdapter: HXCGUI; pValue: ptr WCHAR;
                            nParentID: cint = XC_ID_ROOT;
                            insertID: cint = XC_ID_LAST): cint {.cdecl,
    importc: "XAdTree_InsertItemText", dynlib: xcgui, discardable.}

proc XAdTree_InsertItemTextEx*(hAdapter: HXCGUI; pName: ptr WCHAR;
                              pValue: ptr WCHAR; nParentID: cint = XC_ID_ROOT;
                              insertID: cint = XC_ID_LAST): cint {.cdecl,
    importc: "XAdTree_InsertItemTextEx", dynlib: xcgui, discardable.}

proc XAdTree_InsertItemImage*(hAdapter: HXCGUI; hImage: HIMAGE;
                             nParentID: cint = XC_ID_ROOT;
                             insertID: cint = XC_ID_LAST): cint {.cdecl,
    importc: "XAdTree_InsertItemImage", dynlib: xcgui, discardable.}

proc XAdTree_InsertItemImageEx*(hAdapter: HXCGUI; pName: ptr WCHAR; hImage: HIMAGE;
                               nParentID: cint = XC_ID_ROOT;
                               insertID: cint = XC_ID_LAST): cint {.cdecl,
    importc: "XAdTree_InsertItemImageEx", dynlib: xcgui, discardable.}

proc XAdTree_GetCount*(hAdapter: HXCGUI): cint {.cdecl, importc: "XAdTree_GetCount",
    dynlib: xcgui, discardable.}

proc XAdTree_GetCountColumn*(hAdapter: HXCGUI): cint {.cdecl,
    importc: "XAdTree_GetCountColumn", dynlib: xcgui, discardable.}

proc XAdTree_SetItemText*(hAdapter: HXCGUI; nID: cint; iColumn: cint;
                         pValue: ptr WCHAR): BOOL {.cdecl,
    importc: "XAdTree_SetItemText", dynlib: xcgui, discardable.}

proc XAdTree_SetItemTextEx*(hAdapter: HXCGUI; nID: cint; pName: ptr WCHAR;
                           pValue: ptr WCHAR): BOOL {.cdecl,
    importc: "XAdTree_SetItemTextEx", dynlib: xcgui, discardable.}

proc XAdTree_SetItemImage*(hAdapter: HXCGUI; nID: cint; iColumn: cint; hImage: HIMAGE): BOOL {.
    cdecl, importc: "XAdTree_SetItemImage", dynlib: xcgui, discardable.}

proc XAdTree_SetItemImageEx*(hAdapter: HXCGUI; nID: cint; pName: ptr WCHAR;
                            hImage: HIMAGE): BOOL {.cdecl,
    importc: "XAdTree_SetItemImageEx", dynlib: xcgui, discardable.}

proc XAdTree_GetItemText*(hAdapter: HXCGUI; nID: cint; iColumn: cint;
                         pOut: ptr WCHAR; nOutLen: cint): BOOL {.cdecl,
    importc: "XAdTree_GetItemText", dynlib: xcgui, discardable.}

proc XAdTree_GetItemImage*(hAdapter: HXCGUI; nID: cint; iColumn: cint): HIMAGE {.cdecl,
    importc: "XAdTree_GetItemImage", dynlib: xcgui, discardable.}

proc XAdTree_GetItemTextEx*(hAdapter: HXCGUI; nID: cint; pName: ptr WCHAR;
                           pOut: ptr WCHAR; nOutLen: cint): BOOL {.cdecl,
    importc: "XAdTree_GetItemTextEx", dynlib: xcgui, discardable.}

proc XAdTree_GetItemImageEx*(hAdapter: HXCGUI; nID: cint; pName: ptr WCHAR): HIMAGE {.
    cdecl, importc: "XAdTree_GetItemImageEx", dynlib: xcgui, discardable.}

proc XAdTree_DeleteItem*(hAdapter: HXCGUI; nID: cint): BOOL {.cdecl,
    importc: "XAdTree_DeleteItem", dynlib: xcgui, discardable.}

proc XAdTree_DeleteItemAll*(hAdapter: HXCGUI) {.cdecl,
    importc: "XAdTree_DeleteItemAll", dynlib: xcgui, discardable.}

proc XAdTree_DeleteColumnAll*(hAdapter: HXCGUI) {.cdecl,
    importc: "XAdTree_DeleteColumnAll", dynlib: xcgui, discardable.}

proc XAdMap_Create*(): HXCGUI {.cdecl, importc: "XAdMap_Create", dynlib: xcgui, discardable.}

proc XAdMap_AddItemText*(hAdapter: HXCGUI; pName: ptr WCHAR; pValue: ptr WCHAR): BOOL {.
    cdecl, importc: "XAdMap_AddItemText", dynlib: xcgui, discardable.}

proc XAdMap_AddItemImage*(hAdapter: HXCGUI; pName: ptr WCHAR; hImage: HIMAGE): BOOL {.
    cdecl, importc: "XAdMap_AddItemImage", dynlib: xcgui, discardable.}

proc XAdMap_DeleteItem*(hAdapter: HXCGUI; pName: ptr WCHAR): BOOL {.cdecl,
    importc: "XAdMap_DeleteItem", dynlib: xcgui, discardable.}

proc XAdMap_GetCount*(hAdapter: HXCGUI): cint {.cdecl, importc: "XAdMap_GetCount",
    dynlib: xcgui, discardable.}

proc XAdMap_GetItemText*(hAdapter: HXCGUI; pName: ptr WCHAR; pOut: ptr WCHAR;
                        nOutLen: cint): BOOL {.cdecl, importc: "XAdMap_GetItemText",
    dynlib: xcgui, discardable.}

proc XAdMap_GetItemImage*(hAdapter: HXCGUI; pName: ptr WCHAR): HIMAGE {.cdecl,
    importc: "XAdMap_GetItemImage", dynlib: xcgui, discardable.}

proc XAdMap_SetItemText*(hAdapter: HXCGUI; pName: ptr WCHAR; pValue: ptr WCHAR): BOOL {.
    cdecl, importc: "XAdMap_SetItemText", dynlib: xcgui, discardable.}

proc XAdMap_SetItemImage*(hAdapter: HXCGUI; pName: ptr WCHAR; hImage: HIMAGE): BOOL {.
    cdecl, importc: "XAdMap_SetItemImage", dynlib: xcgui, discardable.}

proc DebugPrint*(level: cint; pInfo: cstring) {.cdecl, importc: "DebugPrint",
    dynlib: xcgui, discardable.}

proc xtrace*(pFormat: cstring) {.varargs, cdecl, importc: "xtrace", dynlib: xcgui, discardable.}

proc xtracew*(pFormat: ptr WCHAR) {.varargs, cdecl, importc: "xtracew", dynlib: xcgui, discardable.}

proc XDraw_Create*(hdc: HDC): HDRAW {.cdecl, importc: "XDraw_Create", dynlib: xcgui, discardable.}
## 创建


proc XDraw_Destroy*(hDraw: HDRAW) {.cdecl, importc: "XDraw_Destroy", dynlib: xcgui, discardable.}
## 销毁


proc XDraw_SetOffset*(hDraw: HDRAW; x: cint; y: cint) {.cdecl,
    importc: "XDraw_SetOffset", dynlib: xcgui, discardable.}
## 设置坐标偏移量


proc XDraw_GetOffset*(hDraw: HDRAW; pX: ptr cint; pY: ptr cint) {.cdecl,
    importc: "XDraw_GetOffset", dynlib: xcgui, discardable.}
## 获取坐标偏移量


proc XDraw_RestoreGDIOBJ*(hDraw: HDRAW) {.cdecl, importc: "XDraw_RestoreGDIOBJ",
                                       dynlib: xcgui, discardable.}
## 还原状态,释放用户绑定的GDI对象


proc XDraw_GetHDC*(hDraw: HDRAW): HDC {.cdecl, importc: "XDraw_GetHDC", dynlib: xcgui, discardable.}

proc XDraw_SetBrushColor*(hDraw: HDRAW; color: COLORREF; alpha: BYTE = 255) {.cdecl,
    importc: "XDraw_SetBrushColor", dynlib: xcgui, discardable.}

proc XDraw_SetTextAlign*(hDraw: HDRAW; nFlag: cint) {.cdecl,
    importc: "XDraw_SetTextAlign", dynlib: xcgui, discardable.}

proc XDraw_SetTextVertical*(hDraw: HDRAW; bVertical: BOOL) {.cdecl,
    importc: "XDraw_SetTextVertical", dynlib: xcgui, discardable.}

proc XDraw_SetFontX*(hDraw: HDRAW; hFontx: HFONTX) {.cdecl, importc: "XDraw_SetFontX",
    dynlib: xcgui, discardable.}

proc XDraw_SetLineWidth*(hDraw: HDRAW; nWidth: cint) {.cdecl,
    importc: "XDraw_SetLineWidth", dynlib: xcgui, discardable.}

proc XDraw_SetBkMode*(hDraw: HDRAW; bTransparent: BOOL): cint {.cdecl,
    importc: "XDraw_SetBkMode", dynlib: xcgui, discardable.}

proc XDraw_SetClipRect*(hDraw: HDRAW; pRect: ptr RECT) {.cdecl,
    importc: "XDraw_SetClipRect", dynlib: xcgui, discardable.}

proc XDraw_ClearClip*(hDraw: HDRAW) {.cdecl, importc: "XDraw_ClearClip", dynlib: xcgui, discardable.}

proc XDraw_EnableSmoothingMode*(hDraw: HDRAW; bEnable: BOOL) {.cdecl,
    importc: "XDraw_EnableSmoothingMode", dynlib: xcgui, discardable.}
## 启用平滑模式


proc XDraw_CreateSolidBrush*(hDraw: HDRAW; crColor: COLORREF): HBRUSH {.cdecl,
    importc: "XDraw_CreateSolidBrush", dynlib: xcgui, discardable.}

proc XDraw_CreatePen*(hDraw: HDRAW; fnPenStyle: cint; nWidth: cint; crColor: COLORREF): HPEN {.
    cdecl, importc: "XDraw_CreatePen", dynlib: xcgui, discardable.}

proc XDraw_CreateRectRgn*(hDraw: HDRAW; nLeftRect: cint; nTopRect: cint;
                         nRightRect: cint; nBottomRect: cint): HRGN {.cdecl,
    importc: "XDraw_CreateRectRgn", dynlib: xcgui, discardable.}

proc XDraw_CreateRoundRectRgn*(hDraw: HDRAW; nLeftRect: cint; nTopRect: cint;
                              nRightRect: cint; nBottomRect: cint;
                              nWidthEllipse: cint; nHeightEllipse: cint): HRGN {.
    cdecl, importc: "XDraw_CreateRoundRectRgn", dynlib: xcgui, discardable.}

proc XDraw_CreatePolygonRgn*(hDraw: HDRAW; pPt: ptr POINT; cPoints: cint;
                            fnPolyFillMode: cint): HRGN {.cdecl,
    importc: "XDraw_CreatePolygonRgn", dynlib: xcgui, discardable.}

proc XDraw_SelectClipRgn*(hDraw: HDRAW; hRgn: HRGN): cint {.cdecl,
    importc: "XDraw_SelectClipRgn", dynlib: xcgui, discardable.}

proc XDraw_FillRect*(hDraw: HDRAW; pRect: ptr RECT) {.cdecl, importc: "XDraw_FillRect",
    dynlib: xcgui, discardable.}

proc XDraw_FillRectColor*(hDraw: HDRAW; pRect: ptr RECT; color: COLORREF;
                         alpha: BYTE = 255) {.cdecl, importc: "XDraw_FillRectColor",
    dynlib: xcgui, discardable.}

proc XDraw_FillRgn*(hDraw: HDRAW; hrgn: HRGN; hbr: HBRUSH): BOOL {.cdecl,
    importc: "XDraw_FillRgn", dynlib: xcgui, discardable.}

proc XDraw_FillEllipse*(hDraw: HDRAW; pRect: ptr RECT) {.cdecl,
    importc: "XDraw_FillEllipse", dynlib: xcgui, discardable.}

proc XDraw_DrawEllipse*(hDraw: HDRAW; pRect: ptr RECT) {.cdecl,
    importc: "XDraw_DrawEllipse", dynlib: xcgui, discardable.}

proc XDraw_FillRoundRect*(hDraw: HDRAW; pRect: ptr RECT; nWidth: cint; nHeight: cint) {.
    cdecl, importc: "XDraw_FillRoundRect", dynlib: xcgui, discardable.}
## 填充圆角矩形


proc XDraw_DrawRoundRect*(hDraw: HDRAW; pRect: ptr RECT; nWidth: cint; nHeight: cint) {.
    cdecl, importc: "XDraw_DrawRoundRect", dynlib: xcgui, discardable.}
## 绘制圆角矩形边框


proc XDraw_FillRoundRectEx*(hDraw: HDRAW; pRect: ptr RECT; nLeftTop: cint;
                           nRightTop: cint; nRightBottom: cint; nLeftBottom: cint) {.
    cdecl, importc: "XDraw_FillRoundRectEx", dynlib: xcgui, discardable.}
## 填充圆角矩形


proc XDraw_DrawRoundRectEx*(hDraw: HDRAW; pRect: ptr RECT; nLeftTop: cint;
                           nRightTop: cint; nRightBottom: cint; nLeftBottom: cint) {.
    cdecl, importc: "XDraw_DrawRoundRectEx", dynlib: xcgui, discardable.}
## 绘制圆角矩形边框


proc XDraw_Rectangle*(hDraw: HDRAW; nLeftRect: cint; nTopRect: cint; nRightRect: cint;
                     nBottomRect: cint): BOOL {.cdecl, importc: "XDraw_Rectangle",
    dynlib: xcgui, discardable.}

proc XDraw_DrawGroupBox_Rect*(hDraw: HDRAW; pRect: ptr RECT; pName: ptr WCHAR;
                             textColor: COLORREF; textAlpha: BYTE;
                             pOffset: ptr POINT) {.cdecl,
    importc: "XDraw_DrawGroupBox_Rect", dynlib: xcgui, discardable.}

proc XDraw_DrawGroupBox_RoundRect*(hDraw: HDRAW; pRect: ptr RECT; pName: ptr WCHAR;
                                  textColor: COLORREF; textAlpha: BYTE;
                                  pOffset: ptr POINT; nWidth: cint; nHeight: cint) {.
    cdecl, importc: "XDraw_DrawGroupBox_RoundRect", dynlib: xcgui, discardable.}

proc XDraw_GradientFill2*(hDraw: HDRAW; color1: COLORREF; alpha1: BYTE;
                         color2: COLORREF; alpha2: BYTE; pRect: ptr RECT; mode: cint) {.
    cdecl, importc: "XDraw_GradientFill2", dynlib: xcgui, discardable.}

proc XDraw_GradientFill4*(hDraw: HDRAW; color1: COLORREF; color2: COLORREF;
                         color3: COLORREF; color4: COLORREF; pRect: ptr RECT;
                         mode: cint): BOOL {.cdecl, importc: "XDraw_GradientFill4",
    dynlib: xcgui, discardable.}

proc XDraw_FrameRgn*(hDraw: HDRAW; hrgn: HRGN; hbr: HBRUSH; nWidth: cint; nHeight: cint): BOOL {.
    cdecl, importc: "XDraw_FrameRgn", dynlib: xcgui, discardable.}

proc XDraw_FrameRect*(hDraw: HDRAW; pRect: ptr RECT) {.cdecl,
    importc: "XDraw_FrameRect", dynlib: xcgui, discardable.}

proc XDraw_FocusRect*(hDraw: HDRAW; pRect: ptr RECT) {.cdecl,
    importc: "XDraw_FocusRect", dynlib: xcgui, discardable.}

proc XDraw_DrawLine*(hDraw: HDRAW; x1: cint; y1: cint; x2: cint; y2: cint) {.cdecl,
    importc: "XDraw_DrawLine", dynlib: xcgui, discardable.}

proc XDraw_MoveToEx*(hDraw: HDRAW; X: cint; Y: cint; lpPoint: LPPOINT = nil): BOOL {.cdecl,
    importc: "XDraw_MoveToEx", dynlib: xcgui, discardable.}

proc XDraw_LineTo*(hDraw: HDRAW; nXEnd: cint; nYEnd: cint): BOOL {.cdecl,
    importc: "XDraw_LineTo", dynlib: xcgui, discardable.}

proc XDraw_Polyline*(hDraw: HDRAW; pArrayPt: ptr POINT; arrayPtSize: cint): BOOL {.cdecl,
    importc: "XDraw_Polyline", dynlib: xcgui, discardable.}

proc XDraw_Dottedline*(hDraw: HDRAW; x1: cint; y1: cint; x2: cint; y2: cint) {.cdecl,
    importc: "XDraw_Dottedline", dynlib: xcgui, discardable.}
## 绘制虚线


proc XDraw_SetPixel*(hDraw: HDRAW; X: cint; Y: cint; crColor: COLORREF): COLORREF {.cdecl,
    importc: "XDraw_SetPixel", dynlib: xcgui, discardable.}

proc XDraw_Check*(hDraw: HDRAW; x: cint; y: cint; color: COLORREF; bCheck: BOOL) {.cdecl,
    importc: "XDraw_Check", dynlib: xcgui, discardable.}

proc XDraw_DrawIconEx*(hDraw: HDRAW; xLeft: cint; yTop: cint; hIcon: HICON;
                      cxWidth: cint; cyWidth: cint; istepIfAniCur: UINT;
                      hbrFlickerFreeDraw: HBRUSH; diFlags: UINT): BOOL {.cdecl,
    importc: "XDraw_DrawIconEx", dynlib: xcgui, discardable.}

proc XDraw_BitBlt*(hDrawDest: HDRAW; nXDest: cint; nYDest: cint; nWidth: cint;
                  nHeight: cint; hdcSrc: HDC; nXSrc: cint; nYSrc: cint; dwRop: DWORD): BOOL {.
    cdecl, importc: "XDraw_BitBlt", dynlib: xcgui, discardable.}

proc XDraw_BitBlt2*(hDrawDest: HDRAW; nXDest: cint; nYDest: cint; nWidth: cint;
                   nHeight: cint; hDrawSrc: HDRAW; nXSrc: cint; nYSrc: cint;
                   dwRop: DWORD): BOOL {.cdecl, importc: "XDraw_BitBlt2",
                                      dynlib: xcgui, discardable.}

proc XDraw_AlphaBlend*(hDraw: HDRAW; nXOriginDest: cint; nYOriginDest: cint;
                      nWidthDest: cint; nHeightDest: cint; hdcSrc: HDC;
                      nXOriginSrc: cint; nYOriginSrc: cint; nWidthSrc: cint;
                      nHeightSrc: cint; alpha: cint): BOOL {.cdecl,
    importc: "XDraw_AlphaBlend", dynlib: xcgui, discardable.}

proc XDraw_TriangularArrow*(hDraw: HDRAW; align: cint; x: cint; y: cint; width: cint;
                           height: cint) {.cdecl, importc: "XDraw_TriangularArrow",
    dynlib: xcgui, discardable.}

proc XDraw_DrawPolygon*(hDraw: HDRAW; points: ptr POINT; nCount: cint) {.cdecl,
    importc: "XDraw_DrawPolygon", dynlib: xcgui, discardable.}

proc XDraw_DrawPolygonF*(hDraw: HDRAW; points: ptr POINTF; nCount: cint) {.cdecl,
    importc: "XDraw_DrawPolygonF", dynlib: xcgui, discardable.}

proc XDraw_FillPolygon*(hDraw: HDRAW; points: ptr POINT; nCount: cint) {.cdecl,
    importc: "XDraw_FillPolygon", dynlib: xcgui, discardable.}

proc XDraw_FillPolygonF*(hDraw: HDRAW; points: ptr POINTF; nCount: cint) {.cdecl,
    importc: "XDraw_FillPolygonF", dynlib: xcgui, discardable.}

proc XDraw_Image*(hDraw: HDRAW; hImageFrame: HIMAGE; x: cint; y: cint) {.cdecl,
    importc: "XDraw_Image", dynlib: xcgui, discardable.}

proc XDraw_Image2*(hDraw: HDRAW; hImageFrame: HIMAGE; x: cint; y: cint; width: cint;
                  height: cint) {.cdecl, importc: "XDraw_Image2", dynlib: xcgui, discardable.}

proc XDraw_ImageStretch*(hDraw: HDRAW; hImageFrame: HIMAGE; x: cint; y: cint;
                        width: cint; height: cint) {.cdecl,
    importc: "XDraw_ImageStretch", dynlib: xcgui, discardable.}

proc XDraw_ImageAdaptive*(hDraw: HDRAW; hImageFrame: HIMAGE; pRect: ptr RECT;
                         bOnlyBorder: BOOL = FALSE) {.cdecl,
    importc: "XDraw_ImageAdaptive", dynlib: xcgui, discardable.}

proc XDraw_ImageExTile*(hDraw: HDRAW; hImageFrame: HIMAGE; pRect: ptr RECT;
                       flag: cint = 0) {.cdecl, importc: "XDraw_ImageExTile",
                                     dynlib: xcgui, discardable.}

proc XDraw_ImageSuper*(hDraw: HDRAW; hImageFrame: HIMAGE; pRect: ptr RECT;
                      bClip: BOOL = FALSE) {.cdecl, importc: "XDraw_ImageSuper",
    dynlib: xcgui, discardable.}

proc XDraw_ImageSuper2*(hDraw: HDRAW; hImageFrame: HIMAGE; pRcDest: ptr RECT;
                       pSrcRect: ptr RECT) {.cdecl, importc: "XDraw_ImageSuper2",
    dynlib: xcgui, discardable.}

proc XDraw_ImageSuperMask*(hDraw: HDRAW; hImageFrame: HIMAGE;
                          hImageFrameMask: HIMAGE; pRect: ptr RECT;
                          pRectMask: ptr RECT; bClip: BOOL = FALSE) {.cdecl,
    importc: "XDraw_ImageSuperMask", dynlib: xcgui, discardable.}

proc XDraw_ImageMask*(hDraw: HDRAW; hImageFrame: HIMAGE; hImageFrameMask: HIMAGE;
                     x: cint; y: cint; x2: cint; y2: cint) {.cdecl,
    importc: "XDraw_ImageMask", dynlib: xcgui, discardable.}

proc XDraw_DrawText*(hDraw: HDRAW; lpString: ptr WCHAR; nCount: cint; lpRect: ptr RECT) {.
    cdecl, importc: "XDraw_DrawText", dynlib: xcgui, discardable.}

proc XDraw_DrawTextUnderline*(hDraw: HDRAW; lpString: ptr WCHAR; nCount: cint;
                             lpRect: ptr RECT; colorLine: COLORREF;
                             alphaLine: BYTE = 255) {.cdecl,
    importc: "XDraw_DrawTextUnderline", dynlib: xcgui, discardable.}

proc XDraw_TextOut*(hDraw: HDRAW; nXStart: cint; nYStart: cint; lpString: ptr WCHAR;
                   cbString: cint) {.cdecl, importc: "XDraw_TextOut", dynlib: xcgui, discardable.}

proc XDraw_TextOutEx*(hDraw: HDRAW; nXStart: cint; nYStart: cint; lpString: ptr WCHAR) {.
    cdecl, importc: "XDraw_TextOutEx", dynlib: xcgui, discardable.}

proc XDraw_TextOutA*(hDraw: HDRAW; nXStart: cint; nYStart: cint; lpString: cstring) {.
    cdecl, importc: "XDraw_TextOutA", dynlib: xcgui, discardable.}

proc XDraw_SetAlpha*(hDraw: HDRAW; alpha: BYTE) {.cdecl, importc: "XDraw_SetAlpha",
    dynlib: xcgui, discardable.}
## 设置透明通道度


proc XDraw_SetAlphaEx*(hdc: HDC; alpha: BYTE) {.cdecl, importc: "XDraw_SetAlphaEx",
    dynlib: xcgui, discardable.}
## 设置透明通道度


proc XEditor_Create*(x: cint; y: cint; cx: cint; cy: cint; hParent: HXCGUI = nil): HELE {.
    cdecl, importc: "XEditor_Create", dynlib: xcgui, discardable.}

proc XEditor_SetBreakpoint*(hEle: HELE; iPosition: cint; bActivate: BOOL = TRUE): BOOL {.
    cdecl, importc: "XEditor_SetBreakpoint", dynlib: xcgui, discardable.}
## 添加断点


proc XEditor_RemoveBreakpoint*(hEle: HELE; iPosition: cint): BOOL {.cdecl,
    importc: "XEditor_RemoveBreakpoint", dynlib: xcgui, discardable.}
## 添加断点


proc XEditor_ClearBreakpoint*(hEle: HELE) {.cdecl,
    importc: "XEditor_ClearBreakpoint", dynlib: xcgui, discardable.}

proc XEditor_SetActivateBreakpoint*(hEle: HELE; iPosition: cint; bActivate: BOOL): BOOL {.
    cdecl, importc: "XEditor_SetActivateBreakpoint", dynlib: xcgui, discardable.}
## 设置当前命中行


proc XEditor_SetRunRow*(hEle: HELE; iPosition: cint): BOOL {.cdecl,
    importc: "XEditor_SetRunRow", dynlib: xcgui, discardable.}

proc XEditor_GetBreakpointCount*(hEle: HELE): cint {.cdecl,
    importc: "XEditor_GetBreakpointCount", dynlib: xcgui, discardable.}

proc XEditor_GetBreakpoints*(hEle: HELE; aPoints: ptr cint; nCount: cint): cint {.cdecl,
    importc: "XEditor_GetBreakpoints", dynlib: xcgui, discardable.}

proc XEdit_Create*(x: cint; y: cint; cx: cint; cy: cint; hParent: HXCGUI = nil): HELE {.cdecl,
    importc: "XEdit_Create", dynlib: xcgui, discardable.}

proc XEdit_SetText*(hEle: HELE; pString: ptr WCHAR) {.cdecl,
    importc: "XEdit_SetText", dynlib: xcgui, discardable.}

proc XEdit_GetText*(hEle: HELE; pOut: ptr WCHAR; nOutlen: cint): cint {.cdecl,
    importc: "XEdit_GetText", dynlib: xcgui, discardable.}

proc XEdit_GetTextLength*(hEle: HELE): cint {.cdecl, importc: "XEdit_GetTextLength",
    dynlib: xcgui, discardable.}

proc XEdit_SetCaretColor*(hEle: HELE; color: COLORREF) {.cdecl,
    importc: "XEdit_SetCaretColor", dynlib: xcgui, discardable.}

proc XEdit_SetSelectBkColor*(hEle: HELE; color: COLORREF; alpha: BYTE = 255) {.cdecl,
    importc: "XEdit_SetSelectBkColor", dynlib: xcgui, discardable.}

proc XEdit_AddKeyword*(hEle: HELE; pKeyword: ptr WCHAR; color: COLORREF) {.cdecl,
    importc: "XEdit_AddKeyword", dynlib: xcgui, discardable.}

proc XEdit_ClipboardPaste*(hEle: HELE): BOOL {.cdecl,
    importc: "XEdit_ClipboardPaste", dynlib: xcgui, discardable.}
## 粘贴 粘贴剪贴板内容


proc XEle_Create*(x: cint; y: cint; cx: cint; cy: cint; hParent: HXCGUI = nil): HELE {.cdecl,
    importc: "XEle_Create", dynlib: xcgui, discardable.}

#~ proc XEle_RegEvent*(hEle: HELE; nEvent: UINT; pEvent: ptr xc_event): BOOL {.cdecl,
    #~ importc: "_XEle_RegEvent", dynlib: xcgui, discardable.}

#~ proc XEle_RemoveEvent*(hEle: HELE; nEvent: UINT; pEvent: ptr xc_event): BOOL {.cdecl,
    #~ importc: "_XEle_RemoveEvent", dynlib: xcgui, discardable.}

proc XEle_RegEventC*(hEle: HELE; nEvent: cint; pFun: pointer): BOOL {.cdecl,
    importc: "XEle_RegEventC", dynlib: xcgui, discardable.}
## 注册事件C方式


proc XEle_RegEventC1*(hEle: HELE; nEvent: cint; pFun: pointer): BOOL {.cdecl,
    importc: "XEle_RegEventC1", dynlib: xcgui, discardable.}

proc XEle_RegEventC2*(hEle: HELE; nEvent: cint; pFun: pointer): BOOL {.cdecl,
    importc: "XEle_RegEventC2", dynlib: xcgui, discardable.}

proc XEle_RemoveEventC*(hEle: HELE; nEvent: cint; pFun: pointer): BOOL {.cdecl,
    importc: "XEle_RemoveEventC", dynlib: xcgui, discardable.}
## 移除事件函数C方式


proc XEle_SendEvent*(hEle: HELE; hEventEle: HELE; nEvent: cint; wParam: WPARAM;
                    lParam: LPARAM): cint {.cdecl, importc: "XEle_SendEvent",
    dynlib: xcgui, discardable.}

proc XEle_PostEvent*(hEle: HELE; hEventEle: HELE; nEvent: cint; wParam: WPARAM;
                    lParam: LPARAM): BOOL {.cdecl, importc: "XEle_PostEvent",
    dynlib: xcgui, discardable.}

proc XEle_IsShow*(hEle: HELE): BOOL {.cdecl, importc: "XEle_IsShow", dynlib: xcgui, discardable.}

proc XEle_IsEnable*(hEle: HELE): BOOL {.cdecl, importc: "XEle_IsEnable", dynlib: xcgui, discardable.}

proc XEle_IsEnableFocus*(hEle: HELE): BOOL {.cdecl, importc: "XEle_IsEnableFocus",
    dynlib: xcgui, discardable.}

proc XEle_IsDrawFocus*(hEle: HELE): BOOL {.cdecl, importc: "XEle_IsDrawFocus",
                                       dynlib: xcgui, discardable.}

proc XEle_IsEnableEvent_XE_PAINT_END*(hEle: HELE): BOOL {.cdecl,
    importc: "XEle_IsEnableEvent_XE_PAINT_END", dynlib: xcgui, discardable.}

proc XEle_IsMouseThrough*(hEle: HELE): BOOL {.cdecl, importc: "XEle_IsMouseThrough",
    dynlib: xcgui, discardable.}

proc XEle_IsBkTransparent*(hEle: HELE): BOOL {.cdecl,
    importc: "XEle_IsBkTransparent", dynlib: xcgui, discardable.}

proc XEle_IsKeyTab*(hEle: HELE): BOOL {.cdecl, importc: "XEle_IsKeyTab", dynlib: xcgui, discardable.}

proc XEle_IsSwitchFocus*(hEle: HELE): BOOL {.cdecl, importc: "XEle_IsSwitchFocus",
    dynlib: xcgui, discardable.}

proc XEle_IsEnable_XE_MOUSEWHEEL*(hEle: HELE): BOOL {.cdecl,
    importc: "XEle_IsEnable_XE_MOUSEWHEEL", dynlib: xcgui, discardable.}

proc XEle_IsChildEle*(hEle: HELE; hChildEle: HELE): BOOL {.cdecl,
    importc: "XEle_IsChildEle", dynlib: xcgui, discardable.}

proc XEle_IsEnableCanvas*(hEle: HELE): BOOL {.cdecl, importc: "XEle_IsEnableCanvas",
    dynlib: xcgui, discardable.}

proc XEle_IsFocus*(hEle: HELE): BOOL {.cdecl, importc: "XEle_IsFocus", dynlib: xcgui, discardable.}

proc XEle_IsFocusEx*(hEle: HELE): BOOL {.cdecl, importc: "XEle_IsFocusEx",
                                     dynlib: xcgui, discardable.}

proc XEle_Enable*(hEle: HELE; bEnable: BOOL) {.cdecl, importc: "XEle_Enable",
    dynlib: xcgui, discardable.}

proc XEle_EnableFocus*(hEle: HELE; bEnable: BOOL) {.cdecl,
    importc: "XEle_EnableFocus", dynlib: xcgui, discardable.}

proc XEle_EnableDrawFocus*(hEle: HELE; bEnable: BOOL) {.cdecl,
    importc: "XEle_EnableDrawFocus", dynlib: xcgui, discardable.}

proc XEle_EnableDrawBorder*(hEle: HELE; bEnable: BOOL) {.cdecl,
    importc: "XEle_EnableDrawBorder", dynlib: xcgui, discardable.}

proc XEle_EnableCanvas*(hEle: HELE; bEnable: BOOL) {.cdecl,
    importc: "XEle_EnableCanvas", dynlib: xcgui, discardable.}

proc XEle_EnableEvent_XE_PAINT_END*(hEle: HELE; bEnable: BOOL) {.cdecl,
    importc: "XEle_EnableEvent_XE_PAINT_END", dynlib: xcgui, discardable.}

proc XEle_EnableBkTransparent*(hEle: HELE; bEnable: BOOL) {.cdecl,
    importc: "XEle_EnableBkTransparent", dynlib: xcgui, discardable.}

proc XEle_EnableMouseThrough*(hEle: HELE; bEnable: BOOL) {.cdecl,
    importc: "XEle_EnableMouseThrough", dynlib: xcgui, discardable.}

proc XEle_EnableKeyTab*(hEle: HELE; bEnable: BOOL) {.cdecl,
    importc: "XEle_EnableKeyTab", dynlib: xcgui, discardable.}

proc XEle_EnableSwitchFocus*(hEle: HELE; bEnable: BOOL) {.cdecl,
    importc: "XEle_EnableSwitchFocus", dynlib: xcgui, discardable.}

proc XEle_EnableEvent_XE_MOUSEWHEEL*(hEle: HELE; bEnable: BOOL) {.cdecl,
    importc: "XEle_EnableEvent_XE_MOUSEWHEEL", dynlib: xcgui, discardable.}

#~ proc XEle_SetRect*(hEle: HELE; pRect: ptr RECT; bRedraw: BOOL = FALSE;
                  #~ nFlags: cint = xc_adjustLayout_all): cint {.cdecl,
    #~ importc: "XEle_SetRect", dynlib: xcgui, discardable.}

#~ proc XEle_SetRectEx*(hEle: HELE; x: cint; y: cint; cx: cint; cy: cint;
                    #~ bRedraw: BOOL = FALSE; nFlags: cint = xc_adjustLayout_all): cint {.
    #~ cdecl, importc: "XEle_SetRectEx", dynlib: xcgui, discardable.}

#~ proc XEle_SetRectLogic*(hEle: HELE; pRect: ptr RECT; bRedraw: BOOL = FALSE;
                       #~ nFlags: cint = xc_adjustLayout_all): cint {.cdecl,
    #~ importc: "XEle_SetRectLogic", dynlib: xcgui, discardable.}
## 逻辑模式坐标


proc XEle_GetRect*(hEle: HELE; pRect: ptr RECT) {.cdecl, importc: "XEle_GetRect",
    dynlib: xcgui, discardable.}
## 相对与父坐标,人眼观察模式


proc XEle_GetRectLogic*(hEle: HELE; pRect: ptr RECT) {.cdecl,
    importc: "XEle_GetRectLogic", dynlib: xcgui, discardable.}
## 相对与父坐标,逻辑模式


proc XEle_GetClientRect*(hEle: HELE; pRect: ptr RECT) {.cdecl,
    importc: "XEle_GetClientRect", dynlib: xcgui, discardable.}
## 左上角为0，0坐标


proc XEle_GetWndClientRect*(hEle: HELE; pRect: ptr RECT) {.cdecl,
    importc: "XEle_GetWndClientRect", dynlib: xcgui, discardable.}

proc XEle_SetWidth*(hEle: HELE; nWidth: cint) {.cdecl, importc: "XEle_SetWidth",
    dynlib: xcgui, discardable.}

proc XEle_SetHeight*(hEle: HELE; nHeight: cint) {.cdecl, importc: "XEle_SetHeight",
    dynlib: xcgui, discardable.}

proc XEle_GetWidth*(hEle: HELE): cint {.cdecl, importc: "XEle_GetWidth", dynlib: xcgui, discardable.}

proc XEle_GetHeight*(hEle: HELE): cint {.cdecl, importc: "XEle_GetHeight",
                                     dynlib: xcgui, discardable.}

proc XEle_RectWndClientToEleClient*(hEle: HELE; pRect: ptr RECT) {.cdecl,
    importc: "XEle_RectWndClientToEleClient", dynlib: xcgui, discardable.}

proc XEle_PointWndClientToEleClient*(hEle: HELE; pPt: ptr POINT) {.cdecl,
    importc: "XEle_PointWndClientToEleClient", dynlib: xcgui, discardable.}

proc XEle_RectClientToWndClient*(hEle: HELE; pRect: ptr RECT) {.cdecl,
    importc: "XEle_RectClientToWndClient", dynlib: xcgui, discardable.}

proc XEle_PointClientToWndClient*(hEle: HELE; pPt: ptr POINT) {.cdecl,
    importc: "XEle_PointClientToWndClient", dynlib: xcgui, discardable.}

proc XEle_AddChild*(hEle: HELE; hChild: HXCGUI): BOOL {.cdecl,
    importc: "XEle_AddChild", dynlib: xcgui, discardable.}

proc XEle_InsertChild*(hEle: HELE; hChild: HXCGUI; index: cint): BOOL {.cdecl,
    importc: "XEle_InsertChild", dynlib: xcgui, discardable.}
## 插入到指定位置


proc XEle_RemoveEle*(hEle: HELE) {.cdecl, importc: "XEle_RemoveEle", dynlib: xcgui, discardable.}

proc XEle_SetZOrder*(hEle: HELE; index: cint): BOOL {.cdecl, importc: "XEle_SetZOrder",
    dynlib: xcgui, discardable.}

proc XEle_SetZOrderEx*(hEle: HELE; hDestEle: HELE; nType: zorder): BOOL {.cdecl,
    importc: "XEle_SetZOrderEx", dynlib: xcgui, discardable.}

proc XEle_GetZOrder*(hEle: HELE): cint {.cdecl, importc: "XEle_GetZOrder",
                                     dynlib: xcgui, discardable.}

proc XEle_SetTopmost*(hEle: HELE; bTopmost: BOOL): BOOL {.cdecl,
    importc: "XEle_SetTopmost", dynlib: xcgui, discardable.}

proc XEle_EnableCSS*(hEle: HELE; bEnable: BOOL) {.cdecl, importc: "XEle_EnableCSS",
    dynlib: xcgui, discardable.}

proc XEle_SetCssName*(hEle: HELE; pName: ptr WCHAR) {.cdecl,
    importc: "XEle_SetCssName", dynlib: xcgui, discardable.}

proc XEle_GetCssName*(hEle: HELE): ptr WCHAR {.cdecl, importc: "XEle_GetCssName",
    dynlib: xcgui, discardable.}

proc XEle_ShowEle*(hEle: HELE; bShow: BOOL) {.cdecl, importc: "XEle_ShowEle",
    dynlib: xcgui, discardable.}

proc XEle_GetType*(hEle: HELE): XC_OBJECT_TYPE {.cdecl, importc: "XEle_GetType",
    dynlib: xcgui, discardable.}

proc XEle_GetHWND*(hEle: HELE): HWND {.cdecl, importc: "XEle_GetHWND", dynlib: xcgui, discardable.}

proc XEle_GetHWINDOW*(hEle: HELE): HWINDOW {.cdecl, importc: "XEle_GetHWINDOW",
    dynlib: xcgui, discardable.}

proc XEle_SetCursor*(hEle: HELE; hCursor: HCURSOR) {.cdecl, importc: "XEle_SetCursor",
    dynlib: xcgui, discardable.}

proc XEle_GetCursor*(hEle: HELE): HCURSOR {.cdecl, importc: "XEle_GetCursor",
                                        dynlib: xcgui, discardable.}

proc XEle_SetID*(hEle: HELE; nID: cint) {.cdecl, importc: "XEle_SetID", dynlib: xcgui, discardable.}

proc XEle_GetID*(hEle: HELE): cint {.cdecl, importc: "XEle_GetID", dynlib: xcgui, discardable.}

proc XEle_SetUID*(hEle: HELE; nUID: cint) {.cdecl, importc: "XEle_SetUID", dynlib: xcgui, discardable.}

proc XEle_GetUID*(hEle: HELE): cint {.cdecl, importc: "XEle_GetUID", dynlib: xcgui, discardable.}

proc XEle_SetName*(hEle: HELE; pName: ptr WCHAR) {.cdecl, importc: "XEle_SetName",
    dynlib: xcgui, discardable.}

proc XEle_GetName*(hEle: HELE): ptr WCHAR {.cdecl, importc: "XEle_GetName",
    dynlib: xcgui, discardable.}

proc XEle_GetParentEle*(hEle: HELE): HELE {.cdecl, importc: "XEle_GetParentEle",
                                        dynlib: xcgui, discardable.}

proc XEle_GetParent*(hEle: HELE): HXCGUI {.cdecl, importc: "XEle_GetParent",
                                       dynlib: xcgui, discardable.}

proc XEle_SetTextColor*(hEle: HELE; color: COLORREF; alpha: BYTE = 255) {.cdecl,
    importc: "XEle_SetTextColor", dynlib: xcgui, discardable.}

proc XEle_GetTextColor*(hEle: HELE): COLORREF {.cdecl, importc: "XEle_GetTextColor",
    dynlib: xcgui, discardable.}

proc XEle_GetTextColorEx*(hEle: HELE): COLORREF {.cdecl,
    importc: "XEle_GetTextColorEx", dynlib: xcgui, discardable.}

proc XEle_SetFocusBorderColor*(hEle: HELE; color: COLORREF; alpha: BYTE = 255) {.cdecl,
    importc: "XEle_SetFocusBorderColor", dynlib: xcgui, discardable.}

proc XEle_GetFocusBorderColor*(hEle: HELE): COLORREF {.cdecl,
    importc: "XEle_GetFocusBorderColor", dynlib: xcgui, discardable.}

proc XEle_SetFont*(hEle: HELE; hFontx: HFONTX) {.cdecl, importc: "XEle_SetFont",
    dynlib: xcgui, discardable.}

proc XEle_GetFont*(hEle: HELE): HFONTX {.cdecl, importc: "XEle_GetFont", dynlib: xcgui, discardable.}

proc XEle_GetFontEx*(hEle: HELE): HFONTX {.cdecl, importc: "XEle_GetFontEx",
                                       dynlib: xcgui, discardable.}

proc XEle_SetAlpha*(hEle: HELE; alpha: BYTE) {.cdecl, importc: "XEle_SetAlpha",
    dynlib: xcgui, discardable.}

proc XEle_GetChildCount*(hEle: HELE): cint {.cdecl, importc: "XEle_GetChildCount",
    dynlib: xcgui, discardable.}

proc XEle_GetChildByIndex*(hEle: HELE; index: cint): HXCGUI {.cdecl,
    importc: "XEle_GetChildByIndex", dynlib: xcgui, discardable.}

proc XEle_GetChildByID*(hEle: HELE; nID: cint): HXCGUI {.cdecl,
    importc: "XEle_GetChildByID", dynlib: xcgui, discardable.}

proc XEle_SetBorderSize*(hEle: HELE; left: cint; top: cint; right: cint; bottom: cint) {.
    cdecl, importc: "XEle_SetBorderSize", dynlib: xcgui, discardable.}

proc XEle_GetBorderSize*(hEle: HELE; pBorder: ptr BorderSize_i) {.cdecl,
    importc: "XEle_GetBorderSize", dynlib: xcgui, discardable.}

proc XEle_SetPadding*(hEle: HELE; left: cint; top: cint; right: cint; bottom: cint) {.
    cdecl, importc: "XEle_SetPadding", dynlib: xcgui, discardable.}

proc XEle_GetPadding*(hEle: HELE; pPadding: ptr PaddingSize_i) {.cdecl,
    importc: "XEle_GetPadding", dynlib: xcgui, discardable.}

proc XEle_SetDragBorder*(hEle: HELE; nFlags: cint) {.cdecl,
    importc: "XEle_SetDragBorder", dynlib: xcgui, discardable.}

proc XEle_SetDragBorderBindEle*(hEle: HELE; nFlags: cint; hBindEle: HELE; nSpace: cint) {.
    cdecl, importc: "XEle_SetDragBorderBindEle", dynlib: xcgui, discardable.}

proc XEle_SetMinSize*(hEle: HELE; nWidth: cint; nHeight: cint) {.cdecl,
    importc: "XEle_SetMinSize", dynlib: xcgui, discardable.}

proc XEle_SetMaxSize*(hEle: HELE; nWidth: cint; nHeight: cint) {.cdecl,
    importc: "XEle_SetMaxSize", dynlib: xcgui, discardable.}

proc XEle_SetLockScroll*(hEle: HELE; bHorizon: BOOL; bVertical: BOOL) {.cdecl,
    importc: "XEle_SetLockScroll", dynlib: xcgui, discardable.}

proc XEle_HitChildEle*(hEle: HELE; pPt: ptr POINT): HELE {.cdecl,
    importc: "XEle_HitChildEle", dynlib: xcgui, discardable.}

proc XEle_SetUserData*(hEle: HELE; nData: cint) {.cdecl, importc: "XEle_SetUserData",
    dynlib: xcgui, discardable.}

proc XEle_GetUserData*(hEle: HELE): cint {.cdecl, importc: "XEle_GetUserData",
                                       dynlib: xcgui, discardable.}

proc XEle_GetContentSize*(hEle: HELE; pSize: ptr SIZE) {.cdecl,
    importc: "XEle_GetContentSize", dynlib: xcgui, discardable.}

proc XEle_SetCapture*(hEle: HELE; b: BOOL) {.cdecl, importc: "XEle_SetCapture",
                                        dynlib: xcgui, discardable.}

proc XEle_SetLayoutWidth*(hEle: HELE; nType: layout_size_type; nWidth: cint) {.cdecl,
    importc: "XEle_SetLayoutWidth", dynlib: xcgui, discardable.}

proc XEle_SetLayoutHeight*(hEle: HELE; nType: layout_size_type; nHeight: cint) {.
    cdecl, importc: "XEle_SetLayoutHeight", dynlib: xcgui, discardable.}

proc XEle_GetLayoutWidth*(hEle: HELE; pType: ptr layout_size_type; pWidth: ptr cint) {.
    cdecl, importc: "XEle_GetLayoutWidth", dynlib: xcgui, discardable.}

proc XEle_GetLayoutHeight*(hEle: HELE; pType: ptr layout_size_type; pHeight: ptr cint) {.
    cdecl, importc: "XEle_GetLayoutHeight", dynlib: xcgui, discardable.}

proc XEle_RedrawEle*(hEle: HELE; bImmediate: BOOL = FALSE) {.cdecl,
    importc: "XEle_RedrawEle", dynlib: xcgui, discardable.}

proc XEle_RedrawRect*(hEle: HELE; pRect: ptr RECT; bImmediate: BOOL = FALSE) {.cdecl,
    importc: "XEle_RedrawRect", dynlib: xcgui, discardable.}

proc XEle_Destroy*(hEle: HELE) {.cdecl, importc: "XEle_Destroy", dynlib: xcgui, discardable.}
## 销毁


proc XEle_AddBkBorder*(hEle: HELE; color: COLORREF; alpha: BYTE; width: cint) {.cdecl,
    importc: "XEle_AddBkBorder", dynlib: xcgui, discardable.}

proc XEle_AddBkFill*(hEle: HELE; color: COLORREF; alpha: BYTE) {.cdecl,
    importc: "XEle_AddBkFill", dynlib: xcgui, discardable.}

proc XEle_AddBkImage*(hEle: HELE; hImage: HIMAGE) {.cdecl, importc: "XEle_AddBkImage",
    dynlib: xcgui, discardable.}

proc XEle_GetBkInfoCount*(hEle: HELE): cint {.cdecl, importc: "XEle_GetBkInfoCount",
    dynlib: xcgui, discardable.}

proc XEle_ClearBkInfo*(hEle: HELE) {.cdecl, importc: "XEle_ClearBkInfo", dynlib: xcgui, discardable.}

proc XEle_GetBkManager*(hEle: HELE): HBKM {.cdecl, importc: "XEle_GetBkManager",
                                        dynlib: xcgui, discardable.}

proc XEle_GetBkManagerEx*(hEle: HELE): HBKM {.cdecl, importc: "XEle_GetBkManagerEx",
    dynlib: xcgui, discardable.}

proc XEle_GetStateFlags*(hEle: HELE): cint {.cdecl, importc: "XEle_GetStateFlags",
    dynlib: xcgui, discardable.}
## 获取组合状态


proc XEle_DrawFocus*(hEle: HELE; hDraw: HDRAW; pRect: ptr RECT): BOOL {.cdecl,
    importc: "XEle_DrawFocus", dynlib: xcgui, discardable.}

proc XEle_DrawEle*(hEle: HELE; hDraw: HDRAW) {.cdecl, importc: "XEle_DrawEle",
    dynlib: xcgui, discardable.}

proc XEle_EnableTransparentChannel*(hEle: HELE; bEnable: BOOL) {.cdecl,
    importc: "XEle_EnableTransparentChannel", dynlib: xcgui, discardable.}

proc XEle_SetXCTimer*(hEle: HELE; nIDEvent: UINT; uElapse: UINT): BOOL {.cdecl,
    importc: "XEle_SetXCTimer", dynlib: xcgui, discardable.}

proc XEle_KillXCTimer*(hEle: HELE; nIDEvent: UINT): BOOL {.cdecl,
    importc: "XEle_KillXCTimer", dynlib: xcgui, discardable.}

proc XEle_SetToolTip*(hEle: HELE; pText: ptr WCHAR) {.cdecl,
    importc: "XEle_SetToolTip", dynlib: xcgui, discardable.}

proc XEle_GetToolTip*(hEle: HELE; pOut: ptr WCHAR; nOutLen: cint) {.cdecl,
    importc: "XEle_GetToolTip", dynlib: xcgui, discardable.}

proc XEle_PopupToolTip*(hEle: HELE; x: cint; y: cint) {.cdecl,
    importc: "XEle_PopupToolTip", dynlib: xcgui, discardable.}

proc XEle_AdjustLayout*(hEle: HELE) {.cdecl, importc: "XEle_AdjustLayout",
                                   dynlib: xcgui, discardable.}

#~ proc XEle_AdjustLayoutEx*(hEle: HELE; nFlags: cint = xc_adjustLayout_self) {.cdecl,
    #~ importc: "XEle_AdjustLayoutEx", dynlib: xcgui, discardable.}
## BOOL  XEle_RegEventC_js(HELE hEle, int nEvent, const char* pFunName);
## BOOL  XEle_RegEventC1_js(HELE hEle, int nEvent, const char* pFunName);
## BOOL  XEle_RegEventC2_js(HELE hEle, int nEvent, const char* pFunName);

#~ XFont_Create(int, size)
#~ ## 创建字体

#~ XFont_Create2(`const`, wchar_t * pName = L, "宋体", int, size = 12, int,
              #~ style = xc_fontStyle_regular)
#~ XFont_Create3(xc_font_info_i * pInfo)
#~ XFont_CreateEx(LOGFONTW * pFontInfo)
#~ XFont_CreateFromHFONT(HFONT, hFont)
#~ XFont_CreateFromFont(void * pFont)
#~ XFont_CreateFromFile(`const`, wchar_t * pFontFile, int, size = 12, int,
                     #~ style = xc_fontStyle_regular)

proc XFont_EnableAutoDestroy*(hFontX: HFONTX; bEnable: BOOL) {.cdecl,
    importc: "XFont_EnableAutoDestroy", dynlib: xcgui, discardable.}

proc XFont_GetFont*(hFontX: HFONTX): pointer {.cdecl, importc: "XFont_GetFont",
    dynlib: xcgui, discardable.}

proc XFont_GetFontInfo*(hFontX: HFONTX; pInfo: ptr xc_font_info_i) {.cdecl,
    importc: "XFont_GetFontInfo", dynlib: xcgui, discardable.}

proc XFont_AddRef*(hFontX: HFONTX) {.cdecl, importc: "XFont_AddRef", dynlib: xcgui, discardable.}
## 增加引用计数


proc XFont_Release*(hFontX: HFONTX) {.cdecl, importc: "XFont_Release", dynlib: xcgui, discardable.}
## 释放引用计数


proc XFont_GetRefCount*(hFontX: HFONTX): cint {.cdecl, importc: "XFont_GetRefCount",
    dynlib: xcgui, discardable.}

proc XFont_Destroy*(hFontX: HFONTX) {.cdecl, importc: "XFont_Destroy", dynlib: xcgui, discardable.}
## 销毁字体


proc XFrameWnd_Create*(x: cint; y: cint; cx: cint; cy: cint; pTitle: ptr WCHAR;
                      hWndParent: HWND; XCStyle: cint): HWINDOW {.cdecl,
    importc: "XFrameWnd_Create", dynlib: xcgui, discardable.}
## 创建窗口


proc XFrameWnd_CreateEx*(dwExStyle: DWORD; lpClassName: ptr WCHAR;
                        lpWindowName: ptr WCHAR; dwStyle: DWORD; x: cint; y: cint;
                        cx: cint; cy: cint; hWndParent: HWND; XCStyle: cint): HWINDOW {.
    cdecl, importc: "XFrameWnd_CreateEx", dynlib: xcgui, discardable.}
## 创建窗口


proc XFrameWnd_GetLayoutAreaRect*(hWindow: HWINDOW; pRect: ptr RECT) {.cdecl,
    importc: "XFrameWnd_GetLayoutAreaRect", dynlib: xcgui, discardable.}
## 获取客户区布局区域坐标


proc XFrameWnd_SetView*(hWindow: HWINDOW; hEle: HELE) {.cdecl,
    importc: "XFrameWnd_SetView", dynlib: xcgui, discardable.}

proc XFrameWnd_SetPaneSplitBarColor*(hWindow: HWINDOW; color: COLORREF;
                                    alpha: BYTE = 255) {.cdecl,
    importc: "XFrameWnd_SetPaneSplitBarColor", dynlib: xcgui, discardable.}

proc XFrameWnd_SaveLayoutToFile*(hWindow: HWINDOW; pFileName: ptr WCHAR): BOOL {.
    cdecl, importc: "XFrameWnd_SaveLayoutToFile", dynlib: xcgui, discardable.}

proc XFrameWnd_LoadLayoutFile*(hWindow: HWINDOW; aPaneList: ptr HELE; nEleCount: cint;
                              pFileName: ptr WCHAR): BOOL {.cdecl,
    importc: "XFrameWnd_LoadLayoutFile", dynlib: xcgui, discardable.}

proc XFrameWnd_AddPane*(hWindow: HWINDOW; hPaneDest: HELE; hPaneNew: HELE;
                       align: align_type): BOOL {.cdecl,
    importc: "XFrameWnd_AddPane", dynlib: xcgui, discardable.}

proc XFrameWnd_MergePane*(hWindow: HWINDOW; hPaneDest: HELE; hPaneNew: HELE): BOOL {.
    cdecl, importc: "XFrameWnd_MergePane", dynlib: xcgui, discardable.}

proc XImgSrc_LoadFile*(pImageName: ptr WCHAR): HIMAGE {.cdecl,
    importc: "XImgSrc_LoadFile", dynlib: xcgui, discardable.}
## 从文件中加载图片


proc XImgSrc_LoadFileRect*(pImageName: ptr WCHAR; x: cint; y: cint; cx: cint; cy: cint): HIMAGE {.
    cdecl, importc: "XImgSrc_LoadFileRect", dynlib: xcgui, discardable.}
## 加载图片,指定区域


proc XImgSrc_LoadRes*(id: cint; pType: ptr WCHAR): HIMAGE {.cdecl,
    importc: "XImgSrc_LoadRes", dynlib: xcgui, discardable.}
## 从资源中加载图片


proc XImgSrc_LoadZip*(pZipFileName: ptr WCHAR; pImageName: ptr WCHAR;
                     pPassword: ptr WCHAR = nil): HIMAGE {.cdecl,
    importc: "XImgSrc_LoadZip", dynlib: xcgui, discardable.}
## 从ZIP中加载图片


proc XImgSrc_LoadZipRect*(pZipFileName: ptr WCHAR; pImageName: ptr WCHAR;
                         pPassword: ptr WCHAR; x: cint; y: cint; cx: cint; cy: cint): HIMAGE {.
    cdecl, importc: "XImgSrc_LoadZipRect", dynlib: xcgui, discardable.}

proc XImgSrc_LoadMemory*(pBuffer: pointer; nSize: cint): HIMAGE {.cdecl,
    importc: "XImgSrc_LoadMemory", dynlib: xcgui, discardable.}

proc XImgSrc_LoadMemoryRect*(pBuffer: pointer; nSize: cint; x: cint; y: cint; cx: cint;
                            cy: cint): HIMAGE {.cdecl,
    importc: "XImgSrc_LoadMemoryRect", dynlib: xcgui, discardable.}

proc XImgSrc_LoadFromImage*(pImage: pointer): HIMAGE {.cdecl,
    importc: "XImgSrc_LoadFromImage", dynlib: xcgui, discardable.}

proc XImgSrc_LoadFromExtractIcon*(pImageName: ptr WCHAR): HIMAGE {.cdecl,
    importc: "XImgSrc_LoadFromExtractIcon", dynlib: xcgui, discardable.}

proc XImgSrc_LoadFromHICON*(hIcon: HICON): HIMAGE {.cdecl,
    importc: "XImgSrc_LoadFromHICON", dynlib: xcgui, discardable.}

proc XImgSrc_LoadFromHBITMAP*(hBitmap: HBITMAP): HIMAGE {.cdecl,
    importc: "XImgSrc_LoadFromHBITMAP", dynlib: xcgui, discardable.}

proc XImgSrc_EnableAutoDestroy*(hImage: HIMAGE; bEnable: BOOL) {.cdecl,
    importc: "XImgSrc_EnableAutoDestroy", dynlib: xcgui, discardable.}
## 启用或关闭自动销毁,当与UI元素关联时有效


proc XImgSrc_GetWidth*(hImage: HIMAGE): cint {.cdecl, importc: "XImgSrc_GetWidth",
    dynlib: xcgui, discardable.}

proc XImgSrc_GetHeight*(hImage: HIMAGE): cint {.cdecl, importc: "XImgSrc_GetHeight",
    dynlib: xcgui, discardable.}

proc XImgSrc_AddRef*(hImage: HIMAGE) {.cdecl, importc: "XImgSrc_AddRef", dynlib: xcgui, discardable.}

proc XImgSrc_Release*(hImage: HIMAGE) {.cdecl, importc: "XImgSrc_Release",
                                     dynlib: xcgui, discardable.}

proc XImgSrc_GetRefCount*(hImage: HIMAGE): cint {.cdecl,
    importc: "XImgSrc_GetRefCount", dynlib: xcgui, discardable.}

proc XImgSrc_Destroy*(hImage: HIMAGE) {.cdecl, importc: "XImgSrc_Destroy",
                                     dynlib: xcgui, discardable.}

proc XImage_LoadFile*(pImageName: ptr WCHAR; bStretch: BOOL = FALSE): HIMAGE {.cdecl,
    importc: "XImage_LoadFile", dynlib: xcgui, discardable.}
## 从文件中加载图片


proc XImage_LoadFileAdaptive*(pImageName: ptr WCHAR; leftSize: cint; topSize: cint;
                             rightSize: cint; bottomSize: cint): HIMAGE {.cdecl,
    importc: "XImage_LoadFileAdaptive", dynlib: xcgui, discardable.}
## 从文件中加载图片


proc XImage_LoadFileRect*(pImageName: ptr WCHAR; x: cint; y: cint; cx: cint; cy: cint): HIMAGE {.
    cdecl, importc: "XImage_LoadFileRect", dynlib: xcgui, discardable.}
## 加载图片,指定区域


proc XImage_LoadResAdaptive*(id: cint; pType: ptr WCHAR; leftSize: cint;
                            topSize: cint; rightSize: cint; bottomSize: cint): HIMAGE {.
    cdecl, importc: "XImage_LoadResAdaptive", dynlib: xcgui, discardable.}
## 从资源中加载图片


proc XImage_LoadRes*(id: cint; pType: ptr WCHAR; bStretch: BOOL = FALSE): HIMAGE {.cdecl,
    importc: "XImage_LoadRes", dynlib: xcgui, discardable.}
## 从资源中加载图片


proc XImage_LoadZip*(pZipFileName: ptr WCHAR; pImageName: ptr WCHAR;
                    pPassword: ptr WCHAR = nil; bStretch: BOOL = FALSE): HIMAGE {.cdecl,
    importc: "XImage_LoadZip", dynlib: xcgui, discardable.}
## 从ZIP中加载图片


proc XImage_LoadZipAdaptive*(pZipFileName: ptr WCHAR; pImageName: ptr WCHAR;
                            pPassword: ptr WCHAR; x1: cint; x2: cint; y1: cint;
                            y2: cint): HIMAGE {.cdecl,
    importc: "XImage_LoadZipAdaptive", dynlib: xcgui, discardable.}
## 从ZIP中加载图片


proc XImage_LoadZipRect*(pZipFileName: ptr WCHAR; pImageName: ptr WCHAR;
                        pPassword: ptr WCHAR; x: cint; y: cint; cx: cint; cy: cint): HIMAGE {.
    cdecl, importc: "XImage_LoadZipRect", dynlib: xcgui, discardable.}

proc XImage_LoadMemory*(pBuffer: pointer; nSize: cint; bStretch: BOOL): HIMAGE {.cdecl,
    importc: "XImage_LoadMemory", dynlib: xcgui, discardable.}

proc XImage_LoadMemoryRect*(pBuffer: pointer; nSize: cint; x: cint; y: cint; cx: cint;
                           cy: cint; bStretch: BOOL): HIMAGE {.cdecl,
    importc: "XImage_LoadMemoryRect", dynlib: xcgui, discardable.}

proc XImage_LoadMemoryAdaptive*(pBuffer: pointer; nSize: cint; leftSize: cint;
                               topSize: cint; rightSize: cint; bottomSize: cint): HIMAGE {.
    cdecl, importc: "XImage_LoadMemoryAdaptive", dynlib: xcgui, discardable.}

proc XImage_LoadFromImage*(pImage: pointer): HIMAGE {.cdecl,
    importc: "XImage_LoadFromImage", dynlib: xcgui, discardable.}

proc XImage_LoadFromExtractIcon*(pImageName: ptr WCHAR): HIMAGE {.cdecl,
    importc: "XImage_LoadFromExtractIcon", dynlib: xcgui, discardable.}

proc XImage_LoadFromHICON*(hIcon: HICON): HIMAGE {.cdecl,
    importc: "XImage_LoadFromHICON", dynlib: xcgui, discardable.}

proc XImage_LoadFromHBITMAP*(hBitmap: HBITMAP): HIMAGE {.cdecl,
    importc: "XImage_LoadFromHBITMAP", dynlib: xcgui, discardable.}

proc XImage_IsStretch*(hImage: HIMAGE): BOOL {.cdecl, importc: "XImage_IsStretch",
    dynlib: xcgui, discardable.}
## 是否拉伸图片


proc XImage_IsAdaptive*(hImage: HIMAGE): BOOL {.cdecl, importc: "XImage_IsAdaptive",
    dynlib: xcgui, discardable.}
## 是否为自适应图片


proc XImage_IsTile*(hImage: HIMAGE): BOOL {.cdecl, importc: "XImage_IsTile",
                                        dynlib: xcgui, discardable.}
## 是否为平铺图片


proc XImage_SetDrawType*(hImage: HIMAGE; nType: image_draw_type): BOOL {.cdecl,
    importc: "XImage_SetDrawType", dynlib: xcgui, discardable.}
## 设置图片绘制类型


proc XImage_SetDrawTypeAdaptive*(hImage: HIMAGE; leftSize: cint; topSize: cint;
                                rightSize: cint; bottomSize: cint): BOOL {.cdecl,
    importc: "XImage_SetDrawTypeAdaptive", dynlib: xcgui, discardable.}
## 设置图片自适应


proc XImage_SetTranColor*(hImage: HIMAGE; color: COLORREF) {.cdecl,
    importc: "XImage_SetTranColor", dynlib: xcgui, discardable.}
## 设置透明色


proc XImage_SetTranColorEx*(hImage: HIMAGE; color: COLORREF; tranColor: BYTE) {.cdecl,
    importc: "XImage_SetTranColorEx", dynlib: xcgui, discardable.}
## 设置透明色


proc XImage_SetRotateAngle*(hImage: HIMAGE; fAngle: cfloat): cfloat {.cdecl,
    importc: "XImage_SetRotateAngle", dynlib: xcgui, discardable.}

proc XImage_SetSplitEqual*(hImage: HIMAGE; nCount: cint; iIndex: cint) {.cdecl,
    importc: "XImage_SetSplitEqual", dynlib: xcgui, discardable.}

proc XImage_EnableTranColor*(hImage: HIMAGE; bEnable: BOOL) {.cdecl,
    importc: "XImage_EnableTranColor", dynlib: xcgui, discardable.}
## 启用透明色


proc XImage_EnableAutoDestroy*(hImage: HIMAGE; bEnable: BOOL) {.cdecl,
    importc: "XImage_EnableAutoDestroy", dynlib: xcgui, discardable.}
## 启用或关闭自动销毁,当与UI元素关联时有效


proc XImage_EnableCenter*(hImage: HIMAGE; bCenter: BOOL) {.cdecl,
    importc: "XImage_EnableCenter", dynlib: xcgui, discardable.}
## bCenter


proc XImage_IsCenter*(hImage: HIMAGE): BOOL {.cdecl, importc: "XImage_IsCenter",
    dynlib: xcgui, discardable.}

proc XImage_GetDrawType*(hImage: HIMAGE): image_draw_type {.cdecl,
    importc: "XImage_GetDrawType", dynlib: xcgui, discardable.}
## 获取图片绘制类型


proc XImage_GetWidth*(hImage: HIMAGE): cint {.cdecl, importc: "XImage_GetWidth",
    dynlib: xcgui, discardable.}

proc XImage_GetHeight*(hImage: HIMAGE): cint {.cdecl, importc: "XImage_GetHeight",
    dynlib: xcgui, discardable.}

proc XImage_GetImageSrc*(hImage: HIMAGE): HIMAGE {.cdecl,
    importc: "XImage_GetImageSrc", dynlib: xcgui, discardable.}

proc XImage_AddRef*(hImage: HIMAGE) {.cdecl, importc: "XImage_AddRef", dynlib: xcgui, discardable.}

proc XImage_Release*(hImage: HIMAGE) {.cdecl, importc: "XImage_Release", dynlib: xcgui, discardable.}

proc XImage_GetRefCount*(hImage: HIMAGE): cint {.cdecl,
    importc: "XImage_GetRefCount", dynlib: xcgui, discardable.}

proc XImage_Destroy*(hImage: HIMAGE) {.cdecl, importc: "XImage_Destroy", dynlib: xcgui, discardable.}

proc XLayout_Create*(x: cint; y: cint; cx: cint; cy: cint; hParent: HXCGUI): HELE {.cdecl,
    importc: "XLayout_Create", dynlib: xcgui, discardable.}

proc XLayout_CreateEx*(hParent: HXCGUI): HELE {.cdecl, importc: "XLayout_CreateEx",
    dynlib: xcgui, discardable.}

proc XLayout_IsEnableLayout*(hEle: HELE): BOOL {.cdecl,
    importc: "XLayout_IsEnableLayout", dynlib: xcgui, discardable.}

proc XLayout_EnableLayout*(hEle: HELE; bEnable: BOOL) {.cdecl,
    importc: "XLayout_EnableLayout", dynlib: xcgui, discardable.}

proc XLayout_ShowLayoutFrame*(hEle: HELE; bEnable: BOOL) {.cdecl,
    importc: "XLayout_ShowLayoutFrame", dynlib: xcgui, discardable.}

proc XLayout_GetWidthIn*(hEle: HELE): cint {.cdecl, importc: "XLayout_GetWidthIn",
    dynlib: xcgui, discardable.}

proc XLayout_GetHeightIn*(hEle: HELE): cint {.cdecl, importc: "XLayout_GetHeightIn",
    dynlib: xcgui, discardable.}

proc XLayout_SetHorizon*(hEle: HELE; bHorizon: BOOL) {.cdecl,
    importc: "XLayout_SetHorizon", dynlib: xcgui, discardable.}

proc XLayout_SetAlignH*(hEle: HELE; nAlign: layout_align) {.cdecl,
    importc: "XLayout_SetAlignH", dynlib: xcgui, discardable.}

proc XLayout_SetAlignV*(hEle: HELE; nAlign: layout_align) {.cdecl,
    importc: "XLayout_SetAlignV", dynlib: xcgui, discardable.}

proc XLayout_SetSpace*(hEle: HELE; nSpace: cint) {.cdecl, importc: "XLayout_SetSpace",
    dynlib: xcgui, discardable.}

proc XLayout_SetPadding*(hEle: HELE; left: cint; top: cint; right: cint; bottom: cint) {.
    cdecl, importc: "XLayout_SetPadding", dynlib: xcgui, discardable.}

proc XLayout_GetLayoutPadding*(hEle: HELE; pPadding: ptr PaddingSize_i) {.cdecl,
    importc: "XLayout_GetLayoutPadding", dynlib: xcgui, discardable.}

proc XListBox_Create*(x: cint; y: cint; cx: cint; cy: cint; hParent: HXCGUI = nil): HELE {.
    cdecl, importc: "XListBox_Create", dynlib: xcgui, discardable.}

proc XListBox_SetDrawItemBkFlags*(hEle: HELE; nFlags: cint) {.cdecl,
    importc: "XListBox_SetDrawItemBkFlags", dynlib: xcgui, discardable.}

proc XListBox_SetItemData*(hEle: HELE; iItem: cint; nUserData: cint): BOOL {.cdecl,
    importc: "XListBox_SetItemData", dynlib: xcgui, discardable.}

proc XListBox_GetItemData*(hEle: HELE; iItem: cint): cint {.cdecl,
    importc: "XListBox_GetItemData", dynlib: xcgui, discardable.}

proc XListBox_SetItemInfo*(hEle: HELE; iItem: cint; pItem: ptr listBox_item_info_i): BOOL {.
    cdecl, importc: "XListBox_SetItemInfo", dynlib: xcgui, discardable.}

proc XListBox_GetItemInfo*(hEle: HELE; iItem: cint; pItem: ptr listBox_item_info_i): BOOL {.
    cdecl, importc: "XListBox_GetItemInfo", dynlib: xcgui, discardable.}

proc XListBox_AddItemBkBorder*(hEle: HELE; nState: list_item_state; color: COLORREF;
                              alpha: BYTE; width: cint) {.cdecl,
    importc: "XListBox_AddItemBkBorder", dynlib: xcgui, discardable.}

proc XListBox_AddItemBkFill*(hEle: HELE; nState: list_item_state; color: COLORREF;
                            alpha: BYTE) {.cdecl,
    importc: "XListBox_AddItemBkFill", dynlib: xcgui, discardable.}

proc XListBox_AddItemBkImage*(hEle: HELE; nState: list_item_state; hImage: HIMAGE) {.
    cdecl, importc: "XListBox_AddItemBkImage", dynlib: xcgui, discardable.}

proc XListBox_GetItemBkInfoCount*(hEle: HELE): cint {.cdecl,
    importc: "XListBox_GetItemBkInfoCount", dynlib: xcgui, discardable.}

proc XListBox_ClearItemBkInfo*(hEle: HELE) {.cdecl,
    importc: "XListBox_ClearItemBkInfo", dynlib: xcgui, discardable.}

proc XListBox_SetSelectItem*(hEle: HELE; iItem: cint): BOOL {.cdecl,
    importc: "XListBox_SetSelectItem", dynlib: xcgui, discardable.}

proc XListBox_GetSelectItem*(hEle: HELE): cint {.cdecl,
    importc: "XListBox_GetSelectItem", dynlib: xcgui, discardable.}

proc XListBox_CancelSelectItem*(hEle: HELE; iItem: cint): BOOL {.cdecl,
    importc: "XListBox_CancelSelectItem", dynlib: xcgui, discardable.}

proc XListBox_CancelSelectAll*(hEle: HELE): BOOL {.cdecl,
    importc: "XListBox_CancelSelectAll", dynlib: xcgui, discardable.}

proc XListBox_GetSelectAll*(hEle: HELE; pArray: ptr cint; nArraySize: cint): cint {.
    cdecl, importc: "XListBox_GetSelectAll", dynlib: xcgui, discardable.}

proc XListBox_GetSelectCount*(hEle: HELE): cint {.cdecl,
    importc: "XListBox_GetSelectCount", dynlib: xcgui, discardable.}

proc XListBox_GetItemMouseStay*(hEle: HELE): cint {.cdecl,
    importc: "XListBox_GetItemMouseStay", dynlib: xcgui, discardable.}

proc XListBox_SelectAll*(hEle: HELE): BOOL {.cdecl, importc: "XListBox_SelectAll",
    dynlib: xcgui, discardable.}

proc XListBox_VisibleItem*(hEle: HELE; iItem: cint) {.cdecl,
    importc: "XListBox_VisibleItem", dynlib: xcgui, discardable.}

proc XListBox_SetItemHeightDefault*(hEle: HELE; nHeight: cint; nSelHeight: cint) {.
    cdecl, importc: "XListBox_SetItemHeightDefault", dynlib: xcgui, discardable.}

proc XListBox_GetItemHeightDefault*(hEle: HELE; pHeight: ptr cint;
                                   pSelHeight: ptr cint) {.cdecl,
    importc: "XListBox_GetItemHeightDefault", dynlib: xcgui, discardable.}

proc XListBox_GetItemIndexFromHXCGUI*(hEle: HELE; hXCGUI: HXCGUI): cint {.cdecl,
    importc: "XListBox_GetItemIndexFromHXCGUI", dynlib: xcgui, discardable.}

proc XListBox_SetRowSpace*(hEle: HELE; nSpace: cint) {.cdecl,
    importc: "XListBox_SetRowSpace", dynlib: xcgui, discardable.}

proc XListBox_GetRowSpace*(hEle: HELE): cint {.cdecl,
    importc: "XListBox_GetRowSpace", dynlib: xcgui, discardable.}

proc XListBox_HitTest*(hEle: HELE; pPt: ptr POINT): cint {.cdecl,
    importc: "XListBox_HitTest", dynlib: xcgui, discardable.}

proc XListBox_HitTestOffset*(hEle: HELE; pPt: ptr POINT): cint {.cdecl,
    importc: "XListBox_HitTestOffset", dynlib: xcgui, discardable.}
## 自动添加滚动视图偏移量


proc XListBox_SetItemTemplateXML*(hEle: HELE; pXmlFile: ptr WCHAR): BOOL {.cdecl,
    importc: "XListBox_SetItemTemplateXML", dynlib: xcgui, discardable.}

proc XListBox_SetItemTemplateXMLFromString*(hEle: HELE; pStringXML: cstring): BOOL {.
    cdecl, importc: "XListBox_SetItemTemplateXMLFromString", dynlib: xcgui, discardable.}

proc XListBox_SetItemTemplate*(hEle: HELE; hTemp: HTEMP): BOOL {.cdecl,
    importc: "XListBox_SetItemTemplate", dynlib: xcgui, discardable.}

proc XListBox_GetTemplateObject*(hEle: HELE; iItem: cint; nTempItemID: cint): HXCGUI {.
    cdecl, importc: "XListBox_GetTemplateObject", dynlib: xcgui, discardable.}

proc XListBox_EnableMultiSel*(hEle: HELE; bEnable: BOOL) {.cdecl,
    importc: "XListBox_EnableMultiSel", dynlib: xcgui, discardable.}

proc XListBox_CreateAdapter*(hEle: HELE): HXCGUI {.cdecl,
    importc: "XListBox_CreateAdapter", dynlib: xcgui, discardable.}

proc XListBox_BindAdapter*(hEle: HELE; hAdapter: HXCGUI) {.cdecl,
    importc: "XListBox_BindAdapter", dynlib: xcgui, discardable.}

proc XListBox_GetAdapter*(hEle: HELE): HXCGUI {.cdecl,
    importc: "XListBox_GetAdapter", dynlib: xcgui, discardable.}

proc XListBox_Sort*(hEle: HELE; iColumnAdapter: cint; bAscending: BOOL) {.cdecl,
    importc: "XListBox_Sort", dynlib: xcgui, discardable.}
## 设置排序


proc XListBox_RefreshData*(hEle: HELE) {.cdecl, importc: "XListBox_RefreshData",
                                      dynlib: xcgui, discardable.}

proc XListBox_RefreshItem*(hEle: HELE; iItem: cint) {.cdecl,
    importc: "XListBox_RefreshItem", dynlib: xcgui, discardable.}

proc XListBox_AddItemText*(hEle: HELE; pText: ptr WCHAR): cint {.cdecl,
    importc: "XListBox_AddItemText", dynlib: xcgui, discardable.}

proc XListBox_AddItemTextEx*(hEle: HELE; pName: ptr WCHAR; pText: ptr WCHAR): cint {.
    cdecl, importc: "XListBox_AddItemTextEx", dynlib: xcgui, discardable.}

proc XListBox_AddItemImage*(hEle: HELE; hImage: HIMAGE): cint {.cdecl,
    importc: "XListBox_AddItemImage", dynlib: xcgui, discardable.}

proc XListBox_AddItemImageEx*(hEle: HELE; pName: ptr WCHAR; hImage: HIMAGE): cint {.
    cdecl, importc: "XListBox_AddItemImageEx", dynlib: xcgui, discardable.}

proc XListBox_InsertItemText*(hEle: HELE; iItem: cint; pValue: ptr WCHAR): cint {.
    cdecl, importc: "XListBox_InsertItemText", dynlib: xcgui, discardable.}

proc XListBox_InsertItemTextEx*(hEle: HELE; iItem: cint; pName: ptr WCHAR;
                               pValue: ptr WCHAR): cint {.cdecl,
    importc: "XListBox_InsertItemTextEx", dynlib: xcgui, discardable.}

proc XListBox_InsertItemImage*(hEle: HELE; iItem: cint; hImage: HIMAGE): cint {.cdecl,
    importc: "XListBox_InsertItemImage", dynlib: xcgui, discardable.}

proc XListBox_InsertItemImageEx*(hEle: HELE; iItem: cint; pName: ptr WCHAR;
                                hImage: HIMAGE): cint {.cdecl,
    importc: "XListBox_InsertItemImageEx", dynlib: xcgui, discardable.}

proc XListBox_SetItemText*(hEle: HELE; iItem: cint; iColumn: cint; pText: ptr WCHAR): BOOL {.
    cdecl, importc: "XListBox_SetItemText", dynlib: xcgui, discardable.}

proc XListBox_SetItemTextEx*(hEle: HELE; iItem: cint; pName: ptr WCHAR;
                            pText: ptr WCHAR): BOOL {.cdecl,
    importc: "XListBox_SetItemTextEx", dynlib: xcgui, discardable.}

proc XListBox_SetItemImage*(hEle: HELE; iItem: cint; iColumn: cint; hImage: HIMAGE): BOOL {.
    cdecl, importc: "XListBox_SetItemImage", dynlib: xcgui, discardable.}

proc XListBox_SetItemImageEx*(hEle: HELE; iItem: cint; pName: ptr WCHAR;
                             hImage: HIMAGE): BOOL {.cdecl,
    importc: "XListBox_SetItemImageEx", dynlib: xcgui, discardable.}

proc XListBox_SetItemInt*(hEle: HELE; iItem: cint; iColumn: cint; nValue: cint): BOOL {.
    cdecl, importc: "XListBox_SetItemInt", dynlib: xcgui, discardable.}

proc XListBox_SetItemIntEx*(hEle: HELE; iItem: cint; pName: ptr WCHAR; nValue: cint): BOOL {.
    cdecl, importc: "XListBox_SetItemIntEx", dynlib: xcgui, discardable.}

proc XListBox_SetItemFloat*(hEle: HELE; iItem: cint; iColumn: cint; fFloat: cfloat): BOOL {.
    cdecl, importc: "XListBox_SetItemFloat", dynlib: xcgui, discardable.}

proc XListBox_SetItemFloatEx*(hEle: HELE; iItem: cint; pName: ptr WCHAR;
                             fFloat: cfloat): BOOL {.cdecl,
    importc: "XListBox_SetItemFloatEx", dynlib: xcgui, discardable.}

proc XListBox_GetItemText*(hEle: HELE; iItem: cint; iColumn: cint; pOut: ptr WCHAR;
                          nOutLen: cint): BOOL {.cdecl,
    importc: "XListBox_GetItemText", dynlib: xcgui, discardable.}

proc XListBox_GetItemTextEx*(hEle: HELE; iItem: cint; pName: ptr WCHAR;
                            pOut: ptr WCHAR; nOutLen: cint): BOOL {.cdecl,
    importc: "XListBox_GetItemTextEx", dynlib: xcgui, discardable.}

proc XListBox_GetItemImage*(hEle: HELE; iItem: cint; iColumn: cint): HIMAGE {.cdecl,
    importc: "XListBox_GetItemImage", dynlib: xcgui, discardable.}

proc XListBox_GetItemImageEx*(hEle: HELE; iItem: cint; pName: ptr WCHAR): HIMAGE {.
    cdecl, importc: "XListBox_GetItemImageEx", dynlib: xcgui, discardable.}

proc XListBox_GetItemInt*(hEle: HELE; iItem: cint; iColumn: cint; pOutValue: ptr cint): BOOL {.
    cdecl, importc: "XListBox_GetItemInt", dynlib: xcgui, discardable.}

proc XListBox_GetItemIntEx*(hEle: HELE; iItem: cint; pName: ptr WCHAR;
                           pOutValue: ptr cint): BOOL {.cdecl,
    importc: "XListBox_GetItemIntEx", dynlib: xcgui, discardable.}

proc XListBox_GetItemFloat*(hEle: HELE; iItem: cint; iColumn: cint;
                           pOutValue: ptr cfloat): BOOL {.cdecl,
    importc: "XListBox_GetItemFloat", dynlib: xcgui, discardable.}

proc XListBox_GetItemFloatEx*(hEle: HELE; iItem: cint; pName: ptr WCHAR;
                             pOutValue: ptr cfloat): BOOL {.cdecl,
    importc: "XListBox_GetItemFloatEx", dynlib: xcgui, discardable.}

proc XListBox_DeleteItem*(hEle: HELE; iItem: cint): BOOL {.cdecl,
    importc: "XListBox_DeleteItem", dynlib: xcgui, discardable.}

proc XListBox_DeleteItemEx*(hEle: HELE; iItem: cint; nCount: cint): BOOL {.cdecl,
    importc: "XListBox_DeleteItemEx", dynlib: xcgui, discardable.}

proc XListBox_DeleteItemAll*(hEle: HELE) {.cdecl, importc: "XListBox_DeleteItemAll",
                                        dynlib: xcgui, discardable.}

proc XListBox_DeleteColumnAll*(hEle: HELE) {.cdecl,
    importc: "XListBox_DeleteColumnAll", dynlib: xcgui, discardable.}

proc XListBox_GetCount_AD*(hEle: HELE): cint {.cdecl,
    importc: "XListBox_GetCount_AD", dynlib: xcgui, discardable.}

proc XListBox_GetCountColumn_AD*(hEle: HELE): cint {.cdecl,
    importc: "XListBox_GetCountColumn_AD", dynlib: xcgui, discardable.}

#~ proc XTemp_Load*(nType: listItemTemp_type; pFileName: ptr WCHAR): HTEMP {.cdecl,
    #~ importc: "XTemp_Load", dynlib: xcgui, discardable.}
#~ ## 加载模板 返回模板对象


#~ proc XTemp_LoadZip*(nType: listItemTemp_type; pZipFile: ptr WCHAR;
                   #~ pFileName: ptr WCHAR; pPassword: ptr WCHAR = nil): HTEMP {.cdecl,
    #~ importc: "XTemp_LoadZip", dynlib: xcgui, discardable.}

#~ proc XTemp_LoadEx*(nType: listItemTemp_type; pFileName: ptr WCHAR;
                  #~ pOutTemp1: ptr HTEMP; pOutTemp2: ptr HTEMP): BOOL {.cdecl,
    #~ importc: "XTemp_LoadEx", dynlib: xcgui, discardable.}

#~ proc XTemp_LoadZipEx*(nType: listItemTemp_type; pZipFile: ptr WCHAR;
                     #~ pFileName: ptr WCHAR; pPassword: ptr WCHAR;
                     #~ pOutTemp1: ptr HTEMP; pOutTemp2: ptr HTEMP): BOOL {.cdecl,
    #~ importc: "XTemp_LoadZipEx", dynlib: xcgui, discardable.}

#~ proc XTemp_LoadFromString*(nType: listItemTemp_type; pStringXML: cstring): HTEMP {.
    #~ cdecl, importc: "XTemp_LoadFromString", dynlib: xcgui, discardable.}
#~ ## 加载模板,从内存, 返回模板对象


#~ proc XTemp_LoadFromStringEx*(nType: listItemTemp_type; pStringXML: cstring;
                            #~ pOutTemp1: ptr HTEMP; pOutTemp2: ptr HTEMP): BOOL {.cdecl,
    #~ importc: "XTemp_LoadFromStringEx", dynlib: xcgui, discardable.}

#~ proc XTemp_GetType*(hTemp: HTEMP): listItemTemp_type {.cdecl,
    #~ importc: "XTemp_GetType", dynlib: xcgui, discardable.}

#~ proc XTemp_Destroy*(hTemp: HTEMP): BOOL {.cdecl, importc: "XTemp_Destroy",
                                      #~ dynlib: xcgui, discardable.}

#~ proc XTemp_Create*(nType: listItemTemp_type): HTEMP {.cdecl,
    #~ importc: "XTemp_Create", dynlib: xcgui, discardable.}

proc XTemp_AddNodeRoot*(hTemp: HTEMP; pNode: pointer): BOOL {.cdecl,
    importc: "XTemp_AddNodeRoot", dynlib: xcgui, discardable.}

proc XTemp_AddNode*(pParentNode: pointer; pNode: pointer): BOOL {.cdecl,
    importc: "XTemp_AddNode", dynlib: xcgui, discardable.}

proc XTemp_CreateNode*(nType: XC_OBJECT_TYPE): pointer {.cdecl,
    importc: "XTemp_CreateNode", dynlib: xcgui, discardable.}

proc XTemp_SetNodeAttribute*(pNode: pointer; pName: ptr WCHAR; pAttr: ptr WCHAR): BOOL {.
    cdecl, importc: "XTemp_SetNodeAttribute", dynlib: xcgui, discardable.}

proc XTemp_SetNodeAttributeEx*(pNode: pointer; itemID: cint; pName: ptr WCHAR;
                              pAttr: ptr WCHAR): BOOL {.cdecl,
    importc: "XTemp_SetNodeAttributeEx", dynlib: xcgui, discardable.}

proc XTemp_List_GetNode*(hTemp: HTEMP; index: cint): pointer {.cdecl,
    importc: "XTemp_List_GetNode", dynlib: xcgui, discardable.}

proc XTemp_GetNode*(pNode: pointer; itemID: cint): pointer {.cdecl,
    importc: "XTemp_GetNode", dynlib: xcgui, discardable.}

proc XTemp_CloneNode*(pNode: pointer): pointer {.cdecl, importc: "XTemp_CloneNode",
    dynlib: xcgui, discardable.}

proc XList_Create*(x: cint; y: cint; cx: cint; cy: cint; hParent: HXCGUI = nil): HELE {.cdecl,
    importc: "XList_Create", dynlib: xcgui, discardable.}

proc XList_AddColumn*(hEle: HELE; width: cint): cint {.cdecl,
    importc: "XList_AddColumn", dynlib: xcgui, discardable.}
## 增加列


proc XList_InsertColumn*(hEle: HELE; width: cint; iItem: cint): cint {.cdecl,
    importc: "XList_InsertColumn", dynlib: xcgui, discardable.}

proc XList_EnableMultiSel*(hEle: HELE; bEnable: BOOL) {.cdecl,
    importc: "XList_EnableMultiSel", dynlib: xcgui, discardable.}

proc XList_EnableDragChangeColumnWidth*(hEle: HELE; bEnable: BOOL) {.cdecl,
    importc: "XList_EnableDragChangeColumnWidth", dynlib: xcgui, discardable.}

proc XList_EnableVScrollBarTop*(hEle: HELE; bTop: BOOL) {.cdecl,
    importc: "XList_EnableVScrollBarTop", dynlib: xcgui, discardable.}

proc XList_EnableItemBkFullRow*(hEle: HELE; bFull: BOOL) {.cdecl,
    importc: "XList_EnableItemBkFullRow", dynlib: xcgui, discardable.}

proc XList_SetSort*(hEle: HELE; iColumn: cint; iColumnAdapter: cint; bEnable: BOOL) {.
    cdecl, importc: "XList_SetSort", dynlib: xcgui, discardable.}
## 设置排序


proc XList_SetDrawItemBkFlags*(hEle: HELE; style: cint) {.cdecl,
    importc: "XList_SetDrawItemBkFlags", dynlib: xcgui, discardable.}

proc XList_SetColumnWidth*(hEle: HELE; iItem: cint; width: cint) {.cdecl,
    importc: "XList_SetColumnWidth", dynlib: xcgui, discardable.}

proc XList_SetColumnMinWidth*(hEle: HELE; iItem: cint; width: cint) {.cdecl,
    importc: "XList_SetColumnMinWidth", dynlib: xcgui, discardable.}

proc XList_SetColumnWidthFixed*(hEle: HELE; iColumn: cint; bFixed: BOOL) {.cdecl,
    importc: "XList_SetColumnWidthFixed", dynlib: xcgui, discardable.}

proc XList_GetColumnWidth*(hEle: HELE; iColumn: cint): cint {.cdecl,
    importc: "XList_GetColumnWidth", dynlib: xcgui, discardable.}
## 获取列宽


proc XList_GetColumnCount*(hEle: HELE): cint {.cdecl,
    importc: "XList_GetColumnCount", dynlib: xcgui, discardable.}
## 获取列数量


proc XList_DeleteColumn*(hEle: HELE; iItem: cint): BOOL {.cdecl,
    importc: "XList_DeleteColumn", dynlib: xcgui, discardable.}

proc XList_DeleteColumnAll*(hEle: HELE) {.cdecl, importc: "XList_DeleteColumnAll",
                                       dynlib: xcgui, discardable.}

proc XList_SetItemData*(hEle: HELE; iItem: cint; iSubItem: cint; data: cint): BOOL {.
    cdecl, importc: "XList_SetItemData", dynlib: xcgui, discardable.}

proc XList_GetItemData*(hEle: HELE; iItem: cint; iSubItem: cint): cint {.cdecl,
    importc: "XList_GetItemData", dynlib: xcgui, discardable.}

proc XList_SetSelectItem*(hEle: HELE; iItem: cint): BOOL {.cdecl,
    importc: "XList_SetSelectItem", dynlib: xcgui, discardable.}

proc XList_GetSelectItem*(hEle: HELE): cint {.cdecl, importc: "XList_GetSelectItem",
    dynlib: xcgui, discardable.}

proc XList_GetSelectItemCount*(hEle: HELE): cint {.cdecl,
    importc: "XList_GetSelectItemCount", dynlib: xcgui, discardable.}

proc XList_SetSelectAll*(hEle: HELE) {.cdecl, importc: "XList_SetSelectAll",
                                    dynlib: xcgui, discardable.}

proc XList_GetSelectAll*(hEle: HELE; pArray: ptr cint; nArraySize: cint): cint {.cdecl,
    importc: "XList_GetSelectAll", dynlib: xcgui, discardable.}

proc XList_VisibleItem*(hEle: HELE; iItem: cint) {.cdecl,
    importc: "XList_VisibleItem", dynlib: xcgui, discardable.}

proc XList_CancelSelectItem*(hEle: HELE; iItem: cint): BOOL {.cdecl,
    importc: "XList_CancelSelectItem", dynlib: xcgui, discardable.}

proc XList_CancelSelectAll*(hEle: HELE) {.cdecl, importc: "XList_CancelSelectAll",
                                       dynlib: xcgui, discardable.}

proc XList_GetHeaderHELE*(hEle: HELE): HELE {.cdecl, importc: "XList_GetHeaderHELE",
    dynlib: xcgui, discardable.}

proc XList_BindAdapter*(hEle: HELE; hAdapter: HXCGUI) {.cdecl,
    importc: "XList_BindAdapter", dynlib: xcgui, discardable.}

proc XList_BindAdapterHeader*(hEle: HELE; hAdapter: HXCGUI) {.cdecl,
    importc: "XList_BindAdapterHeader", dynlib: xcgui, discardable.}

proc XList_CreateAdapter*(hEle: HELE): HXCGUI {.cdecl,
    importc: "XList_CreateAdapter", dynlib: xcgui, discardable.}

proc XList_CreateAdapterHeader*(hEle: HELE): HXCGUI {.cdecl,
    importc: "XList_CreateAdapterHeader", dynlib: xcgui, discardable.}

proc XList_GetAdapter*(hEle: HELE): HXCGUI {.cdecl, importc: "XList_GetAdapter",
    dynlib: xcgui, discardable.}

proc XList_GetAdapterHeader*(hEle: HELE): HXCGUI {.cdecl,
    importc: "XList_GetAdapterHeader", dynlib: xcgui, discardable.}

proc XList_SetItemTemplateXML*(hEle: HELE; pXmlFile: ptr WCHAR): BOOL {.cdecl,
    importc: "XList_SetItemTemplateXML", dynlib: xcgui, discardable.}

proc XList_SetItemTemplateXMLFromString*(hEle: HELE; pStringXML: cstring): BOOL {.
    cdecl, importc: "XList_SetItemTemplateXMLFromString", dynlib: xcgui, discardable.}

proc XList_SetItemTemplate*(hEle: HELE; hTemp: HTEMP): BOOL {.cdecl,
    importc: "XList_SetItemTemplate", dynlib: xcgui, discardable.}

proc XList_GetTemplateObject*(hEle: HELE; iItem: cint; iSubItem: cint;
                             nTempItemID: cint): HXCGUI {.cdecl,
    importc: "XList_GetTemplateObject", dynlib: xcgui, discardable.}
## 通过模板项ID,获取实例化模板项ID对应的对象.


proc XList_GetItemIndexFromHXCGUI*(hEle: HELE; hXCGUI: HXCGUI): cint {.cdecl,
    importc: "XList_GetItemIndexFromHXCGUI", dynlib: xcgui, discardable.}

proc XList_GetHeaderTemplateObject*(hEle: HELE; iItem: cint; nTempItemID: cint): HXCGUI {.
    cdecl, importc: "XList_GetHeaderTemplateObject", dynlib: xcgui, discardable.}

proc XList_GetHeaderItemIndexFromHXCGUI*(hEle: HELE; hXCGUI: HXCGUI): cint {.cdecl,
    importc: "XList_GetHeaderItemIndexFromHXCGUI", dynlib: xcgui, discardable.}

proc XList_SetHeaderHeight*(hEle: HELE; height: cint) {.cdecl,
    importc: "XList_SetHeaderHeight", dynlib: xcgui, discardable.}

proc XList_GetHeaderHeight*(hEle: HELE): cint {.cdecl,
    importc: "XList_GetHeaderHeight", dynlib: xcgui, discardable.}

proc XList_GetVisibleRowRange*(hEle: HELE; piStart: ptr cint; piEnd: ptr cint) {.cdecl,
    importc: "XList_GetVisibleRowRange", dynlib: xcgui, discardable.}

proc XList_AddItemBkBorder*(hEle: HELE; nState: list_item_state; color: COLORREF;
                           alpha: BYTE; width: cint) {.cdecl,
    importc: "XList_AddItemBkBorder", dynlib: xcgui, discardable.}

proc XList_AddItemBkFill*(hEle: HELE; nState: list_item_state; color: COLORREF;
                         alpha: BYTE) {.cdecl, importc: "XList_AddItemBkFill",
                                      dynlib: xcgui, discardable.}

proc XList_AddItemBkImage*(hEle: HELE; nState: list_item_state; hImage: HIMAGE) {.
    cdecl, importc: "XList_AddItemBkImage", dynlib: xcgui, discardable.}

proc XList_GetItemBkInfoCount*(hEle: HELE): cint {.cdecl,
    importc: "XList_GetItemBkInfoCount", dynlib: xcgui, discardable.}

proc XList_ClearItemBkInfo*(hEle: HELE) {.cdecl, importc: "XList_ClearItemBkInfo",
                                       dynlib: xcgui, discardable.}

proc XList_SetItemHeightDefault*(hEle: HELE; nHeight: cint; nSelHeight: cint) {.cdecl,
    importc: "XList_SetItemHeightDefault", dynlib: xcgui, discardable.}

proc XList_GetItemHeightDefault*(hEle: HELE; pHeight: ptr cint; pSelHeight: ptr cint) {.
    cdecl, importc: "XList_GetItemHeightDefault", dynlib: xcgui, discardable.}

proc XList_SetRowSpace*(hEle: HELE; nSpace: cint) {.cdecl,
    importc: "XList_SetRowSpace", dynlib: xcgui, discardable.}

proc XList_GetRowSpace*(hEle: HELE): cint {.cdecl, importc: "XList_GetRowSpace",
                                        dynlib: xcgui, discardable.}

proc XList_SetLockColumnLeft*(hEle: HELE; iColumn: cint) {.cdecl,
    importc: "XList_SetLockColumnLeft", dynlib: xcgui, discardable.}

proc XList_SetLockColumnRight*(hEle: HELE; iColumn: cint) {.cdecl,
    importc: "XList_SetLockColumnRight", dynlib: xcgui, discardable.}

proc XList_SetLockRowBottom*(hEle: HELE; `bLock`: BOOL) {.cdecl,
    importc: "XList_SetLockRowBottom", dynlib: xcgui, discardable.}

proc XList_HitTest*(hEle: HELE; pPt: ptr POINT; piItem: ptr cint; piSubItem: ptr cint): BOOL {.
    cdecl, importc: "XList_HitTest", dynlib: xcgui, discardable.}

proc XList_HitTestOffset*(hEle: HELE; pPt: ptr POINT; piItem: ptr cint;
                         piSubItem: ptr cint): BOOL {.cdecl,
    importc: "XList_HitTestOffset", dynlib: xcgui, discardable.}

proc XList_RefreshData*(hEle: HELE) {.cdecl, importc: "XList_RefreshData",
                                   dynlib: xcgui, discardable.}

proc XList_RefreshItem*(hEle: HELE; iItem: cint) {.cdecl,
    importc: "XList_RefreshItem", dynlib: xcgui, discardable.}

proc XList_AddColumnText*(hEle: HELE; nWidth: cint; pText: ptr WCHAR): cint {.cdecl,
    importc: "XList_AddColumnText", dynlib: xcgui, discardable.}

proc XList_AddItemText*(hEle: HELE; pText: ptr WCHAR): cint {.cdecl,
    importc: "XList_AddItemText", dynlib: xcgui, discardable.}

proc XList_AddItemTextEx*(hEle: HELE; pName: ptr WCHAR; pText: ptr WCHAR): cint {.
    cdecl, importc: "XList_AddItemTextEx", dynlib: xcgui, discardable.}

proc XList_AddItemImage*(hEle: HELE; hImage: HIMAGE): cint {.cdecl,
    importc: "XList_AddItemImage", dynlib: xcgui, discardable.}

proc XList_AddItemImageEx*(hEle: HELE; pName: ptr WCHAR; hImage: HIMAGE): cint {.cdecl,
    importc: "XList_AddItemImageEx", dynlib: xcgui, discardable.}

proc XList_InsertItemText*(hEle: HELE; iItem: cint; pValue: ptr WCHAR): cint {.cdecl,
    importc: "XList_InsertItemText", dynlib: xcgui, discardable.}

proc XList_InsertItemTextEx*(hEle: HELE; iItem: cint; pName: ptr WCHAR;
                            pValue: ptr WCHAR): cint {.cdecl,
    importc: "XList_InsertItemTextEx", dynlib: xcgui, discardable.}

proc XList_InsertItemImage*(hEle: HELE; iItem: cint; hImage: HIMAGE): cint {.cdecl,
    importc: "XList_InsertItemImage", dynlib: xcgui, discardable.}

proc XList_InsertItemImageEx*(hEle: HELE; iItem: cint; pName: ptr WCHAR;
                             hImage: HIMAGE): cint {.cdecl,
    importc: "XList_InsertItemImageEx", dynlib: xcgui, discardable.}

proc XList_SetItemText*(hEle: HELE; iItem: cint; iColumn: cint; pText: ptr WCHAR): BOOL {.
    cdecl, importc: "XList_SetItemText", dynlib: xcgui, discardable.}

proc XList_SetItemTextEx*(hEle: HELE; iItem: cint; pName: ptr WCHAR;
                         pText: ptr WCHAR): BOOL {.cdecl,
    importc: "XList_SetItemTextEx", dynlib: xcgui, discardable.}

proc XList_SetItemImage*(hEle: HELE; iItem: cint; iColumn: cint; hImage: HIMAGE): BOOL {.
    cdecl, importc: "XList_SetItemImage", dynlib: xcgui, discardable.}

proc XList_SetItemImageEx*(hEle: HELE; iItem: cint; pName: ptr WCHAR; hImage: HIMAGE): BOOL {.
    cdecl, importc: "XList_SetItemImageEx", dynlib: xcgui, discardable.}

proc XList_SetItemInt*(hEle: HELE; iItem: cint; iColumn: cint; nValue: cint): BOOL {.
    cdecl, importc: "XList_SetItemInt", dynlib: xcgui, discardable.}

proc XList_SetItemIntEx*(hEle: HELE; iItem: cint; pName: ptr WCHAR; nValue: cint): BOOL {.
    cdecl, importc: "XList_SetItemIntEx", dynlib: xcgui, discardable.}

proc XList_SetItemFloat*(hEle: HELE; iItem: cint; iColumn: cint; fFloat: cfloat): BOOL {.
    cdecl, importc: "XList_SetItemFloat", dynlib: xcgui, discardable.}

proc XList_SetItemFloatEx*(hEle: HELE; iItem: cint; pName: ptr WCHAR; fFloat: cfloat): BOOL {.
    cdecl, importc: "XList_SetItemFloatEx", dynlib: xcgui, discardable.}

proc XList_GetItemText*(hEle: HELE; iItem: cint; iColumn: cint; pOut: ptr WCHAR;
                       nOutLen: cint): BOOL {.cdecl, importc: "XList_GetItemText",
    dynlib: xcgui, discardable.}

proc XList_GetItemTextEx*(hEle: HELE; iItem: cint; pName: ptr WCHAR;
                         pOut: ptr WCHAR; nOutLen: cint): BOOL {.cdecl,
    importc: "XList_GetItemTextEx", dynlib: xcgui, discardable.}

proc XList_GetItemImage*(hEle: HELE; iItem: cint; iColumn: cint): HIMAGE {.cdecl,
    importc: "XList_GetItemImage", dynlib: xcgui, discardable.}

proc XList_GetItemImageEx*(hEle: HELE; iItem: cint; pName: ptr WCHAR): HIMAGE {.cdecl,
    importc: "XList_GetItemImageEx", dynlib: xcgui, discardable.}

proc XList_GetItemInt*(hEle: HELE; iItem: cint; iColumn: cint; pOutValue: ptr cint): BOOL {.
    cdecl, importc: "XList_GetItemInt", dynlib: xcgui, discardable.}

proc XList_GetItemIntEx*(hEle: HELE; iItem: cint; pName: ptr WCHAR;
                        pOutValue: ptr cint): BOOL {.cdecl,
    importc: "XList_GetItemIntEx", dynlib: xcgui, discardable.}

proc XList_GetItemFloat*(hEle: HELE; iItem: cint; iColumn: cint; pOutValue: ptr cfloat): BOOL {.
    cdecl, importc: "XList_GetItemFloat", dynlib: xcgui, discardable.}

proc XList_GetItemFloatEx*(hEle: HELE; iItem: cint; pName: ptr WCHAR;
                          pOutValue: ptr cfloat): BOOL {.cdecl,
    importc: "XList_GetItemFloatEx", dynlib: xcgui, discardable.}

proc XList_DeleteItem*(hEle: HELE; iItem: cint): BOOL {.cdecl,
    importc: "XList_DeleteItem", dynlib: xcgui, discardable.}

proc XList_DeleteItemEx*(hEle: HELE; iItem: cint; nCount: cint): BOOL {.cdecl,
    importc: "XList_DeleteItemEx", dynlib: xcgui, discardable.}

proc XList_DeleteItemAll*(hEle: HELE) {.cdecl, importc: "XList_DeleteItemAll",
                                     dynlib: xcgui, discardable.}

proc XList_DeleteColumnAll_AD*(hEle: HELE) {.cdecl,
    importc: "XList_DeleteColumnAll_AD", dynlib: xcgui, discardable.}

proc XList_GetCount_AD*(hEle: HELE): cint {.cdecl, importc: "XList_GetCount_AD",
                                        dynlib: xcgui, discardable.}

proc XList_GetCountColumn_AD*(hEle: HELE): cint {.cdecl,
    importc: "XList_GetCountColumn_AD", dynlib: xcgui, discardable.}

proc XListView_Create*(x: cint; y: cint; cx: cint; cy: cint; hParent: HXCGUI = nil): HELE {.
    cdecl, importc: "XListView_Create", dynlib: xcgui, discardable.}

proc XListView_CreateAdapter*(hEle: HELE): HXCGUI {.cdecl,
    importc: "XListView_CreateAdapter", dynlib: xcgui, discardable.}

proc XListView_BindAdapter*(hEle: HELE; hAdapter: HXCGUI) {.cdecl,
    importc: "XListView_BindAdapter", dynlib: xcgui, discardable.}

proc XListView_GetAdapter*(hEle: HELE): HXCGUI {.cdecl,
    importc: "XListView_GetAdapter", dynlib: xcgui, discardable.}

proc XListView_SetItemTemplateXML*(hEle: HELE; pXmlFile: ptr WCHAR): BOOL {.cdecl,
    importc: "XListView_SetItemTemplateXML", dynlib: xcgui, discardable.}

proc XListView_SetItemTemplateXMLFromString*(hEle: HELE; pStringXML: cstring): BOOL {.
    cdecl, importc: "XListView_SetItemTemplateXMLFromString", dynlib: xcgui, discardable.}

proc XListView_SetItemTemplate*(hEle: HELE; hTemp: HTEMP): BOOL {.cdecl,
    importc: "XListView_SetItemTemplate", dynlib: xcgui, discardable.}

proc XListView_GetTemplateObject*(hEle: HELE; iGroup: cint; iItem: cint;
                                 nTempItemID: cint): HXCGUI {.cdecl,
    importc: "XListView_GetTemplateObject", dynlib: xcgui, discardable.}

proc XListView_GetTemplateObjectGroup*(hEle: HELE; iGroup: cint; nTempItemID: cint): HXCGUI {.
    cdecl, importc: "XListView_GetTemplateObjectGroup", dynlib: xcgui, discardable.}

proc XListView_GetItemIDFromHXCGUI*(hEle: HELE; hXCGUI: HXCGUI; piGroup: ptr cint;
                                   piItem: ptr cint): BOOL {.cdecl,
    importc: "XListView_GetItemIDFromHXCGUI", dynlib: xcgui, discardable.}

proc XListView_HitTest*(hEle: HELE; pPt: ptr POINT; pOutGroup: ptr cint;
                       pOutItem: ptr cint): BOOL {.cdecl,
    importc: "XListView_HitTest", dynlib: xcgui, discardable.}

proc XListView_HitTestOffset*(hEle: HELE; pPt: ptr POINT; pOutGroup: ptr cint;
                             pOutItem: ptr cint): cint {.cdecl,
    importc: "XListView_HitTestOffset", dynlib: xcgui, discardable.}
## 自动添加滚动视图偏移量


proc XListView_EnableMultiSel*(hEle: HELE; bEnable: BOOL) {.cdecl,
    importc: "XListView_EnableMultiSel", dynlib: xcgui, discardable.}

proc XListView_SetDrawItemBkFlags*(hEle: HELE; nFlags: cint) {.cdecl,
    importc: "XListView_SetDrawItemBkFlags", dynlib: xcgui, discardable.}

proc XListView_SetSelectItem*(hEle: HELE; iGroup: cint; iItem: cint): BOOL {.cdecl,
    importc: "XListView_SetSelectItem", dynlib: xcgui, discardable.}

proc XListView_GetSelectItem*(hEle: HELE; piGroup: ptr cint; piItem: ptr cint): BOOL {.
    cdecl, importc: "XListView_GetSelectItem", dynlib: xcgui, discardable.}

proc XListView_VisibleItem*(hEle: HELE; iGroup: cint; iItem: cint) {.cdecl,
    importc: "XListView_VisibleItem", dynlib: xcgui, discardable.}

proc XListView_GetSelectItemCount*(hEle: HELE): cint {.cdecl,
    importc: "XListView_GetSelectItemCount", dynlib: xcgui, discardable.}

proc XListView_GetSelectItemAll*(hEle: HELE; pArray: ptr listView_item_id_i;
                                nArraySize: cint): cint {.cdecl,
    importc: "XListView_GetSelectItemAll", dynlib: xcgui, discardable.}

proc XListView_SetSelectItemAll*(hEle: HELE) {.cdecl,
    importc: "XListView_SetSelectItemAll", dynlib: xcgui, discardable.}

proc XListView_CancelSelectItemAll*(hEle: HELE) {.cdecl,
    importc: "XListView_CancelSelectItemAll", dynlib: xcgui, discardable.}

proc XListView_SetColumnSpace*(hEle: HELE; space: cint) {.cdecl,
    importc: "XListView_SetColumnSpace", dynlib: xcgui, discardable.}
## 设置列间隔


proc XListView_SetRowSpace*(hEle: HELE; space: cint) {.cdecl,
    importc: "XListView_SetRowSpace", dynlib: xcgui, discardable.}
## 设置行间隔


proc XListView_SetAlignSizeLeft*(hEle: HELE; size: cint) {.cdecl,
    importc: "XListView_SetAlignSizeLeft", dynlib: xcgui, discardable.}

proc XListView_SetAlignSizeTop*(hEle: HELE; size: cint) {.cdecl,
    importc: "XListView_SetAlignSizeTop", dynlib: xcgui, discardable.}

proc XListView_SetItemSize*(hEle: HELE; width: cint; height: cint) {.cdecl,
    importc: "XListView_SetItemSize", dynlib: xcgui, discardable.}

proc XListView_GetItemSize*(hEle: HELE; pSize: ptr SIZE) {.cdecl,
    importc: "XListView_GetItemSize", dynlib: xcgui, discardable.}

proc XListView_SetGroupHeight*(hEle: HELE; height: cint) {.cdecl,
    importc: "XListView_SetGroupHeight", dynlib: xcgui, discardable.}

proc XListView_GetGroupHeight*(hEle: HELE): cint {.cdecl,
    importc: "XListView_GetGroupHeight", dynlib: xcgui, discardable.}

proc XListView_SetGroupUserData*(hEle: HELE; iGroup: cint; nData: cint) {.cdecl,
    importc: "XListView_SetGroupUserData", dynlib: xcgui, discardable.}

proc XListView_SetItemUserData*(hEle: HELE; iGroup: cint; iItem: cint; nData: cint) {.
    cdecl, importc: "XListView_SetItemUserData", dynlib: xcgui, discardable.}

proc XListView_GetGroupUserData*(hEle: HELE; iGroup: cint): cint {.cdecl,
    importc: "XListView_GetGroupUserData", dynlib: xcgui, discardable.}

proc XListView_GetItemUserData*(hEle: HELE; iGroup: cint; iItem: cint): cint {.cdecl,
    importc: "XListView_GetItemUserData", dynlib: xcgui, discardable.}

proc XListView_AddItemBkBorder*(hEle: HELE; nState: list_item_state;
                               color: COLORREF; alpha: BYTE; width: cint) {.cdecl,
    importc: "XListView_AddItemBkBorder", dynlib: xcgui, discardable.}

proc XListView_AddItemBkFill*(hEle: HELE; nState: list_item_state; color: COLORREF;
                             alpha: BYTE) {.cdecl,
    importc: "XListView_AddItemBkFill", dynlib: xcgui, discardable.}

proc XListView_AddItemBkImage*(hEle: HELE; nState: list_item_state; hImage: HIMAGE) {.
    cdecl, importc: "XListView_AddItemBkImage", dynlib: xcgui, discardable.}

proc XListView_GetItemBkInfoCount*(hEle: HELE): cint {.cdecl,
    importc: "XListView_GetItemBkInfoCount", dynlib: xcgui, discardable.}

proc XListView_ClearItemBkInfo*(hEle: HELE) {.cdecl,
    importc: "XListView_ClearItemBkInfo", dynlib: xcgui, discardable.}

proc XListView_RefreshData*(hEle: HELE) {.cdecl, importc: "XListView_RefreshData",
                                       dynlib: xcgui, discardable.}

proc XListView_RefreshItem*(hEle: HELE; iGroup: cint; iItem: cint) {.cdecl,
    importc: "XListView_RefreshItem", dynlib: xcgui, discardable.}

proc XListView_ExpandGroup*(hEle: HELE; iGroup: cint; bExpand: BOOL): BOOL {.cdecl,
    importc: "XListView_ExpandGroup", dynlib: xcgui, discardable.}

proc XListView_Group_AddColumn*(hEle: HELE; pName: ptr WCHAR): cint {.cdecl,
    importc: "XListView_Group_AddColumn", dynlib: xcgui, discardable.}

proc XListView_Group_AddItemText*(hEle: HELE; pValue: ptr WCHAR): cint {.cdecl,
    importc: "XListView_Group_AddItemText", dynlib: xcgui, discardable.}

proc XListView_Group_AddItemTextEx*(hEle: HELE; pName: ptr WCHAR;
                                   pValue: ptr WCHAR): cint {.cdecl,
    importc: "XListView_Group_AddItemTextEx", dynlib: xcgui, discardable.}

proc XListView_Group_AddItemImage*(hEle: HELE; hImage: HIMAGE): cint {.cdecl,
    importc: "XListView_Group_AddItemImage", dynlib: xcgui, discardable.}

proc XListView_Group_AddItemImageEx*(hEle: HELE; pName: ptr WCHAR; hImage: HIMAGE): cint {.
    cdecl, importc: "XListView_Group_AddItemImageEx", dynlib: xcgui, discardable.}

proc XListView_Group_SetText*(hEle: HELE; iGroup: cint; iColumn: cint;
                             pValue: ptr WCHAR): BOOL {.cdecl,
    importc: "XListView_Group_SetText", dynlib: xcgui, discardable.}

proc XListView_Group_SetTextEx*(hEle: HELE; iGroup: cint; pName: ptr WCHAR;
                               pValue: ptr WCHAR): BOOL {.cdecl,
    importc: "XListView_Group_SetTextEx", dynlib: xcgui, discardable.}

proc XListView_Group_SetImage*(hEle: HELE; iGroup: cint; iColumn: cint; hImage: HIMAGE): BOOL {.
    cdecl, importc: "XListView_Group_SetImage", dynlib: xcgui, discardable.}

proc XListView_Group_SetImageEx*(hEle: HELE; iGroup: cint; pName: ptr WCHAR;
                                hImage: HIMAGE): BOOL {.cdecl,
    importc: "XListView_Group_SetImageEx", dynlib: xcgui, discardable.}

proc XListView_Group_GetCount*(hEle: HELE): cint {.cdecl,
    importc: "XListView_Group_GetCount", dynlib: xcgui, discardable.}

proc XListView_Item_GetCount*(hEle: HELE; iGroup: cint): cint {.cdecl,
    importc: "XListView_Item_GetCount", dynlib: xcgui, discardable.}

proc XListView_Item_AddColumn*(hEle: HELE; pName: ptr WCHAR): cint {.cdecl,
    importc: "XListView_Item_AddColumn", dynlib: xcgui, discardable.}
## 增加列


proc XListView_Item_AddItemText*(hEle: HELE; iGroup: cint; pValue: ptr WCHAR): cint {.
    cdecl, importc: "XListView_Item_AddItemText", dynlib: xcgui, discardable.}

proc XListView_Item_AddItemTextEx*(hEle: HELE; iGroup: cint; pName: ptr WCHAR;
                                  pValue: ptr WCHAR): cint {.cdecl,
    importc: "XListView_Item_AddItemTextEx", dynlib: xcgui, discardable.}

proc XListView_Item_AddItemImage*(hEle: HELE; iGroup: cint; hImage: HIMAGE): cint {.
    cdecl, importc: "XListView_Item_AddItemImage", dynlib: xcgui, discardable.}

proc XListView_Item_AddItemImageEx*(hEle: HELE; iGroup: cint; pName: ptr WCHAR;
                                   hImage: HIMAGE): cint {.cdecl,
    importc: "XListView_Item_AddItemImageEx", dynlib: xcgui, discardable.}

proc XListView_Item_SetText*(hEle: HELE; iGroup: cint; iItem: cint; iColumn: cint;
                            pValue: ptr WCHAR): BOOL {.cdecl,
    importc: "XListView_Item_SetText", dynlib: xcgui, discardable.}

proc XListView_Item_SetTextEx*(hEle: HELE; iGroup: cint; iItem: cint;
                              pName: ptr WCHAR; pValue: ptr WCHAR): BOOL {.cdecl,
    importc: "XListView_Item_SetTextEx", dynlib: xcgui, discardable.}

proc XListView_Item_SetImage*(hEle: HELE; iGroup: cint; iItem: cint; iColumn: cint;
                             hImage: HIMAGE): BOOL {.cdecl,
    importc: "XListView_Item_SetImage", dynlib: xcgui, discardable.}

proc XListView_Item_SetImageEx*(hEle: HELE; iGroup: cint; iItem: cint;
                               pName: ptr WCHAR; hImage: HIMAGE): BOOL {.cdecl,
    importc: "XListView_Item_SetImageEx", dynlib: xcgui, discardable.}

proc XListView_Group_DeleteItem*(hEle: HELE; iGroup: cint): BOOL {.cdecl,
    importc: "XListView_Group_DeleteItem", dynlib: xcgui, discardable.}

proc XListView_Group_DeleteAllChildItem*(hEle: HELE; iGroup: cint) {.cdecl,
    importc: "XListView_Group_DeleteAllChildItem", dynlib: xcgui, discardable.}

proc XListView_Item_DeleteItem*(hEle: HELE; iGroup: cint; iItem: cint): BOOL {.cdecl,
    importc: "XListView_Item_DeleteItem", dynlib: xcgui, discardable.}

proc XListView_DeleteAll*(hEle: HELE) {.cdecl, importc: "XListView_DeleteAll",
                                     dynlib: xcgui, discardable.}

proc XListView_DeleteAllGroup*(hEle: HELE) {.cdecl,
    importc: "XListView_DeleteAllGroup", dynlib: xcgui, discardable.}

proc XListView_DeleteAllItem*(hEle: HELE) {.cdecl,
    importc: "XListView_DeleteAllItem", dynlib: xcgui, discardable.}

proc XListView_DeleteColumnGroup*(hEle: HELE; iColumn: cint) {.cdecl,
    importc: "XListView_DeleteColumnGroup", dynlib: xcgui, discardable.}

proc XListView_DeleteColumnItem*(hEle: HELE; iColumn: cint) {.cdecl,
    importc: "XListView_DeleteColumnItem", dynlib: xcgui, discardable.}

proc XListView_Item_GetTextEx*(hEle: HELE; iGroup: cint; iItem: cint;
                              pName: ptr WCHAR; pOut: ptr WCHAR; nOutLen: cint): BOOL {.
    cdecl, importc: "XListView_Item_GetTextEx", dynlib: xcgui, discardable.}

proc XListView_Item_GetImageEx*(hEle: HELE; iGroup: cint; iItem: cint;
                               pName: ptr WCHAR): HIMAGE {.cdecl,
    importc: "XListView_Item_GetImageEx", dynlib: xcgui, discardable.}

proc XMenuBar_Create*(x: cint; y: cint; cx: cint; cy: cint; hParent: HXCGUI = nil): HELE {.
    cdecl, importc: "XMenuBar_Create", dynlib: xcgui, discardable.}

proc XMenuBar_AddButton*(hEle: HELE; pText: ptr WCHAR): cint {.cdecl,
    importc: "XMenuBar_AddButton", dynlib: xcgui, discardable.}
## 增加弹出菜单按钮


proc XMenuBar_SetButtonHeight*(hEle: HELE; height: cint) {.cdecl,
    importc: "XMenuBar_SetButtonHeight", dynlib: xcgui, discardable.}

proc XMenuBar_GetMenu*(hEle: HELE; nIndex: cint): HMENUX {.cdecl,
    importc: "XMenuBar_GetMenu", dynlib: xcgui, discardable.}

proc XMenuBar_DeleteButton*(hEle: HELE; nIndex: cint): BOOL {.cdecl,
    importc: "XMenuBar_DeleteButton", dynlib: xcgui, discardable.}
## 删除菜单项并且销毁,同时该按钮下的弹出菜单也被销毁


proc XMenu_Create*(): HMENUX {.cdecl, importc: "XMenu_Create", dynlib: xcgui, discardable.}

proc XMenu_AddItem*(hMenu: HMENUX; nID: cint; pText: ptr WCHAR;
                   parentId: cint = XC_ID_ROOT; nFlags: cint = 0) {.cdecl,
    importc: "XMenu_AddItem", dynlib: xcgui, discardable.}
## 添加菜单项


proc XMenu_AddItemIcon*(hMenu: HMENUX; nID: cint; pText: ptr WCHAR; nParentID: cint;
                       hImage: HIMAGE; nFlags: cint = 0) {.cdecl,
    importc: "XMenu_AddItemIcon", dynlib: xcgui, discardable.}

proc XMenu_InsertItem*(hMenu: HMENUX; nID: cint; pText: ptr WCHAR; nFlags: cint;
                      insertID: cint) {.cdecl, importc: "XMenu_InsertItem",
                                      dynlib: xcgui, discardable.}

proc XMenu_InsertItemIcon*(hMenu: HMENUX; nID: cint; pText: ptr WCHAR; hIcon: HIMAGE;
                          nFlags: cint; insertID: cint) {.cdecl,
    importc: "XMenu_InsertItemIcon", dynlib: xcgui, discardable.}

proc XMenu_GetFirstChildItem*(hMenu: HMENUX; nID: cint): cint {.cdecl,
    importc: "XMenu_GetFirstChildItem", dynlib: xcgui, discardable.}

proc XMenu_GetEndChildItem*(hMenu: HMENUX; nID: cint): cint {.cdecl,
    importc: "XMenu_GetEndChildItem", dynlib: xcgui, discardable.}

proc XMenu_GetPrevSiblingItem*(hMenu: HMENUX; nID: cint): cint {.cdecl,
    importc: "XMenu_GetPrevSiblingItem", dynlib: xcgui, discardable.}

proc XMenu_GetNextSiblingItem*(hMenu: HMENUX; nID: cint): cint {.cdecl,
    importc: "XMenu_GetNextSiblingItem", dynlib: xcgui, discardable.}

proc XMenu_GetParentItem*(hMenu: HMENUX; nID: cint): cint {.cdecl,
    importc: "XMenu_GetParentItem", dynlib: xcgui, discardable.}

proc XMenu_SetAutoDestroy*(hMenu: HMENUX; bAuto: BOOL) {.cdecl,
    importc: "XMenu_SetAutoDestroy", dynlib: xcgui, discardable.}
## 是否自动销毁对象,默认弹出菜单关闭后自动销毁


proc XMenu_EnableDrawBackground*(hMenu: HMENUX; bEnable: BOOL) {.cdecl,
    importc: "XMenu_EnableDrawBackground", dynlib: xcgui, discardable.}
## 是否有用户绘制菜单背景


proc XMenu_EnableDrawItem*(hMenu: HMENUX; bEnable: BOOL) {.cdecl,
    importc: "XMenu_EnableDrawItem", dynlib: xcgui, discardable.}

proc XMenu_Popup*(hMenu: HMENUX; hParentWnd: HWND; x: cint; y: cint;
                 hParentEle: HELE = nil;
                 nPosition: menu_popup_position = menu_popup_position_left_top): BOOL {.
    cdecl, importc: "XMenu_Popup", dynlib: xcgui, discardable.}
## 弹出菜单


proc XMenu_DestroyMenu*(hMenu: HMENUX) {.cdecl, importc: "XMenu_DestroyMenu",
                                      dynlib: xcgui, discardable.}

proc XMenu_CloseMenu*(hMenu: HMENUX) {.cdecl, importc: "XMenu_CloseMenu",
                                    dynlib: xcgui, discardable.}

proc XMenu_SetBkImage*(hMenu: HMENUX; hImage: HIMAGE) {.cdecl,
    importc: "XMenu_SetBkImage", dynlib: xcgui, discardable.}

proc XMenu_SetItemText*(hMenu: HMENUX; nID: cint; pText: ptr WCHAR): BOOL {.cdecl,
    importc: "XMenu_SetItemText", dynlib: xcgui, discardable.}
## 设置项文本


proc XMenu_GetItemText*(hMenu: HMENUX; nID: cint; pOut: ptr WCHAR; nOutLen: cint): BOOL {.
    cdecl, importc: "XMenu_GetItemText", dynlib: xcgui, discardable.}

proc XMenu_GetItemTextLength*(hMenu: HMENUX; nID: cint): cint {.cdecl,
    importc: "XMenu_GetItemTextLength", dynlib: xcgui, discardable.}

proc XMenu_SetItemIcon*(hMenu: HMENUX; nID: cint; hIcon: HIMAGE): BOOL {.cdecl,
    importc: "XMenu_SetItemIcon", dynlib: xcgui, discardable.}

proc XMenu_SetItemFlags*(hMenu: HMENUX; nID: cint; uFlags: cint): BOOL {.cdecl,
    importc: "XMenu_SetItemFlags", dynlib: xcgui, discardable.}
## 设置项属性


proc XMenu_SetItemHeight*(hMenu: HMENUX; height: cint) {.cdecl,
    importc: "XMenu_SetItemHeight", dynlib: xcgui, discardable.}
## 设置菜单项高度


proc XMenu_GetItemHeight*(hMenu: HMENUX): cint {.cdecl,
    importc: "XMenu_GetItemHeight", dynlib: xcgui, discardable.}

proc XMenu_SetBorderColor*(hMenu: HMENUX; crColor: COLORREF; alpha: BYTE = 255) {.cdecl,
    importc: "XMenu_SetBorderColor", dynlib: xcgui, discardable.}

proc XMenu_SetBorderSize*(hMenu: HMENUX; nLeft: cint; nTop: cint; nRight: cint;
                         nBottom: cint) {.cdecl, importc: "XMenu_SetBorderSize",
                                        dynlib: xcgui, discardable.}

proc XMenu_GetLeftWidth*(hMenu: HMENUX): cint {.cdecl, importc: "XMenu_GetLeftWidth",
    dynlib: xcgui, discardable.}
## 获取左侧宽度


proc XMenu_GetLeftSpaceText*(hMenu: HMENUX): cint {.cdecl,
    importc: "XMenu_GetLeftSpaceText", dynlib: xcgui, discardable.}
## 获取菜单项文本左间隔


proc XMenu_GetItemCount*(hMenu: HMENUX): cint {.cdecl, importc: "XMenu_GetItemCount",
    dynlib: xcgui, discardable.}
## 获取菜单项数量,包含子菜单项


proc XMenu_SetItemCheck*(hMenu: HMENUX; nID: cint; bCheck: BOOL): BOOL {.cdecl,
    importc: "XMenu_SetItemCheck", dynlib: xcgui, discardable.}

proc XMenu_IsItemCheck*(hMenu: HMENUX; nID: cint): BOOL {.cdecl,
    importc: "XMenu_IsItemCheck", dynlib: xcgui, discardable.}

#~ proc XModalWnd_Create*(nWidth: cint; nHeight: cint; pTitle: ptr WCHAR;
                      #~ hWndParent: HWND; XCStyle: cint = xc_window_style_modal): HWINDOW {.
    #~ cdecl, importc: "XModalWnd_Create", dynlib: xcgui, discardable.}

#~ proc XModalWnd_CreateEx*(dwExStyle: DWORD; lpClassName: ptr WCHAR;
                        #~ lpWindowName: ptr WCHAR; dwStyle: DWORD; x: cint; y: cint;
                        #~ cx: cint; cy: cint; hWndParent: HWND;
                        #~ XCStyle: cint = xc_window_style_modal): HWINDOW {.cdecl,
    #~ importc: "XModalWnd_CreateEx", dynlib: xcgui, discardable.}
## 创建窗口


proc XModalWnd_EnableAutoClose*(hWindow: HWINDOW; bEnable: BOOL) {.cdecl,
    importc: "XModalWnd_EnableAutoClose", dynlib: xcgui, discardable.}

proc XModalWnd_EnableEscClose*(hWindow: HWINDOW; bEnable: BOOL) {.cdecl,
    importc: "XModalWnd_EnableEscClose", dynlib: xcgui, discardable.}

proc XModalWnd_DoModal*(hWindow: HWINDOW): cint {.cdecl,
    importc: "XModalWnd_DoModal", dynlib: xcgui, discardable.}
## 启动模态窗口


proc XModalWnd_EndModal*(hWindow: HWINDOW; nResult: cint) {.cdecl,
    importc: "XModalWnd_EndModal", dynlib: xcgui, discardable.}
## 终止


proc XPane_Create*(pName: ptr WCHAR; nWidth: cint; nHeight: cint;
                  hFrameWnd: HWINDOW = nil): HELE {.cdecl, importc: "XPane_Create",
    dynlib: xcgui, discardable.}

proc XPane_SetView*(hEle: HELE; hView: HELE) {.cdecl, importc: "XPane_SetView",
    dynlib: xcgui, discardable.}

proc XPane_IsShowPane*(hEle: HELE): BOOL {.cdecl, importc: "XPane_IsShowPane",
                                       dynlib: xcgui, discardable.}
## 判断窗格是否隐藏


proc XPane_SetSize*(hEle: HELE; nWidth: cint; nHeight: cint) {.cdecl,
    importc: "XPane_SetSize", dynlib: xcgui, discardable.}

proc XPane_GetState*(hEle: HELE): pane_state {.cdecl, importc: "XPane_GetState",
    dynlib: xcgui, discardable.}

proc XPane_GetViewRect*(hEle: HELE; pRect: ptr RECT) {.cdecl,
    importc: "XPane_GetViewRect", dynlib: xcgui, discardable.}

proc XPane_SetTitle*(hEle: HELE; pTitle: ptr WCHAR) {.cdecl,
    importc: "XPane_SetTitle", dynlib: xcgui, discardable.}

proc XPane_GetTitle*(hEle: HELE; pOut: ptr WCHAR; nOutLen: cint) {.cdecl,
    importc: "XPane_GetTitle", dynlib: xcgui, discardable.}

proc XPane_SetCaptionHeight*(hEle: HELE; nHeight: cint) {.cdecl,
    importc: "XPane_SetCaptionHeight", dynlib: xcgui, discardable.}

proc XPane_GetCaptionHeight*(hEle: HELE): cint {.cdecl,
    importc: "XPane_GetCaptionHeight", dynlib: xcgui, discardable.}

proc XPane_HidePane*(hEle: HELE) {.cdecl, importc: "XPane_HidePane", dynlib: xcgui, discardable.}
## 隐藏窗格


proc XPane_ShowPane*(hEle: HELE) {.cdecl, importc: "XPane_ShowPane", dynlib: xcgui, discardable.}
## 隐藏-显示窗格


proc XPane_DockPane*(hEle: HELE) {.cdecl, importc: "XPane_DockPane", dynlib: xcgui, discardable.}
## 停靠窗格,自动隐藏


proc XPane_LockPane*(hEle: HELE) {.cdecl, importc: "XPane_LockPane", dynlib: xcgui, discardable.}
## 锁定窗格


proc XPane_FloatPane*(hEle: HELE) {.cdecl, importc: "XPane_FloatPane", dynlib: xcgui, discardable.}
## 弹出窗格,当在码头上


proc XFloatWnd_EnableCaptionContent*(hWindow: HWINDOW; bEnable: BOOL): BOOL {.cdecl,
    importc: "XFloatWnd_EnableCaptionContent", dynlib: xcgui, discardable.}

proc XFloatWnd_GetCaptionLayout*(hWindow: HWINDOW): HXCGUI {.cdecl,
    importc: "XFloatWnd_GetCaptionLayout", dynlib: xcgui, discardable.}

proc XFloatWnd_GetCaptionShapeText*(hWindow: HWINDOW): HXCGUI {.cdecl,
    importc: "XFloatWnd_GetCaptionShapeText", dynlib: xcgui, discardable.}

proc XFloatWnd_GetCaptionButtonClose*(hWindow: HWINDOW): HELE {.cdecl,
    importc: "XFloatWnd_GetCaptionButtonClose", dynlib: xcgui, discardable.}

proc XFloatWnd_SetTitle*(hWindow: HWINDOW; pTitle: ptr WCHAR) {.cdecl,
    importc: "XFloatWnd_SetTitle", dynlib: xcgui, discardable.}

proc XFloatWnd_GetTitle*(hWindow: HWINDOW; pOut: ptr WCHAR; nOutLen: cint) {.cdecl,
    importc: "XFloatWnd_GetTitle", dynlib: xcgui, discardable.}

proc XProgBar_Create*(x: cint; y: cint; cx: cint; cy: cint; hParent: HXCGUI = nil): HELE {.
    cdecl, importc: "XProgBar_Create", dynlib: xcgui, discardable.}

proc XProgBar_SetRange*(hEle: HELE; range: cint) {.cdecl,
    importc: "XProgBar_SetRange", dynlib: xcgui, discardable.}

proc XProgBar_GetRange*(hEle: HELE): cint {.cdecl, importc: "XProgBar_GetRange",
                                        dynlib: xcgui, discardable.}

proc XProgBar_SetSpaceTwo*(hEle: HELE; leftSize: cint; rightSize: cint) {.cdecl,
    importc: "XProgBar_SetSpaceTwo", dynlib: xcgui, discardable.}

proc XProgBar_SetPos*(hEle: HELE; pos: cint) {.cdecl, importc: "XProgBar_SetPos",
    dynlib: xcgui, discardable.}

proc XProgBar_GetPos*(hEle: HELE): cint {.cdecl, importc: "XProgBar_GetPos",
                                      dynlib: xcgui, discardable.}

proc XProgBar_SetHorizon*(hEle: HELE; bHorizon: BOOL) {.cdecl,
    importc: "XProgBar_SetHorizon", dynlib: xcgui, discardable.}

proc XProgBar_SetImageLoad*(hEle: HELE; hImage: HIMAGE) {.cdecl,
    importc: "XProgBar_SetImageLoad", dynlib: xcgui, discardable.}

proc XPGrid_Create*(x: cint; y: cint; cx: cint; cy: cint; hParent: HXCGUI = nil): HELE {.
    cdecl, importc: "XPGrid_Create", dynlib: xcgui, discardable.}

proc XPGrid_AddItem*(hEle: HELE; pName: ptr WCHAR; nType: propertyGrid_item_type;
                    nParentID: cint = XC_ID_ROOT): cint {.cdecl,
    importc: "XPGrid_AddItem", dynlib: xcgui, discardable.}
## 添加项


proc XPGrid_AddItemString*(hEle: HELE; pName: ptr WCHAR; pValue: ptr WCHAR;
                          nParentID: cint = XC_ID_ROOT): cint {.cdecl,
    importc: "XPGrid_AddItemString", dynlib: xcgui, discardable.}

proc XPGrid_AddItemEle*(hEle: HELE; hElePanel: HELE; nParentID: cint = XC_ID_ROOT): cint {.
    cdecl, importc: "XPGrid_AddItemEle", dynlib: xcgui, discardable.}

proc XPGrid_DeleteAll*(hEle: HELE) {.cdecl, importc: "XPGrid_DeleteAll", dynlib: xcgui, discardable.}

proc XPGrid_GetItemHELE*(hEle: HELE; nItemID: cint): HELE {.cdecl,
    importc: "XPGrid_GetItemHELE", dynlib: xcgui, discardable.}

proc XPGrid_SetWidth*(hEle: HELE; nWidth: cint) {.cdecl, importc: "XPGrid_SetWidth",
    dynlib: xcgui, discardable.}

proc XPGrid_SetItemValue*(hEle: HELE; nItemID: cint; pValue: ptr WCHAR): BOOL {.cdecl,
    importc: "XPGrid_SetItemValue", dynlib: xcgui, discardable.}

proc XPGrid_SetItemValueInt*(hEle: HELE; nItemID: cint; nValue: cint): BOOL {.cdecl,
    importc: "XPGrid_SetItemValueInt", dynlib: xcgui, discardable.}

proc XPGrid_SetItemData*(hEle: HELE; nItemID: cint; nUserData: cint): BOOL {.cdecl,
    importc: "XPGrid_SetItemData", dynlib: xcgui, discardable.}

proc XPGrid_GetItemData*(hEle: HELE; nItemID: cint): cint {.cdecl,
    importc: "XPGrid_GetItemData", dynlib: xcgui, discardable.}

proc XPGrid_GetItemValue*(hEle: HELE; nItemID: cint): ptr WCHAR {.cdecl,
    importc: "XPGrid_GetItemValue", dynlib: xcgui, discardable.}

proc XPGrid_HitTest*(hEle: HELE; pPt: ptr POINT; pbExpandButton: ptr BOOL): cint {.cdecl,
    importc: "XPGrid_HitTest", dynlib: xcgui, discardable.}

proc XPGrid_HitTestOffset*(hEle: HELE; pPt: ptr POINT; pbExpandButton: ptr BOOL): cint {.
    cdecl, importc: "XPGrid_HitTestOffset", dynlib: xcgui, discardable.}

proc XPGrid_ExpandItem*(hEle: HELE; nItemID: cint; bExpand: BOOL): BOOL {.cdecl,
    importc: "XPGrid_ExpandItem", dynlib: xcgui, discardable.}
## 展开项


proc XPGrid_GetSelItem*(hEle: HELE): cint {.cdecl, importc: "XPGrid_GetSelItem",
                                        dynlib: xcgui, discardable.}

proc XPGrid_SetSelItem*(hEle: HELE; nItemID: cint): BOOL {.cdecl,
    importc: "XPGrid_SetSelItem", dynlib: xcgui, discardable.}

proc XPGrid_SetDrawItemBkFlags*(hEle: HELE; nFlags: cint) {.cdecl,
    importc: "XPGrid_SetDrawItemBkFlags", dynlib: xcgui, discardable.}

proc XRes_EnableDelayLoad*(bEnable: BOOL) {.cdecl, importc: "XRes_EnableDelayLoad",
    dynlib: xcgui, discardable.}

#~ proc XRes_SetLoadFileCallback*(pFun: funLoadFile) {.cdecl,
    #~ importc: "XRes_SetLoadFileCallback", dynlib: xcgui, discardable.}

proc XRes_GetIDValue*(pName: ptr WCHAR): cint {.cdecl, importc: "XRes_GetIDValue",
    dynlib: xcgui, discardable.}
## 获取资源ID值


proc XRes_GetImage*(pName: ptr WCHAR): HIMAGE {.cdecl, importc: "XRes_GetImage",
    dynlib: xcgui, discardable.}
## 获取资源图片


proc XRes_GetImageEx*(pFileName: ptr WCHAR; pName: ptr WCHAR): HIMAGE {.cdecl,
    importc: "XRes_GetImageEx", dynlib: xcgui, discardable.}
## 获取资源图片


proc XRes_GetColor*(pName: ptr WCHAR): COLORREF {.cdecl, importc: "XRes_GetColor",
    dynlib: xcgui, discardable.}
## 获取资源颜色


proc XRes_GetFont*(pName: ptr WCHAR): HFONTX {.cdecl, importc: "XRes_GetFont",
    dynlib: xcgui, discardable.}
## 获取资源字体


proc XRes_GetBkM*(pName: ptr WCHAR): HBKM {.cdecl, importc: "XRes_GetBkM",
    dynlib: xcgui, discardable.}
## 获取资源背景信息


proc XRichEditColor_Create*(x: cint; y: cint; cx: cint; cy: cint; hParent: HXCGUI): HELE {.
    cdecl, importc: "XRichEditColor_Create", dynlib: xcgui, discardable.}

proc XRichEditColor_SetColor*(hEle: HELE; color: COLORREF) {.cdecl,
    importc: "XRichEditColor_SetColor", dynlib: xcgui, discardable.}
## 设置颜色


proc XRichEditColor_GetColor*(hEle: HELE): COLORREF {.cdecl,
    importc: "XRichEditColor_GetColor", dynlib: xcgui, discardable.}
## 获取颜色RGB值


proc XRichEditSet_Create*(x: cint; y: cint; cx: cint; cy: cint; hParent: HXCGUI): HELE {.
    cdecl, importc: "XRichEditSet_Create", dynlib: xcgui, discardable.}

proc XRichEditFile_Create*(x: cint; y: cint; cx: cint; cy: cint; hParent: HXCGUI = nil): HELE {.
    cdecl, importc: "XRichEditFile_Create", dynlib: xcgui, discardable.}

proc XRichEditFile_SetOpenFileType*(hEle: HELE; pType: ptr WCHAR) {.cdecl,
    importc: "XRichEditFile_SetOpenFileType", dynlib: xcgui, discardable.}
## 设置打开文件类型


proc XRichEditFile_SetDefaultFile*(hEle: HELE; pFile: ptr WCHAR) {.cdecl,
    importc: "XRichEditFile_SetDefaultFile", dynlib: xcgui, discardable.}
## 设置默认目录文件


proc XRichEditFile_SetRelativeDir*(hEle: HELE; pDir: ptr WCHAR) {.cdecl,
    importc: "XRichEditFile_SetRelativeDir", dynlib: xcgui, discardable.}
## TODO:设置相对路径


proc XRichEditFolder_Create*(x: cint; y: cint; cx: cint; cy: cint; hParent: HXCGUI): HELE {.
    cdecl, importc: "XRichEditFolder_Create", dynlib: xcgui, discardable.}

proc XRichEditFolder_SetDefaultDir*(hEle: HELE; pDir: ptr WCHAR) {.cdecl,
    importc: "XRichEditFolder_SetDefaultDir", dynlib: xcgui, discardable.}
## 设置默认目录


proc XRichEdit_Create*(x: cint; y: cint; cx: cint; cy: cint; hParent: HXCGUI = nil): HELE {.
    cdecl, importc: "XRichEdit_Create", dynlib: xcgui, discardable.}

proc XRichEdit_InsertString*(hEle: HELE; pString: ptr WCHAR; hFont: HFONTX = nil) {.
    cdecl, importc: "XRichEdit_InsertString", dynlib: xcgui, discardable.}

proc XRichEdit_InsertImage*(hEle: HELE; hImage: HIMAGE; pImagePath: ptr WCHAR): BOOL {.
    cdecl, importc: "XRichEdit_InsertImage", dynlib: xcgui, discardable.}

proc XRichEdit_InsertGif*(hEle: HELE; hImage: HIMAGE; pImagePath: ptr WCHAR): BOOL {.
    cdecl, importc: "XRichEdit_InsertGif", dynlib: xcgui, discardable.}

proc XRichEdit_InsertStringEx*(hEle: HELE; iRow: cint; iColumn: cint;
                              pString: ptr WCHAR; hFont: HFONTX = nil) {.cdecl,
    importc: "XRichEdit_InsertStringEx", dynlib: xcgui, discardable.}

proc XRichEdit_InsertImageEx*(hEle: HELE; iRow: cint; iColumn: cint; hImage: HIMAGE;
                             pImagePath: ptr WCHAR): BOOL {.cdecl,
    importc: "XRichEdit_InsertImageEx", dynlib: xcgui, discardable.}

proc XRichEdit_InsertGifEx*(hEle: HELE; iRow: cint; iColumn: cint; hImage: HIMAGE;
                           pImagePath: ptr WCHAR): BOOL {.cdecl,
    importc: "XRichEdit_InsertGifEx", dynlib: xcgui, discardable.}

proc XRichEdit_EnableReadOnly*(hEle: HELE; bEnable: BOOL) {.cdecl,
    importc: "XRichEdit_EnableReadOnly", dynlib: xcgui, discardable.}

proc XRichEdit_EnableMultiLine*(hEle: HELE; bEnable: BOOL) {.cdecl,
    importc: "XRichEdit_EnableMultiLine", dynlib: xcgui, discardable.}

proc XRichEdit_EnablePassword*(hEle: HELE; bEnable: BOOL) {.cdecl,
    importc: "XRichEdit_EnablePassword", dynlib: xcgui, discardable.}

proc XRichEdit_EnableEvent_XE_RICHEDIT_CHANGE*(hEle: HELE; bEnable: BOOL) {.cdecl,
    importc: "XRichEdit_EnableEvent_XE_RICHEDIT_CHANGE", dynlib: xcgui, discardable.}

proc XRichEdit_EnableAutoWrap*(hEle: HELE; bEnable: BOOL) {.cdecl,
    importc: "XRichEdit_EnableAutoWrap", dynlib: xcgui, discardable.}

proc XRichEdit_EnableAutoSelAll*(hEle: HELE; bEnable: BOOL) {.cdecl,
    importc: "XRichEdit_EnableAutoSelAll", dynlib: xcgui, discardable.}

proc XRichEdit_EnableVerticalCenter*(hEle: HELE; bEnable: BOOL) {.cdecl,
    importc: "XRichEdit_EnableVerticalCenter", dynlib: xcgui, discardable.}

proc XRichEdit_IsEmpty*(hEle: HELE): BOOL {.cdecl, importc: "XRichEdit_IsEmpty",
                                        dynlib: xcgui, discardable.}

proc XRichEdit_IsReadOnly*(hEle: HELE): BOOL {.cdecl,
    importc: "XRichEdit_IsReadOnly", dynlib: xcgui, discardable.}

proc XRichEdit_IsMultiLine*(hEle: HELE): BOOL {.cdecl,
    importc: "XRichEdit_IsMultiLine", dynlib: xcgui, discardable.}

proc XRichEdit_IsPassword*(hEle: HELE): BOOL {.cdecl,
    importc: "XRichEdit_IsPassword", dynlib: xcgui, discardable.}

proc XRichEdit_IsAutoWrap*(hEle: HELE): BOOL {.cdecl,
    importc: "XRichEdit_IsAutoWrap", dynlib: xcgui, discardable.}

proc XRichEdit_SetLimitNum*(hEle: HELE; nNumber: cint) {.cdecl,
    importc: "XRichEdit_SetLimitNum", dynlib: xcgui, discardable.}

proc XRichEdit_SetCaretColor*(hEle: HELE; color: COLORREF) {.cdecl,
    importc: "XRichEdit_SetCaretColor", dynlib: xcgui, discardable.}

proc XRichEdit_SetText*(hEle: HELE; pString: ptr WCHAR) {.cdecl,
    importc: "XRichEdit_SetText", dynlib: xcgui, discardable.}

proc XRichEdit_SetTextInt*(hEle: HELE; nVaule: cint) {.cdecl,
    importc: "XRichEdit_SetTextInt", dynlib: xcgui, discardable.}

proc XRichEdit_GetText*(hEle: HELE; pOut: ptr WCHAR; len: cint): cint {.cdecl,
    importc: "XRichEdit_GetText", dynlib: xcgui, discardable.}

proc XRichEdit_GetHTMLFormat*(hEle: HELE; pOut: ptr WCHAR; len: cint) {.cdecl,
    importc: "XRichEdit_GetHTMLFormat", dynlib: xcgui, discardable.}
## 获取HTML格式内容


proc XRichEdit_GetData*(hEle: HELE; pDataSize: ptr cint = nil): pointer {.cdecl,
    importc: "XRichEdit_GetData", dynlib: xcgui, discardable.}

proc XRichEdit_InsertData*(hEle: HELE; pData: pointer; iRow: cint; iColumn: cint): BOOL {.
    cdecl, importc: "XRichEdit_InsertData", dynlib: xcgui, discardable.}

proc XRichEdit_GetTextLength*(hEle: HELE): cint {.cdecl,
    importc: "XRichEdit_GetTextLength", dynlib: xcgui, discardable.}

proc XRichEdit_SetRowHeight*(hEle: HELE; nHeight: UINT) {.cdecl,
    importc: "XRichEdit_SetRowHeight", dynlib: xcgui, discardable.}
## 设置默认行高


proc XRichEdit_SetDefaultText*(hEle: HELE; pString: ptr WCHAR) {.cdecl,
    importc: "XRichEdit_SetDefaultText", dynlib: xcgui, discardable.}

proc XRichEdit_SetDefaultTextColor*(hEle: HELE; color: COLORREF; alpha: BYTE) {.cdecl,
    importc: "XRichEdit_SetDefaultTextColor", dynlib: xcgui, discardable.}

proc XRichEdit_SetCurrentInputTextColor*(hEle: HELE; color: COLORREF; alpha: BYTE) {.
    cdecl, importc: "XRichEdit_SetCurrentInputTextColor", dynlib: xcgui, discardable.}

proc XRichEdit_GetCurrentRow*(hEle: HELE): cint {.cdecl,
    importc: "XRichEdit_GetCurrentRow", dynlib: xcgui, discardable.}

proc XRichEdit_GetCurrentColumn*(hEle: HELE): cint {.cdecl,
    importc: "XRichEdit_GetCurrentColumn", dynlib: xcgui, discardable.}

proc XRichEdit_SetCurrentPos*(hEle: HELE; iRow: cint; iColumn: cint) {.cdecl,
    importc: "XRichEdit_SetCurrentPos", dynlib: xcgui, discardable.}

proc XRichEdit_GetRowCount*(hEle: HELE): cint {.cdecl,
    importc: "XRichEdit_GetRowCount", dynlib: xcgui, discardable.}

proc XRichEdit_GetRowLength*(hEle: HELE; iRow: cint): cint {.cdecl,
    importc: "XRichEdit_GetRowLength", dynlib: xcgui, discardable.}

proc XRichEdit_GetRowHeight*(hEle: HELE; iRow: cint): cint {.cdecl,
    importc: "XRichEdit_GetRowHeight", dynlib: xcgui, discardable.}

proc XRichEdit_GetSelectText*(hEle: HELE; pOut: ptr WCHAR; len: cint): cint {.cdecl,
    importc: "XRichEdit_GetSelectText", dynlib: xcgui, discardable.}

proc XRichEdit_GetSelectPosition*(hEle: HELE; pBegin: ptr Position_i;
                                 pEnd: ptr Position_i): BOOL {.cdecl,
    importc: "XRichEdit_GetSelectPosition", dynlib: xcgui, discardable.}

proc XRichEdit_SetSelect*(hEle: HELE; iStartRow: cint; iStartCol: cint; iEndRow: cint;
                         iEndCol: cint): BOOL {.cdecl,
    importc: "XRichEdit_SetSelect", dynlib: xcgui, discardable.}

proc XRichEdit_SetItemFontEx*(hEle: HELE; beginRow: cint; beginColumn: cint;
                             endRow: cint; endColumn: cint; hFont: HFONTX): BOOL {.
    cdecl, importc: "XRichEdit_SetItemFontEx", dynlib: xcgui, discardable.}

proc XRichEdit_SetItemColorEx*(hEle: HELE; beginRow: cint; beginColumn: cint;
                              endRow: cint; endColumn: cint; color: COLORREF;
                              alpha: BYTE = 255): BOOL {.cdecl,
    importc: "XRichEdit_SetItemColorEx", dynlib: xcgui, discardable.}

proc XRichEdit_CancelSelect*(hEle: HELE) {.cdecl, importc: "XRichEdit_CancelSelect",
                                        dynlib: xcgui, discardable.}

proc XRichEdit_SetSelectBkColor*(hEle: HELE; color: COLORREF; alpha: BYTE = 255) {.cdecl,
    importc: "XRichEdit_SetSelectBkColor", dynlib: xcgui, discardable.}

proc XRichEdit_SetPasswordCharacter*(hEle: HELE; ch: WCHAR) {.cdecl,
    importc: "XRichEdit_SetPasswordCharacter", dynlib: xcgui, discardable.}

proc XRichEdit_SelectAll*(hEle: HELE): BOOL {.cdecl, importc: "XRichEdit_SelectAll",
    dynlib: xcgui, discardable.}
## 选择所有内容


proc XRichEdit_DeleteSelect*(hEle: HELE): BOOL {.cdecl,
    importc: "XRichEdit_DeleteSelect", dynlib: xcgui, discardable.}
## 删除选择内容


proc XRichEdit_DeleteAll*(hEle: HELE) {.cdecl, importc: "XRichEdit_DeleteAll",
                                     dynlib: xcgui, discardable.}
## 删除所有


proc XRichEdit_ClipboardCut*(hEle: HELE): BOOL {.cdecl,
    importc: "XRichEdit_ClipboardCut", dynlib: xcgui, discardable.}
## 剪切


proc XRichEdit_ClipboardCopy*(hEle: HELE): BOOL {.cdecl,
    importc: "XRichEdit_ClipboardCopy", dynlib: xcgui, discardable.}
## 复制 选择的内容


proc XRichEdit_ClipboardPaste*(hEle: HELE): BOOL {.cdecl,
    importc: "XRichEdit_ClipboardPaste", dynlib: xcgui, discardable.}
## 粘贴 粘贴剪贴板内容


proc XSBar_Create*(x: cint; y: cint; cx: cint; cy: cint; hParent: HXCGUI = nil): HELE {.cdecl,
    importc: "XSBar_Create", dynlib: xcgui, discardable.}

proc XSBar_SetRange*(hEle: HELE; range: cint) {.cdecl, importc: "XSBar_SetRange",
    dynlib: xcgui, discardable.}

proc XSBar_GetRange*(hEle: HELE): cint {.cdecl, importc: "XSBar_GetRange",
                                     dynlib: xcgui, discardable.}

proc XSBar_ShowButton*(hEle: HELE; bShow: BOOL) {.cdecl, importc: "XSBar_ShowButton",
    dynlib: xcgui, discardable.}

proc XSBar_SetSliderLength*(hEle: HELE; length: cint) {.cdecl,
    importc: "XSBar_SetSliderLength", dynlib: xcgui, discardable.}
## 设置滑块长度


proc XSBar_SetSliderMinLength*(hEle: HELE; minLength: cint) {.cdecl,
    importc: "XSBar_SetSliderMinLength", dynlib: xcgui, discardable.}
## 设置滑块最小长度


proc XSBar_SetSliderPadding*(hEle: HELE; nPadding: cint) {.cdecl,
    importc: "XSBar_SetSliderPadding", dynlib: xcgui, discardable.}

proc XSBar_SetHorizon*(hEle: HELE; bHorizon: BOOL): BOOL {.cdecl,
    importc: "XSBar_SetHorizon", dynlib: xcgui, discardable.}
## 水平显示或垂直


proc XSBar_GetSliderMaxLength*(hEle: HELE): cint {.cdecl,
    importc: "XSBar_GetSliderMaxLength", dynlib: xcgui, discardable.}

proc XSBar_ScrollUp*(hEle: HELE): BOOL {.cdecl, importc: "XSBar_ScrollUp",
                                     dynlib: xcgui, discardable.}
## 向左滚动


proc XSBar_ScrollDown*(hEle: HELE): BOOL {.cdecl, importc: "XSBar_ScrollDown",
                                       dynlib: xcgui, discardable.}
## 向右滚动


proc XSBar_ScrollTop*(hEle: HELE): BOOL {.cdecl, importc: "XSBar_ScrollTop",
                                      dynlib: xcgui, discardable.}
## 滚动到顶部


proc XSBar_ScrollBottom*(hEle: HELE): BOOL {.cdecl, importc: "XSBar_ScrollBottom",
    dynlib: xcgui, discardable.}
## 滚动到底部


proc XSBar_ScrollPos*(hEle: HELE; pos: cint): BOOL {.cdecl, importc: "XSBar_ScrollPos",
    dynlib: xcgui, discardable.}
## 滚动到指定点


proc XSBar_GetButtonUp*(hEle: HELE): HELE {.cdecl, importc: "XSBar_GetButtonUp",
                                        dynlib: xcgui, discardable.}

proc XSBar_GetButtonDown*(hEle: HELE): HELE {.cdecl, importc: "XSBar_GetButtonDown",
    dynlib: xcgui, discardable.}

proc XSBar_GetButtonSlider*(hEle: HELE): HELE {.cdecl,
    importc: "XSBar_GetButtonSlider", dynlib: xcgui, discardable.}

proc XSView_Create*(x: cint; y: cint; cx: cint; cy: cint; hParent: HXCGUI = nil): HELE {.
    cdecl, importc: "XSView_Create", dynlib: xcgui, discardable.}

proc XSView_SetTotalSize*(hEle: HELE; cx: cint; cy: cint): BOOL {.cdecl,
    importc: "XSView_SetTotalSize", dynlib: xcgui, discardable.}
## 设置视图内容总大小(不包含边框间隔)


proc XSView_GetTotalSize*(hEle: HELE; pSize: ptr SIZE) {.cdecl,
    importc: "XSView_GetTotalSize", dynlib: xcgui, discardable.}
## 获取设置的内容大小


proc XSView_SetLineSize*(hEle: HELE; nWidth: cint; nHeight: cint): BOOL {.cdecl,
    importc: "XSView_SetLineSize", dynlib: xcgui, discardable.}

proc XSView_GetLineSize*(hEle: HELE; pSize: ptr SIZE) {.cdecl,
    importc: "XSView_GetLineSize", dynlib: xcgui, discardable.}

proc XSView_SetScrollBarSize*(hEle: HELE; size: cint) {.cdecl,
    importc: "XSView_SetScrollBarSize", dynlib: xcgui, discardable.}
## 设置滚动条大小


proc XSView_GetViewPosH*(hEle: HELE): cint {.cdecl, importc: "XSView_GetViewPosH",
    dynlib: xcgui, discardable.}
## 获取视口原点X坐标


proc XSView_GetViewPosV*(hEle: HELE): cint {.cdecl, importc: "XSView_GetViewPosV",
    dynlib: xcgui, discardable.}
## 获取视口原点Y坐标


proc XSView_GetViewWidth*(hEle: HELE): cint {.cdecl, importc: "XSView_GetViewWidth",
    dynlib: xcgui, discardable.}

proc XSView_GetViewHeight*(hEle: HELE): cint {.cdecl,
    importc: "XSView_GetViewHeight", dynlib: xcgui, discardable.}

proc XSView_GetViewRect*(hEle: HELE; pRect: ptr RECT) {.cdecl,
    importc: "XSView_GetViewRect", dynlib: xcgui, discardable.}
## 获取视口坐标(不含边框间隔),left为视口左间隔大小,top为视口上间隔大小,非(0,0).


proc XSView_GetScrollBarH*(hEle: HELE): HELE {.cdecl,
    importc: "XSView_GetScrollBarH", dynlib: xcgui, discardable.}
## 获取水平滚动条


proc XSView_GetScrollBarV*(hEle: HELE): HELE {.cdecl,
    importc: "XSView_GetScrollBarV", dynlib: xcgui, discardable.}
## 获取垂直滚动条


proc XSView_SetBorderSize*(hEle: HELE; left: cint; top: cint; right: cint; bottom: cint) {.
    cdecl, importc: "XSView_SetBorderSize", dynlib: xcgui, discardable.}

proc XSView_GetBorderSize*(hEle: HELE; pBorder: ptr BorderSize_i) {.cdecl,
    importc: "XSView_GetBorderSize", dynlib: xcgui, discardable.}

proc XSView_ScrollPosH*(hEle: HELE; pos: cint): BOOL {.cdecl,
    importc: "XSView_ScrollPosH", dynlib: xcgui, discardable.}
## 滚动到指定点


proc XSView_ScrollPosV*(hEle: HELE; pos: cint): BOOL {.cdecl,
    importc: "XSView_ScrollPosV", dynlib: xcgui, discardable.}
## 滚动到指定点


proc XSView_ScrollPosXH*(hEle: HELE; posX: cint): BOOL {.cdecl,
    importc: "XSView_ScrollPosXH", dynlib: xcgui, discardable.}
## 滚动到指定坐标


proc XSView_ScrollPosYV*(hEle: HELE; posY: cint): BOOL {.cdecl,
    importc: "XSView_ScrollPosYV", dynlib: xcgui, discardable.}
## 滚动到指定坐标


proc XSView_ShowSBarH*(hEle: HELE; bShow: BOOL) {.cdecl, importc: "XSView_ShowSBarH",
    dynlib: xcgui, discardable.}
## 启用水平滚动条


proc XSView_ShowSBarV*(hEle: HELE; bShow: BOOL) {.cdecl, importc: "XSView_ShowSBarV",
    dynlib: xcgui, discardable.}
## 启用垂直滚动条


proc XSView_EnableAutoShowScrollBar*(hEle: HELE; bEnable: BOOL) {.cdecl,
    importc: "XSView_EnableAutoShowScrollBar", dynlib: xcgui, discardable.}

proc XSView_ScrollLeftLine*(hEle: HELE): BOOL {.cdecl,
    importc: "XSView_ScrollLeftLine", dynlib: xcgui, discardable.}
## 向左滚动


proc XSView_ScrollRightLine*(hEle: HELE): BOOL {.cdecl,
    importc: "XSView_ScrollRightLine", dynlib: xcgui, discardable.}
## 向右滚动


proc XSView_ScrollTopLine*(hEle: HELE): BOOL {.cdecl,
    importc: "XSView_ScrollTopLine", dynlib: xcgui, discardable.}
## 向上滚动


proc XSView_ScrollBottomLine*(hEle: HELE): BOOL {.cdecl,
    importc: "XSView_ScrollBottomLine", dynlib: xcgui, discardable.}
## 向下滚动


proc XSView_ScrollLeft*(hEle: HELE): BOOL {.cdecl, importc: "XSView_ScrollLeft",
                                        dynlib: xcgui, discardable.}
## 水平滚动到左侧


proc XSView_ScrollRight*(hEle: HELE): BOOL {.cdecl, importc: "XSView_ScrollRight",
    dynlib: xcgui, discardable.}
## 水平滚动到右侧


proc XSView_ScrollTop*(hEle: HELE): BOOL {.cdecl, importc: "XSView_ScrollTop",
                                       dynlib: xcgui, discardable.}
## 滚动到顶部


proc XSView_ScrollBottom*(hEle: HELE): BOOL {.cdecl, importc: "XSView_ScrollBottom",
    dynlib: xcgui, discardable.}
## 滚动到底部


proc XShape_GetParentEle*(hShape: HXCGUI): HELE {.cdecl,
    importc: "XShape_GetParentEle", dynlib: xcgui, discardable.}

proc XShape_GetHWINDOW*(hShape: HXCGUI): HWINDOW {.cdecl,
    importc: "XShape_GetHWINDOW", dynlib: xcgui, discardable.}

proc XShape_GetParent*(hShape: HXCGUI): HXCGUI {.cdecl, importc: "XShape_GetParent",
    dynlib: xcgui, discardable.}

proc XShape_RemoveShape*(hShape: HXCGUI) {.cdecl, importc: "XShape_RemoveShape",
                                        dynlib: xcgui, discardable.}

proc XShape_SetID*(hShape: HXCGUI; nID: cint) {.cdecl, importc: "XShape_SetID",
    dynlib: xcgui, discardable.}

proc XShape_GetID*(hShape: HXCGUI): cint {.cdecl, importc: "XShape_GetID",
                                       dynlib: xcgui, discardable.}

proc XShape_SetUID*(hShape: HXCGUI; nUID: cint) {.cdecl, importc: "XShape_SetUID",
    dynlib: xcgui, discardable.}

proc XShape_GetUID*(hShape: HXCGUI): cint {.cdecl, importc: "XShape_GetUID",
                                        dynlib: xcgui, discardable.}

proc XShape_SetName*(hShape: HXCGUI; pName: ptr WCHAR) {.cdecl,
    importc: "XShape_SetName", dynlib: xcgui, discardable.}

proc XShape_GetName*(hShape: HXCGUI): ptr WCHAR {.cdecl, importc: "XShape_GetName",
    dynlib: xcgui, discardable.}

proc XShape_GetZOrder*(hShape: HXCGUI): cint {.cdecl, importc: "XShape_GetZOrder",
    dynlib: xcgui, discardable.}

proc XShape_Redraw*(hShape: HXCGUI) {.cdecl, importc: "XShape_Redraw", dynlib: xcgui, discardable.}

proc XShape_GetWidth*(hShape: HXCGUI): cint {.cdecl, importc: "XShape_GetWidth",
    dynlib: xcgui, discardable.}

proc XShape_GetHeight*(hShape: HXCGUI): cint {.cdecl, importc: "XShape_GetHeight",
    dynlib: xcgui, discardable.}

proc XShape_GetRect*(hShape: HXCGUI; pRect: ptr RECT) {.cdecl,
    importc: "XShape_GetRect", dynlib: xcgui, discardable.}

proc XShape_SetRect*(hShape: HXCGUI; pRect: ptr RECT) {.cdecl,
    importc: "XShape_SetRect", dynlib: xcgui, discardable.}

proc XShape_GetWndClientRect*(hShape: HXCGUI; pRect: ptr RECT) {.cdecl,
    importc: "XShape_GetWndClientRect", dynlib: xcgui, discardable.}

proc XShape_GetContentSize*(hShape: HXCGUI; pSize: ptr SIZE) {.cdecl,
    importc: "XShape_GetContentSize", dynlib: xcgui, discardable.}
## 获取内容大小


proc XShape_ShowLayout*(hShape: HXCGUI; bShow: BOOL) {.cdecl,
    importc: "XShape_ShowLayout", dynlib: xcgui, discardable.}

proc XShape_AdjustLayout*(hShape: HXCGUI) {.cdecl, importc: "XShape_AdjustLayout",
    dynlib: xcgui, discardable.}

proc XShape_Destroy*(hShape: HXCGUI) {.cdecl, importc: "XShape_Destroy", dynlib: xcgui, discardable.}

proc XShapeText_Create*(x: cint; y: cint; cx: cint; cy: cint; pName: ptr WCHAR;
                       hParent: HXCGUI = nil): HXCGUI {.cdecl,
    importc: "XShapeText_Create", dynlib: xcgui, discardable.}

proc XShapeText_SetText*(hTextBlock: HXCGUI; pName: ptr WCHAR) {.cdecl,
    importc: "XShapeText_SetText", dynlib: xcgui, discardable.}

proc XShapeText_GetText*(hTextBlock: HXCGUI; pOut: ptr WCHAR; nOutLen: cint) {.cdecl,
    importc: "XShapeText_GetText", dynlib: xcgui, discardable.}

proc XShapeText_GetTextLength*(hTextBlock: HXCGUI): cint {.cdecl,
    importc: "XShapeText_GetTextLength", dynlib: xcgui, discardable.}

proc XShapeText_SetFont*(hTextBlock: HXCGUI; hFontx: HFONTX) {.cdecl,
    importc: "XShapeText_SetFont", dynlib: xcgui, discardable.}

proc XShapeText_GetFont*(hTextBlock: HXCGUI): HFONTX {.cdecl,
    importc: "XShapeText_GetFont", dynlib: xcgui, discardable.}

proc XShapeText_SetTextColor*(hTextBlock: HXCGUI; color: COLORREF; alpha: BYTE) {.
    cdecl, importc: "XShapeText_SetTextColor", dynlib: xcgui, discardable.}

proc XShapeText_GetTextColor*(hTextBlock: HXCGUI): COLORREF {.cdecl,
    importc: "XShapeText_GetTextColor", dynlib: xcgui, discardable.}

proc XShapeText_SetTextAlign*(hTextBlock: HXCGUI; align: cint) {.cdecl,
    importc: "XShapeText_SetTextAlign", dynlib: xcgui, discardable.}

proc XShapeText_SetOffset*(hTextBlock: HXCGUI; x: cint; y: cint) {.cdecl,
    importc: "XShapeText_SetOffset", dynlib: xcgui, discardable.}

proc XShapeText_SetLayoutWidth*(hTextBlock: HXCGUI; nType: layout_size_type;
                               width: cint) {.cdecl,
    importc: "XShapeText_SetLayoutWidth", dynlib: xcgui, discardable.}

proc XShapeText_SetLayoutHeight*(hTextBlock: HXCGUI; nType: layout_size_type;
                                height: cint) {.cdecl,
    importc: "XShapeText_SetLayoutHeight", dynlib: xcgui, discardable.}

proc XShapeText_GetLayoutWidth*(hTextBlock: HXCGUI; pType: ptr layout_size_type;
                               pWidth: ptr cint) {.cdecl,
    importc: "XShapeText_GetLayoutWidth", dynlib: xcgui, discardable.}

proc XShapeText_GetLayoutHeight*(hTextBlock: HXCGUI; pType: ptr layout_size_type;
                                pHeight: ptr cint) {.cdecl,
    importc: "XShapeText_GetLayoutHeight", dynlib: xcgui, discardable.}

proc XShapeText_EnableCSS*(hTextBlock: HXCGUI; bEnable: BOOL) {.cdecl,
    importc: "XShapeText_EnableCSS", dynlib: xcgui, discardable.}

proc XShapeText_SetCssName*(hTextBlock: HXCGUI; pName: ptr WCHAR) {.cdecl,
    importc: "XShapeText_SetCssName", dynlib: xcgui, discardable.}

proc XShapeText_GetCssName*(hTextBlock: HXCGUI): ptr WCHAR {.cdecl,
    importc: "XShapeText_GetCssName", dynlib: xcgui, discardable.}

proc XShapePic_Create*(x: cint; y: cint; cx: cint; cy: cint; hParent: HXCGUI = nil): HXCGUI {.
    cdecl, importc: "XShapePic_Create", dynlib: xcgui, discardable.}

proc XShapePic_SetImage*(hShape: HXCGUI; hImage: HIMAGE) {.cdecl,
    importc: "XShapePic_SetImage", dynlib: xcgui, discardable.}

proc XShapePic_GetImage*(hShape: HXCGUI): HIMAGE {.cdecl,
    importc: "XShapePic_GetImage", dynlib: xcgui, discardable.}

proc XShapePic_SetLayoutWidth*(hShape: HXCGUI; nType: layout_size_type; width: cint) {.
    cdecl, importc: "XShapePic_SetLayoutWidth", dynlib: xcgui, discardable.}

proc XShapePic_SetLayoutHeight*(hShape: HXCGUI; nType: layout_size_type;
                               height: cint) {.cdecl,
    importc: "XShapePic_SetLayoutHeight", dynlib: xcgui, discardable.}

proc XShapePic_GetLayoutWidth*(hShape: HXCGUI; pType: ptr layout_size_type;
                              pWidth: ptr cint) {.cdecl,
    importc: "XShapePic_GetLayoutWidth", dynlib: xcgui, discardable.}

proc XShapePic_GetLayoutHeight*(hShape: HXCGUI; pType: ptr layout_size_type;
                               pHeight: ptr cint) {.cdecl,
    importc: "XShapePic_GetLayoutHeight", dynlib: xcgui, discardable.}

proc XShapeGif_Create*(x: cint; y: cint; cx: cint; cy: cint; hParent: HXCGUI = nil): HXCGUI {.
    cdecl, importc: "XShapeGif_Create", dynlib: xcgui, discardable.}

proc XShapeGif_SetImage*(hShape: HXCGUI; hImage: HIMAGE) {.cdecl,
    importc: "XShapeGif_SetImage", dynlib: xcgui, discardable.}

proc XShapeGif_GetImage*(hShape: HXCGUI): HIMAGE {.cdecl,
    importc: "XShapeGif_GetImage", dynlib: xcgui, discardable.}

proc XShapeGif_SetLayoutWidth*(hShape: HXCGUI; nType: layout_size_type; width: cint) {.
    cdecl, importc: "XShapeGif_SetLayoutWidth", dynlib: xcgui, discardable.}

proc XShapeGif_SetLayoutHeight*(hShape: HXCGUI; nType: layout_size_type;
                               height: cint) {.cdecl,
    importc: "XShapeGif_SetLayoutHeight", dynlib: xcgui, discardable.}

proc XShapeGif_GetLayoutWidth*(hShape: HXCGUI; pType: ptr layout_size_type;
                              pWidth: ptr cint) {.cdecl,
    importc: "XShapeGif_GetLayoutWidth", dynlib: xcgui, discardable.}

proc XShapeGif_GetLayoutHeight*(hShape: HXCGUI; pType: ptr layout_size_type;
                               pHeight: ptr cint) {.cdecl,
    importc: "XShapeGif_GetLayoutHeight", dynlib: xcgui, discardable.}

proc XShapeRect_Create*(x: cint; y: cint; cx: cint; cy: cint; hParent: HXCGUI = nil): HXCGUI {.
    cdecl, importc: "XShapeRect_Create", dynlib: xcgui, discardable.}

proc XShapeRect_SetBorderColor*(hShape: HXCGUI; color: COLORREF; alpha: BYTE = 255) {.
    cdecl, importc: "XShapeRect_SetBorderColor", dynlib: xcgui, discardable.}

proc XShapeRect_SetFillColor*(hShape: HXCGUI; color: COLORREF; alpha: BYTE = 255) {.
    cdecl, importc: "XShapeRect_SetFillColor", dynlib: xcgui, discardable.}

proc XShapeRect_SetRoundAngle*(hShape: HXCGUI; nWidth: cint; nHeight: cint) {.cdecl,
    importc: "XShapeRect_SetRoundAngle", dynlib: xcgui, discardable.}

proc XShapeRect_GetRoundAngle*(hShape: HXCGUI; pWidth: ptr cint; pHeight: ptr cint) {.
    cdecl, importc: "XShapeRect_GetRoundAngle", dynlib: xcgui, discardable.}

proc XShapeRect_EnableBorder*(hShape: HXCGUI; bEnable: BOOL) {.cdecl,
    importc: "XShapeRect_EnableBorder", dynlib: xcgui, discardable.}

proc XShapeRect_EnableFill*(hShape: HXCGUI; bEnable: BOOL) {.cdecl,
    importc: "XShapeRect_EnableFill", dynlib: xcgui, discardable.}

proc XShapeRect_EnableRoundAngle*(hShape: HXCGUI; bEnable: BOOL) {.cdecl,
    importc: "XShapeRect_EnableRoundAngle", dynlib: xcgui, discardable.}

proc XShapeEllipse_Create*(x: cint; y: cint; cx: cint; cy: cint; hParent: HXCGUI = nil): HXCGUI {.
    cdecl, importc: "XShapeEllipse_Create", dynlib: xcgui, discardable.}

proc XShapeEllipse_SetBorderColor*(hShape: HXCGUI; color: COLORREF; alpha: BYTE = 255) {.
    cdecl, importc: "XShapeEllipse_SetBorderColor", dynlib: xcgui, discardable.}

proc XShapeEllipse_SetFillColor*(hShape: HXCGUI; color: COLORREF; alpha: BYTE = 255) {.
    cdecl, importc: "XShapeEllipse_SetFillColor", dynlib: xcgui, discardable.}

proc XShapeEllipse_EnableBorder*(hShape: HXCGUI; bEnable: BOOL) {.cdecl,
    importc: "XShapeEllipse_EnableBorder", dynlib: xcgui, discardable.}

proc XShapeEllipse_EnableFill*(hShape: HXCGUI; bEnable: BOOL) {.cdecl,
    importc: "XShapeEllipse_EnableFill", dynlib: xcgui, discardable.}

proc XShapeGroupBox_Create*(x: cint; y: cint; cx: cint; cy: cint; pName: ptr WCHAR;
                           hParent: HXCGUI = nil): HXCGUI {.cdecl,
    importc: "XShapeGroupBox_Create", dynlib: xcgui, discardable.}

proc XShapeGroupBox_SetBorderColor*(hShape: HXCGUI; color: COLORREF;
                                   alpha: BYTE = 255) {.cdecl,
    importc: "XShapeGroupBox_SetBorderColor", dynlib: xcgui, discardable.}

proc XShapeGroupBox_SetTextColor*(hShape: HXCGUI; color: COLORREF; alpha: BYTE = 255) {.
    cdecl, importc: "XShapeGroupBox_SetTextColor", dynlib: xcgui, discardable.}

proc XShapeGroupBox_SetFontX*(hShape: HXCGUI; hFontX: HFONTX) {.cdecl,
    importc: "XShapeGroupBox_SetFontX", dynlib: xcgui, discardable.}

proc XShapeGroupBox_SetTextOffset*(hShape: HXCGUI; offsetX: cint; offsetY: cint) {.
    cdecl, importc: "XShapeGroupBox_SetTextOffset", dynlib: xcgui, discardable.}

proc XShapeGroupBox_SetRoundAngle*(hShape: HXCGUI; nWidth: cint; nHeight: cint) {.
    cdecl, importc: "XShapeGroupBox_SetRoundAngle", dynlib: xcgui, discardable.}

proc XShapeGroupBox_SetText*(hShape: HXCGUI; pText: ptr WCHAR) {.cdecl,
    importc: "XShapeGroupBox_SetText", dynlib: xcgui, discardable.}

proc XShapeGroupBox_GetTextOffset*(hShape: HXCGUI; pOffsetX: ptr cint;
                                  pOffsetY: ptr cint) {.cdecl,
    importc: "XShapeGroupBox_GetTextOffset", dynlib: xcgui, discardable.}

proc XShapeGroupBox_GetRoundAngle*(hShape: HXCGUI; pWidth: ptr cint; pHeight: ptr cint) {.
    cdecl, importc: "XShapeGroupBox_GetRoundAngle", dynlib: xcgui, discardable.}

proc XShapeGroupBox_EnableRoundAngle*(hShape: HXCGUI; bEnable: BOOL) {.cdecl,
    importc: "XShapeGroupBox_EnableRoundAngle", dynlib: xcgui, discardable.}

proc XShapeLine_Create*(x1: cint; y1: cint; x2: cint; y2: cint; hParent: HXCGUI = nil): HXCGUI {.
    cdecl, importc: "XShapeLine_Create", dynlib: xcgui, discardable.}

proc XShapeLine_SetPosition*(hShape: HXCGUI; x1: cint; y1: cint; x2: cint; y2: cint) {.
    cdecl, importc: "XShapeLine_SetPosition", dynlib: xcgui, discardable.}

proc XShapeLine_SetColor*(hShape: HXCGUI; color: COLORREF; alpha: BYTE) {.cdecl,
    importc: "XShapeLine_SetColor", dynlib: xcgui, discardable.}

proc XSliderBar_Create*(x: cint; y: cint; cx: cint; cy: cint; hParent: HXCGUI = nil): HELE {.
    cdecl, importc: "XSliderBar_Create", dynlib: xcgui, discardable.}

proc XSliderBar_SetRange*(hEle: HELE; range: cint) {.cdecl,
    importc: "XSliderBar_SetRange", dynlib: xcgui, discardable.}

proc XSliderBar_GetRange*(hEle: HELE): cint {.cdecl, importc: "XSliderBar_GetRange",
    dynlib: xcgui, discardable.}

proc XSliderBar_SetButtonWidth*(hEle: HELE; width: cint) {.cdecl,
    importc: "XSliderBar_SetButtonWidth", dynlib: xcgui, discardable.}

proc XSliderBar_SetButtonHeight*(hEle: HELE; height: cint) {.cdecl,
    importc: "XSliderBar_SetButtonHeight", dynlib: xcgui, discardable.}

proc XSliderBar_SetSpaceTwo*(hEle: HELE; leftSize: cint; rightSize: cint) {.cdecl,
    importc: "XSliderBar_SetSpaceTwo", dynlib: xcgui, discardable.}

proc XSliderBar_SetPos*(hEle: HELE; pos: cint) {.cdecl, importc: "XSliderBar_SetPos",
    dynlib: xcgui, discardable.}

proc XSliderBar_GetPos*(hEle: HELE): cint {.cdecl, importc: "XSliderBar_GetPos",
                                        dynlib: xcgui, discardable.}

proc XSliderBar_GetButton*(hEle: HELE): HELE {.cdecl,
    importc: "XSliderBar_GetButton", dynlib: xcgui, discardable.}

proc XSliderBar_SetHorizon*(hEle: HELE; bHorizon: BOOL) {.cdecl,
    importc: "XSliderBar_SetHorizon", dynlib: xcgui, discardable.}

proc XSliderBar_SetImageLoad*(hEle: HELE; hImage: HIMAGE) {.cdecl,
    importc: "XSliderBar_SetImageLoad", dynlib: xcgui, discardable.}

proc XC_itoa*(nValue: cint): cstring {.cdecl, importc: "XC_itoa", dynlib: xcgui, discardable.}

proc XC_itow*(nValue: cint): ptr WCHAR {.cdecl, importc: "XC_itow", dynlib: xcgui, discardable.}

proc XC_ftoa*(fValue: cfloat): cstring {.cdecl, importc: "XC_ftoa", dynlib: xcgui, discardable.}

proc XC_ftow*(fValue: cfloat): ptr WCHAR {.cdecl, importc: "XC_ftow", dynlib: xcgui, discardable.}

proc XC_atow*(pValue: cstring): ptr WCHAR {.cdecl, importc: "XC_atow", dynlib: xcgui, discardable.}

proc XC_wtoa*(pValue: ptr WCHAR): cstring {.cdecl, importc: "XC_wtoa", dynlib: xcgui, discardable.}

proc XC_utf8tow*(pUtf8: cstring): ptr WCHAR {.cdecl, importc: "XC_utf8tow",
    dynlib: xcgui, discardable.}

proc XC_utf8towEx*(pUtf8: cstring; length: cint): ptr WCHAR {.cdecl,
    importc: "XC_utf8towEx", dynlib: xcgui, discardable.}

proc XC_utf8toa*(pUtf8: cstring): cstring {.cdecl, importc: "XC_utf8toa", dynlib: xcgui, discardable.}

proc XC_atoutf8*(pValue: cstring): cstring {.cdecl, importc: "XC_atoutf8",
    dynlib: xcgui, discardable.}

proc XC_wtoutf8*(pValue: ptr WCHAR): cstring {.cdecl, importc: "XC_wtoutf8",
    dynlib: xcgui, discardable.}

proc XC_wtoutf8Ex*(pValue: ptr WCHAR; length: cint): cstring {.cdecl,
    importc: "XC_wtoutf8Ex", dynlib: xcgui, discardable.}

proc XTabBar_Create*(x: cint; y: cint; cx: cint; cy: cint; hParent: HXCGUI = nil): HELE {.
    cdecl, importc: "XTabBar_Create", dynlib: xcgui, discardable.}

proc XTabBar_AddLabel*(hEle: HELE; pName: ptr WCHAR): cint {.cdecl,
    importc: "XTabBar_AddLabel", dynlib: xcgui, discardable.}
## 添加一个标签


proc XTabBar_InsertLabel*(hEle: HELE; index: cint; pName: ptr WCHAR): cint {.cdecl,
    importc: "XTabBar_InsertLabel", dynlib: xcgui, discardable.}

proc XTabBar_DeleteLabel*(hEle: HELE; index: cint): BOOL {.cdecl,
    importc: "XTabBar_DeleteLabel", dynlib: xcgui, discardable.}
## 删除


proc XTabBar_DeleteLabelAll*(hEle: HELE) {.cdecl, importc: "XTabBar_DeleteLabelAll",
                                        dynlib: xcgui, discardable.}
## 删除所有TAB


proc XTabBar_GetLabel*(hEle: HELE; index: cint): HELE {.cdecl,
    importc: "XTabBar_GetLabel", dynlib: xcgui, discardable.}
## 获取标签按钮Button


proc XTabBar_GetLabelClose*(hEle: HELE; index: cint): HELE {.cdecl,
    importc: "XTabBar_GetLabelClose", dynlib: xcgui, discardable.}

proc XTabBar_GetButtonLeft*(hEle: HELE): HELE {.cdecl,
    importc: "XTabBar_GetButtonLeft", dynlib: xcgui, discardable.}

proc XTabBar_GetButtonRight*(hEle: HELE): HELE {.cdecl,
    importc: "XTabBar_GetButtonRight", dynlib: xcgui, discardable.}

proc XTabBar_GetSelect*(hEle: HELE): cint {.cdecl, importc: "XTabBar_GetSelect",
                                        dynlib: xcgui, discardable.}
## 获取选择的标签


proc XTabBar_GetLabelSpacing*(hEle: HELE): cint {.cdecl,
    importc: "XTabBar_GetLabelSpacing", dynlib: xcgui, discardable.}
## 获取标签间距, 0没有间距


proc XTabBar_GetLabelCount*(hEle: HELE): cint {.cdecl,
    importc: "XTabBar_GetLabelCount", dynlib: xcgui, discardable.}
## 获取标签项数量


proc XTabBar_GetindexByEle*(hEle: HELE; hLabel: HELE): cint {.cdecl,
    importc: "XTabBar_GetindexByEle", dynlib: xcgui, discardable.}

proc XTabBar_SetLabelSpacing*(hEle: HELE; spacing: cint) {.cdecl,
    importc: "XTabBar_SetLabelSpacing", dynlib: xcgui, discardable.}
## 设置标签间距, 0没有间距


proc XTabBar_SetPadding*(hEle: HELE; left: cint; top: cint; right: cint; bottom: cint) {.
    cdecl, importc: "XTabBar_SetPadding", dynlib: xcgui, discardable.}

proc XTabBar_SetSelect*(hEle: HELE; index: cint) {.cdecl,
    importc: "XTabBar_SetSelect", dynlib: xcgui, discardable.}
## 设置选择标签


proc XTabBar_SetUp*(hEle: HELE) {.cdecl, importc: "XTabBar_SetUp", dynlib: xcgui, discardable.}
## 左滚动


proc XTabBar_SetDown*(hEle: HELE) {.cdecl, importc: "XTabBar_SetDown", dynlib: xcgui, discardable.}
## 右滚动


proc XTabBar_EnableTile*(hEle: HELE; bTile: BOOL) {.cdecl,
    importc: "XTabBar_EnableTile", dynlib: xcgui, discardable.}
## 平铺标签,每个标签显示相同大小


proc XTabBar_EnableClose*(hEle: HELE; bEnable: BOOL) {.cdecl,
    importc: "XTabBar_EnableClose", dynlib: xcgui, discardable.}

proc XTabBar_SetCloseSize*(hEle: HELE; pSize: ptr SIZE) {.cdecl,
    importc: "XTabBar_SetCloseSize", dynlib: xcgui, discardable.}

proc XTabBar_SetTurnButtonSize*(hEle: HELE; pSize: ptr SIZE) {.cdecl,
    importc: "XTabBar_SetTurnButtonSize", dynlib: xcgui, discardable.}

proc XTabBar_SetLabelWidth*(hEle: HELE; index: cint; nWidth: cint) {.cdecl,
    importc: "XTabBar_SetLabelWidth", dynlib: xcgui, discardable.}

proc XTabBar_ShowLabel*(hEle: HELE; index: cint; bShow: BOOL): BOOL {.cdecl,
    importc: "XTabBar_ShowLabel", dynlib: xcgui, discardable.}
## 显示或隐藏指定项


proc XTextLink_Create*(x: cint; y: cint; cx: cint; cy: cint; pName: ptr WCHAR;
                      hParent: HXCGUI = nil): HELE {.cdecl,
    importc: "XTextLink_Create", dynlib: xcgui, discardable.}

proc XTextLink_EnableUnderlineLeave*(hEle: HELE; bEnable: BOOL) {.cdecl,
    importc: "XTextLink_EnableUnderlineLeave", dynlib: xcgui, discardable.}

proc XTextLink_EnableUnderlineStay*(hEle: HELE; bEnable: BOOL) {.cdecl,
    importc: "XTextLink_EnableUnderlineStay", dynlib: xcgui, discardable.}

proc XTextLink_SetTextColorStay*(hEle: HELE; color: COLORREF; alpha: BYTE) {.cdecl,
    importc: "XTextLink_SetTextColorStay", dynlib: xcgui, discardable.}

proc XTextLink_SetUnderlineColorLeave*(hEle: HELE; color: COLORREF; alpha: BYTE) {.
    cdecl, importc: "XTextLink_SetUnderlineColorLeave", dynlib: xcgui, discardable.}

proc XTextLink_SetUnderlineColorStay*(hEle: HELE; color: COLORREF; alpha: BYTE) {.
    cdecl, importc: "XTextLink_SetUnderlineColorStay", dynlib: xcgui, discardable.}

proc XToolBar_Create*(x: cint; y: cint; cx: cint; cy: cint; hParent: HXCGUI = nil): HELE {.
    cdecl, importc: "XToolBar_Create", dynlib: xcgui, discardable.}

proc XToolBar_InsertEle*(hEle: HELE; hNewEle: HELE; index: cint = -1): cint {.cdecl,
    importc: "XToolBar_InsertEle", dynlib: xcgui, discardable.}
## 添加元素到工具条, -1插入到末尾


proc XToolBar_InsertSeparator*(hEle: HELE; index: cint = -1;
                              color: COLORREF = RGB(128, 128, 128)): cint {.cdecl,
    importc: "XToolBar_InsertSeparator", dynlib: xcgui, discardable.}
## 添加分隔符, -1插入到末尾


proc XToolBar_EnableButtonMenu*(hEle: HELE; bEnable: BOOL) {.cdecl,
    importc: "XToolBar_EnableButtonMenu", dynlib: xcgui, discardable.}
## 显示隐藏项菜单按钮


proc XToolBar_GetEle*(hEle: HELE; index: cint): HELE {.cdecl,
    importc: "XToolBar_GetEle", dynlib: xcgui, discardable.}
## 获取工具条上元素句柄


proc XToolBar_GetButtonLeft*(hEle: HELE): HELE {.cdecl,
    importc: "XToolBar_GetButtonLeft", dynlib: xcgui, discardable.}
## 获取工具条左滚动按钮Button


proc XToolBar_GetButtonRight*(hEle: HELE): HELE {.cdecl,
    importc: "XToolBar_GetButtonRight", dynlib: xcgui, discardable.}
## 获取工具条右滚动按钮Button


proc XToolBar_GetButtonMenu*(hEle: HELE): HELE {.cdecl,
    importc: "XToolBar_GetButtonMenu", dynlib: xcgui, discardable.}
## 获取弹出菜单按钮


proc XToolBar_SetSpace*(hEle: HELE; nSize: cint) {.cdecl,
    importc: "XToolBar_SetSpace", dynlib: xcgui, discardable.}

proc XToolBar_DeleteEle*(hEle: HELE; index: cint) {.cdecl,
    importc: "XToolBar_DeleteEle", dynlib: xcgui, discardable.}
## 移除工具条上元素并销毁


proc XToolBar_DeleteAllEle*(hEle: HELE) {.cdecl, importc: "XToolBar_DeleteAllEle",
                                       dynlib: xcgui, discardable.}

proc XTree_Create*(x: cint; y: cint; cx: cint; cy: cint; hParent: HXCGUI = nil): HELE {.cdecl,
    importc: "XTree_Create", dynlib: xcgui, discardable.}

proc XTree_EnableDragItem*(hEle: HELE; bEnable: BOOL) {.cdecl,
    importc: "XTree_EnableDragItem", dynlib: xcgui, discardable.}

proc XTree_EnableConnectLine*(hEle: HELE; bEnable: BOOL; bSolid: BOOL) {.cdecl,
    importc: "XTree_EnableConnectLine", dynlib: xcgui, discardable.}

proc XTree_EnableExpand*(hEle: HELE; bEnable: BOOL) {.cdecl,
    importc: "XTree_EnableExpand", dynlib: xcgui, discardable.}

proc XTree_SetConnectLineColor*(hEle: HELE; color: COLORREF; alpha: BYTE) {.cdecl,
    importc: "XTree_SetConnectLineColor", dynlib: xcgui, discardable.}

proc XTree_SetExpandButtonSize*(hEle: HELE; nWidth: cint; nHeight: cint) {.cdecl,
    importc: "XTree_SetExpandButtonSize", dynlib: xcgui, discardable.}

proc XTree_SetConnectLineLength*(hEle: HELE; nLength: cint) {.cdecl,
    importc: "XTree_SetConnectLineLength", dynlib: xcgui, discardable.}

proc XTree_SetDragInsertPositionColor*(hEle: HELE; color: COLORREF; alpha: BYTE) {.
    cdecl, importc: "XTree_SetDragInsertPositionColor", dynlib: xcgui, discardable.}

proc XTree_SetItemTemplateXML*(hEle: HELE; pXmlFile: ptr WCHAR): BOOL {.cdecl,
    importc: "XTree_SetItemTemplateXML", dynlib: xcgui, discardable.}

proc XTree_SetItemTemplateXMLSel*(hEle: HELE; pXmlFile: ptr WCHAR): BOOL {.cdecl,
    importc: "XTree_SetItemTemplateXMLSel", dynlib: xcgui, discardable.}

proc XTree_SetItemTemplate*(hEle: HELE; hTemp: HTEMP): BOOL {.cdecl,
    importc: "XTree_SetItemTemplate", dynlib: xcgui, discardable.}

proc XTree_SetItemTemplateSel*(hEle: HELE; hTemp: HTEMP): BOOL {.cdecl,
    importc: "XTree_SetItemTemplateSel", dynlib: xcgui, discardable.}

proc XTree_SetItemTemplateXMLFromString*(hEle: HELE; pStringXML: cstring): BOOL {.
    cdecl, importc: "XTree_SetItemTemplateXMLFromString", dynlib: xcgui, discardable.}

proc XTree_SetItemTemplateXMLSelFromString*(hEle: HELE; pStringXML: cstring): BOOL {.
    cdecl, importc: "XTree_SetItemTemplateXMLSelFromString", dynlib: xcgui, discardable.}

proc XTree_SetDrawItemBkFlags*(hEle: HELE; nFlags: cint) {.cdecl,
    importc: "XTree_SetDrawItemBkFlags", dynlib: xcgui, discardable.}

proc XTree_SetItemData*(hEle: HELE; nID: cint; nUserData: cint): BOOL {.cdecl,
    importc: "XTree_SetItemData", dynlib: xcgui, discardable.}

proc XTree_GetItemData*(hEle: HELE; nID: cint): cint {.cdecl,
    importc: "XTree_GetItemData", dynlib: xcgui, discardable.}

proc XTree_SetSelectItem*(hEle: HELE; nID: cint): BOOL {.cdecl,
    importc: "XTree_SetSelectItem", dynlib: xcgui, discardable.}

proc XTree_GetSelectItem*(hEle: HELE): cint {.cdecl, importc: "XTree_GetSelectItem",
    dynlib: xcgui, discardable.}

proc XTree_VisibleItem*(hEle: HELE; nID: cint) {.cdecl, importc: "XTree_VisibleItem",
    dynlib: xcgui, discardable.}

proc XTree_IsExpand*(hEle: HELE; nID: cint): BOOL {.cdecl, importc: "XTree_IsExpand",
    dynlib: xcgui, discardable.}

proc XTree_ExpandItem*(hEle: HELE; nID: cint; bExpand: BOOL): BOOL {.cdecl,
    importc: "XTree_ExpandItem", dynlib: xcgui, discardable.}

proc XTree_ExpandAllChildItem*(hEle: HELE; nID: cint; bExpand: BOOL): BOOL {.cdecl,
    importc: "XTree_ExpandAllChildItem", dynlib: xcgui, discardable.}

proc XTree_HitTest*(hEle: HELE; pPt: ptr POINT): cint {.cdecl, importc: "XTree_HitTest",
    dynlib: xcgui, discardable.}

proc XTree_HitTestOffset*(hEle: HELE; pPt: ptr POINT): cint {.cdecl,
    importc: "XTree_HitTestOffset", dynlib: xcgui, discardable.}

proc XTree_GetFirstChildItem*(hEle: HELE; nID: cint): cint {.cdecl,
    importc: "XTree_GetFirstChildItem", dynlib: xcgui, discardable.}

proc XTree_GetEndChildItem*(hEle: HELE; nID: cint): cint {.cdecl,
    importc: "XTree_GetEndChildItem", dynlib: xcgui, discardable.}

proc XTree_GetPrevSiblingItem*(hEle: HELE; nID: cint): cint {.cdecl,
    importc: "XTree_GetPrevSiblingItem", dynlib: xcgui, discardable.}

proc XTree_GetNextSiblingItem*(hEle: HELE; nID: cint): cint {.cdecl,
    importc: "XTree_GetNextSiblingItem", dynlib: xcgui, discardable.}

proc XTree_GetParentItem*(hEle: HELE; nID: cint): cint {.cdecl,
    importc: "XTree_GetParentItem", dynlib: xcgui, discardable.}

proc XTree_SetIndentation*(hEle: HELE; nWidth: cint) {.cdecl,
    importc: "XTree_SetIndentation", dynlib: xcgui, discardable.}

proc XTree_GetIndentation*(hEle: HELE): cint {.cdecl,
    importc: "XTree_GetIndentation", dynlib: xcgui, discardable.}

proc XTree_SetItemHeight*(hEle: HELE; nID: cint; nHeight: cint; nSelHeight: cint) {.
    cdecl, importc: "XTree_SetItemHeight", dynlib: xcgui, discardable.}

proc XTree_GetItemHeight*(hEle: HELE; nID: cint; pHeight: ptr cint; pSelHeight: ptr cint) {.
    cdecl, importc: "XTree_GetItemHeight", dynlib: xcgui, discardable.}

proc XTree_SetRowSpace*(hEle: HELE; nSpace: cint) {.cdecl,
    importc: "XTree_SetRowSpace", dynlib: xcgui, discardable.}

proc XTree_GetRowSpace*(hEle: HELE): cint {.cdecl, importc: "XTree_GetRowSpace",
                                        dynlib: xcgui, discardable.}

proc XTree_MoveItem*(hEle: HELE; nMoveItem: cint; nDestItem: cint; nType: cint): BOOL {.
    cdecl, importc: "XTree_MoveItem", dynlib: xcgui, discardable.}

proc XTree_AddItemBkBorder*(hEle: HELE; nState: tree_item_state; color: COLORREF;
                           alpha: BYTE; width: cint) {.cdecl,
    importc: "XTree_AddItemBkBorder", dynlib: xcgui, discardable.}

proc XTree_AddItemBkFill*(hEle: HELE; nState: tree_item_state; color: COLORREF;
                         alpha: BYTE) {.cdecl, importc: "XTree_AddItemBkFill",
                                      dynlib: xcgui, discardable.}

proc XTree_AddItemBkImage*(hEle: HELE; nState: tree_item_state; hImage: HIMAGE) {.
    cdecl, importc: "XTree_AddItemBkImage", dynlib: xcgui, discardable.}

proc XTree_GetItemBkInfoCount*(hEle: HELE): cint {.cdecl,
    importc: "XTree_GetItemBkInfoCount", dynlib: xcgui, discardable.}

proc XTree_ClearItemBkInfo*(hEle: HELE) {.cdecl, importc: "XTree_ClearItemBkInfo",
                                       dynlib: xcgui, discardable.}

proc XTree_SetItemHeightDefault*(hEle: HELE; nHeight: cint; nSelHeight: cint) {.cdecl,
    importc: "XTree_SetItemHeightDefault", dynlib: xcgui, discardable.}

proc XTree_GetItemHeightDefault*(hEle: HELE; pHeight: ptr cint; pSelHeight: ptr cint) {.
    cdecl, importc: "XTree_GetItemHeightDefault", dynlib: xcgui, discardable.}

proc XTree_GetTemplateObject*(hEle: HELE; nID: cint; nTempItemID: cint): HXCGUI {.cdecl,
    importc: "XTree_GetTemplateObject", dynlib: xcgui, discardable.}
## 通过模板项ID,获取实例化模板项ID对应的对象.


proc XTree_GetItemIDFromHXCGUI*(hEle: HELE; hXCGUI: HXCGUI): cint {.cdecl,
    importc: "XTree_GetItemIDFromHXCGUI", dynlib: xcgui, discardable.}

proc XTree_CreateAdapter*(hEle: HELE): HXCGUI {.cdecl,
    importc: "XTree_CreateAdapter", dynlib: xcgui, discardable.}

proc XTree_BindAdapter*(hEle: HELE; hAdapter: HXCGUI) {.cdecl,
    importc: "XTree_BindAdapter", dynlib: xcgui, discardable.}

proc XTree_GetAdapter*(hEle: HELE): HXCGUI {.cdecl, importc: "XTree_GetAdapter",
    dynlib: xcgui, discardable.}

proc XTree_RefreshData*(hEle: HELE) {.cdecl, importc: "XTree_RefreshData",
                                   dynlib: xcgui, discardable.}

proc XTree_RefreshItem*(hEle: HELE; nID: cint) {.cdecl, importc: "XTree_RefreshItem",
    dynlib: xcgui, discardable.}

proc XTree_InsertItemText*(hEle: HELE; pValue: ptr WCHAR;
                          nParentID: cint = XC_ID_ROOT; insertID: cint = XC_ID_LAST): cint {.
    cdecl, importc: "XTree_InsertItemText", dynlib: xcgui, discardable.}

proc XTree_InsertItemTextEx*(hEle: HELE; pName: ptr WCHAR; pValue: ptr WCHAR;
                            nParentID: cint = XC_ID_ROOT;
                            insertID: cint = XC_ID_LAST): cint {.cdecl,
    importc: "XTree_InsertItemTextEx", dynlib: xcgui, discardable.}

proc XTree_InsertItemImage*(hEle: HELE; hImage: HIMAGE; nParentID: cint = XC_ID_ROOT;
                           insertID: cint = XC_ID_LAST): cint {.cdecl,
    importc: "XTree_InsertItemImage", dynlib: xcgui, discardable.}

proc XTree_InsertItemImageEx*(hEle: HELE; pName: ptr WCHAR; hImage: HIMAGE;
                             nParentID: cint = XC_ID_ROOT;
                             insertID: cint = XC_ID_LAST): cint {.cdecl,
    importc: "XTree_InsertItemImageEx", dynlib: xcgui, discardable.}

proc XTree_GetCount*(hEle: HELE): cint {.cdecl, importc: "XTree_GetCount",
                                     dynlib: xcgui, discardable.}

proc XTree_GetCountColumn*(hEle: HELE): cint {.cdecl,
    importc: "XTree_GetCountColumn", dynlib: xcgui, discardable.}

proc XTree_SetItemText*(hEle: HELE; nID: cint; iColumn: cint; pValue: ptr WCHAR): BOOL {.
    cdecl, importc: "XTree_SetItemText", dynlib: xcgui, discardable.}

proc XTree_SetItemTextEx*(hEle: HELE; nID: cint; pName: ptr WCHAR; pValue: ptr WCHAR): BOOL {.
    cdecl, importc: "XTree_SetItemTextEx", dynlib: xcgui, discardable.}

proc XTree_SetItemImage*(hEle: HELE; nID: cint; iColumn: cint; hImage: HIMAGE): BOOL {.
    cdecl, importc: "XTree_SetItemImage", dynlib: xcgui, discardable.}

proc XTree_SetItemImageEx*(hEle: HELE; nID: cint; pName: ptr WCHAR; hImage: HIMAGE): BOOL {.
    cdecl, importc: "XTree_SetItemImageEx", dynlib: xcgui, discardable.}

proc XTree_GetItemText*(hEle: HELE; nID: cint; iColumn: cint; pOut: ptr WCHAR;
                       nOutLen: cint): BOOL {.cdecl, importc: "XTree_GetItemText",
    dynlib: xcgui, discardable.}

proc XTree_GetItemImage*(hEle: HELE; nID: cint; iColumn: cint): HIMAGE {.cdecl,
    importc: "XTree_GetItemImage", dynlib: xcgui, discardable.}

proc XTree_GetItemTextEx*(hEle: HELE; nID: cint; pName: ptr WCHAR; pOut: ptr WCHAR;
                         nOutLen: cint): BOOL {.cdecl,
    importc: "XTree_GetItemTextEx", dynlib: xcgui, discardable.}

proc XTree_GetItemImageEx*(hEle: HELE; nID: cint; pName: ptr WCHAR): HIMAGE {.cdecl,
    importc: "XTree_GetItemImageEx", dynlib: xcgui, discardable.}

proc XTree_DeleteItem*(hEle: HELE; nID: cint): BOOL {.cdecl,
    importc: "XTree_DeleteItem", dynlib: xcgui, discardable.}

proc XTree_DeleteItemAll*(hEle: HELE) {.cdecl, importc: "XTree_DeleteItemAll",
                                     dynlib: xcgui, discardable.}

proc XTree_DeleteColumnAll*(hEle: HELE) {.cdecl, importc: "XTree_DeleteColumnAll",
                                       dynlib: xcgui, discardable.}

#~ proc XWnd_RegEvent*(hWindow: HWINDOW; nEvent: UINT; pEvent: ptr xc_event): BOOL {.cdecl,
    #~ importc: "_XWnd_RegEvent", dynlib: xcgui, discardable.}

#~ proc XWnd_RemoveEvent*(hWindow: HWINDOW; nEvent: UINT; pEvent: ptr xc_event): BOOL {.
    #~ cdecl, importc: "_XWnd_RemoveEvent", dynlib: xcgui, discardable.}

proc XWnd_RegEventC*(hWindow: HWINDOW; nEvent: cint; pFun: pointer): BOOL {.cdecl,
    importc: "XWnd_RegEventC", dynlib: xcgui, discardable.}

proc XWnd_RegEventC1*(hWindow: HWINDOW; nEvent: cint; pFun: pointer): BOOL {.cdecl,
    importc: "XWnd_RegEventC1", dynlib: xcgui, discardable.}

proc XWnd_RemoveEventC*(hWindow: HWINDOW; nEvent: cint; pFun: pointer): BOOL {.cdecl,
    importc: "XWnd_RemoveEventC", dynlib: xcgui, discardable.}

proc XWnd_Create*(x: cint; y: cint; cx: cint; cy: cint; pTitle: ptr WCHAR;
                 #~ hWndParent: HWND = 0; XCStyle: cint = cint(xc_window_style_default)): HWINDOW {.
                 hWndParent: HWND = 0; XCStyle: int = int(xc_window_style_default)): HWINDOW {.
    cdecl, importc: "XWnd_Create", dynlib: xcgui, discardable.}

proc XWnd_CreateEx*(dwExStyle: DWORD; lpClassName: ptr WCHAR;
                   lpWindowName: ptr WCHAR; dwStyle: DWORD; x: cint; y: cint; cx: cint;
                   cy: cint; hWndParent: HWND = 0;
                   #~ XCStyle: xc_window_style = xc_window_style_default): HWINDOW {.cdecl,
                   ): HWINDOW {.cdecl,
    importc: "XWnd_CreateEx", dynlib: xcgui, discardable.}

proc XWnd_AddChild*(hWindow: HWINDOW; hChild: HXCGUI): BOOL {.cdecl,
    importc: "XWnd_AddChild", dynlib: xcgui, discardable.}

proc XWnd_InsertChild*(hWindow: HWINDOW; hChild: HXCGUI; index: cint): BOOL {.cdecl,
    importc: "XWnd_InsertChild", dynlib: xcgui, discardable.}

proc XWnd_GetHWND*(hWindow: HWINDOW): HWND {.cdecl, importc: "XWnd_GetHWND",
    dynlib: xcgui, discardable.}

proc XWnd_EnableDragBorder*(hWindow: HWINDOW; bEnable: BOOL) {.cdecl,
    importc: "XWnd_EnableDragBorder", dynlib: xcgui, discardable.}

proc XWnd_EnableDragWindow*(hWindow: HWINDOW; bEnable: BOOL) {.cdecl,
    importc: "XWnd_EnableDragWindow", dynlib: xcgui, discardable.}

proc XWnd_EnableDragCaption*(hWindow: HWINDOW; bEnable: BOOL) {.cdecl,
    importc: "XWnd_EnableDragCaption", dynlib: xcgui, discardable.}

proc XWnd_EnableDrawBk*(hWindow: HWINDOW; bEnable: BOOL) {.cdecl,
    importc: "XWnd_EnableDrawBk", dynlib: xcgui, discardable.}

proc XWnd_EnableAutoFocus*(hWindow: HWINDOW; bEnable: BOOL) {.cdecl,
    importc: "XWnd_EnableAutoFocus", dynlib: xcgui, discardable.}
## 当鼠标左键按下是否获得焦点


proc XWnd_EnableMaxWindow*(hWindow: HWINDOW; bEnable: BOOL) {.cdecl,
    importc: "XWnd_EnableMaxWindow", dynlib: xcgui, discardable.}

proc XWnd_EnableLayout*(hWindow: HWINDOW; bEnable: BOOL) {.cdecl,
    importc: "XWnd_EnableLayout", dynlib: xcgui, discardable.}

proc XWnd_ShowLayoutFrame*(hWindow: HWINDOW; bEnable: BOOL) {.cdecl,
    importc: "XWnd_ShowLayoutFrame", dynlib: xcgui, discardable.}

proc XWnd_IsEnableLayout*(hWindow: HWINDOW): BOOL {.cdecl,
    importc: "XWnd_IsEnableLayout", dynlib: xcgui, discardable.}

proc XWnd_RedrawWnd*(hWindow: HWINDOW; bImmediate: BOOL = FALSE) {.cdecl,
    importc: "XWnd_RedrawWnd", dynlib: xcgui, discardable.}

proc XWnd_RedrawWndRect*(hWindow: HWINDOW; pRect: ptr RECT; bImmediate: BOOL = FALSE) {.
    cdecl, importc: "XWnd_RedrawWndRect", dynlib: xcgui, discardable.}
## 重绘窗口指定区域


proc XWnd_SetFocusEle*(hWindow: HWINDOW; hFocusEle: HELE) {.cdecl,
    importc: "XWnd_SetFocusEle", dynlib: xcgui, discardable.}

proc XWnd_GetFocusEle*(hWindow: HWINDOW): HELE {.cdecl, importc: "XWnd_GetFocusEle",
    dynlib: xcgui, discardable.}

proc XWnd_GetStayHELE*(hWindow: HWINDOW): HELE {.cdecl, importc: "XWnd_GetStayHELE",
    dynlib: xcgui, discardable.}
## 获取当前鼠标所停留元素


proc XWnd_DrawWindow*(hWindow: HWINDOW; hDraw: HDRAW) {.cdecl,
    importc: "XWnd_DrawWindow", dynlib: xcgui, discardable.}

proc XWnd_Center*(hWindow: HWINDOW) {.cdecl, importc: "XWnd_Center", dynlib: xcgui, discardable.}

proc XWnd_CenterEx*(hWindow: HWINDOW; width: cint; height: cint) {.cdecl,
    importc: "XWnd_CenterEx", dynlib: xcgui, discardable.}

proc XWnd_SetCursor*(hWindow: HWINDOW; hCursor: HCURSOR) {.cdecl,
    importc: "XWnd_SetCursor", dynlib: xcgui, discardable.}

proc XWnd_GetCursor*(hWindow: HWINDOW): HCURSOR {.cdecl, importc: "XWnd_GetCursor",
    dynlib: xcgui, discardable.}

proc XWnd_SetCursorSys*(hWindow: HWINDOW; hCursor: HCURSOR): HCURSOR {.cdecl,
    importc: "XWnd_SetCursorSys", dynlib: xcgui, discardable.}

proc XWnd_SetFont*(hWindow: HWINDOW; hFontx: HFONTX) {.cdecl, importc: "XWnd_SetFont",
    dynlib: xcgui, discardable.}

proc XWnd_SetTextColor*(hWindow: HWINDOW; color: COLORREF; alpha: BYTE) {.cdecl,
    importc: "XWnd_SetTextColor", dynlib: xcgui, discardable.}

proc XWnd_GetTextColor*(hWindow: HWINDOW): COLORREF {.cdecl,
    importc: "XWnd_GetTextColor", dynlib: xcgui, discardable.}

proc XWnd_GetTextColorEx*(hWindow: HWINDOW): COLORREF {.cdecl,
    importc: "XWnd_GetTextColorEx", dynlib: xcgui, discardable.}

proc XWnd_SetID*(hWindow: HWINDOW; nID: cint) {.cdecl, importc: "XWnd_SetID",
    dynlib: xcgui, discardable.}

proc XWnd_GetID*(hWindow: HWINDOW): cint {.cdecl, importc: "XWnd_GetID", dynlib: xcgui, discardable.}

proc XWnd_SetCaptureEle*(hWindow: HWINDOW; hEle: HELE) {.cdecl,
    importc: "XWnd_SetCaptureEle", dynlib: xcgui, discardable.}

proc XWnd_GetCaptureEle*(hWindow: HWINDOW): HELE {.cdecl,
    importc: "XWnd_GetCaptureEle", dynlib: xcgui, discardable.}

proc XWnd_BindLayoutEle*(hWindow: HWINDOW; nPosition: window_position; hEle: HELE): BOOL {.
    cdecl, importc: "XWnd_BindLayoutEle", dynlib: xcgui, discardable.}

proc XWnd_GetLayoutEle*(hWindow: HWINDOW; nPosition: window_position): HELE {.cdecl,
    importc: "XWnd_GetLayoutEle", dynlib: xcgui, discardable.}

proc XWnd_SetLayoutSize*(hWindow: HWINDOW; left: cint; top: cint; right: cint;
                        bottom: cint) {.cdecl, importc: "XWnd_SetLayoutSize",
                                      dynlib: xcgui, discardable.}

proc XWnd_GetLayoutSize*(hWindow: HWINDOW; pBorderSize: ptr BorderSize_i) {.cdecl,
    importc: "XWnd_GetLayoutSize", dynlib: xcgui, discardable.}

proc XWnd_SetLayoutHorizon*(hWindow: HWINDOW; bHorizon: BOOL) {.cdecl,
    importc: "XWnd_SetLayoutHorizon", dynlib: xcgui, discardable.}

proc XWnd_SetLayoutAlignH*(hWindow: HWINDOW; nAlign: layout_align) {.cdecl,
    importc: "XWnd_SetLayoutAlignH", dynlib: xcgui, discardable.}

proc XWnd_SetLayoutAlignV*(hWindow: HWINDOW; nAlign: layout_align) {.cdecl,
    importc: "XWnd_SetLayoutAlignV", dynlib: xcgui, discardable.}

proc XWnd_SetLayoutSpace*(hWindow: HWINDOW; nSpace: cint) {.cdecl,
    importc: "XWnd_SetLayoutSpace", dynlib: xcgui, discardable.}

proc XWnd_SetLayoutPadding*(hWindow: HWINDOW; left: cint; top: cint; right: cint;
                           bottom: cint) {.cdecl, importc: "XWnd_SetLayoutPadding",
    dynlib: xcgui, discardable.}

proc XWnd_SetDragBorderSize*(hWindow: HWINDOW; left: cint; top: cint; right: cint;
                            bottom: cint) {.cdecl,
    importc: "XWnd_SetDragBorderSize", dynlib: xcgui, discardable.}
## 设置拖动边框大小


proc XWnd_GetDragBorderSize*(hWindow: HWINDOW; pSize: ptr BorderSize_i) {.cdecl,
    importc: "XWnd_GetDragBorderSize", dynlib: xcgui, discardable.}

proc XWnd_SetMinimumSize*(hWindow: HWINDOW; width: cint; height: cint) {.cdecl,
    importc: "XWnd_SetMinimumSize", dynlib: xcgui, discardable.}

proc XWnd_HitChildEle*(hWindow: HWINDOW; pPt: ptr POINT): HELE {.cdecl,
    importc: "XWnd_HitChildEle", dynlib: xcgui, discardable.}

proc XWnd_GetChildCount*(hWindow: HWINDOW): cint {.cdecl,
    importc: "XWnd_GetChildCount", dynlib: xcgui, discardable.}

proc XWnd_GetChildByIndex*(hWindow: HWINDOW; index: cint): HXCGUI {.cdecl,
    importc: "XWnd_GetChildByIndex", dynlib: xcgui, discardable.}

proc XWnd_GetChildByID*(hWindow: HWINDOW; nID: cint): HXCGUI {.cdecl,
    importc: "XWnd_GetChildByID", dynlib: xcgui, discardable.}

proc XWnd_GetChild*(hWindow: HWINDOW; nID: cint): HXCGUI {.cdecl,
    importc: "XWnd_GetChild", dynlib: xcgui, discardable.}

proc XWnd_GetDrawRect*(hWindow: HWINDOW; pRcPaint: ptr RECT) {.cdecl,
    importc: "XWnd_GetDrawRect", dynlib: xcgui, discardable.}

proc XWnd_ShowWindow*(hWindow: HWINDOW; nCmdShow: cint): BOOL {.cdecl,
    importc: "XWnd_ShowWindow", dynlib: xcgui, discardable.}

proc XWnd_AdjustLayout*(hWindow: HWINDOW) {.cdecl, importc: "XWnd_AdjustLayout",
    dynlib: xcgui, discardable.}

proc XWnd_AdjustLayoutEx*(hWindow: HWINDOW; nFlags: cint = cint(xc_adjustLayout_self)) {.
    cdecl, importc: "XWnd_AdjustLayoutEx", dynlib: xcgui, discardable.}

proc XWnd_CloseWindow*(hWindow: HWINDOW) {.cdecl, importc: "XWnd_CloseWindow",
                                        dynlib: xcgui, discardable.}

proc XWnd_CreateCaret*(hWindow: HWINDOW; hEle: HELE; x: cint; y: cint; width: cint;
                      height: cint) {.cdecl, importc: "XWnd_CreateCaret",
                                    dynlib: xcgui, discardable.}
## 创建插入符


proc XWnd_SetCaretSize*(hWindow: HWINDOW; width: cint; height: cint) {.cdecl,
    importc: "XWnd_SetCaretSize", dynlib: xcgui, discardable.}
## 设置插入符大小


proc XWnd_SetCaretPos*(hWindow: HWINDOW; x: cint; y: cint) {.cdecl,
    importc: "XWnd_SetCaretPos", dynlib: xcgui, discardable.}
## 设置插入符位置


proc XWnd_SetCaretPosEx*(hWindow: HWINDOW; x: cint; y: cint; width: cint; height: cint) {.
    cdecl, importc: "XWnd_SetCaretPosEx", dynlib: xcgui, discardable.}
## 设置插入符位置


proc XWnd_SetCaretColor*(hWindow: HWINDOW; color: COLORREF) {.cdecl,
    importc: "XWnd_SetCaretColor", dynlib: xcgui, discardable.}
## 设置插入符颜色


proc XWnd_ShowCaret*(hWindow: HWINDOW; bShow: BOOL) {.cdecl,
    importc: "XWnd_ShowCaret", dynlib: xcgui, discardable.}
## 显示插入符


proc XWnd_DestroyCaret*(hWindow: HWINDOW) {.cdecl, importc: "XWnd_DestroyCaret",
    dynlib: xcgui, discardable.}
## 销毁插入符


proc XWnd_GetCaretHELE*(hWindow: HWINDOW): HELE {.cdecl,
    importc: "XWnd_GetCaretHELE", dynlib: xcgui, discardable.}

proc XWnd_GetClientRect*(hWindow: HWINDOW; pRect: ptr RECT): BOOL {.cdecl,
    importc: "XWnd_GetClientRect", dynlib: xcgui, discardable.}
## 获取客户区坐标


proc XWnd_GetBodyRect*(hWindow: HWINDOW; pRect: ptr RECT) {.cdecl,
    importc: "XWnd_GetBodyRect", dynlib: xcgui, discardable.}
## 获取窗口body坐标


proc XWnd_SetTimer*(hWindow: HWINDOW; nIDEvent: UINT; uElapse: UINT): UINT {.cdecl,
    importc: "XWnd_SetTimer", dynlib: xcgui, discardable.}
## 设置定时器


proc XWnd_KillTimer*(hWindow: HWINDOW; nIDEvent: UINT): BOOL {.cdecl,
    importc: "XWnd_KillTimer", dynlib: xcgui, discardable.}

proc XWnd_SetXCTimer*(hWindow: HWINDOW; nIDEvent: UINT; uElapse: UINT): BOOL {.cdecl,
    importc: "XWnd_SetXCTimer", dynlib: xcgui, discardable.}
## 设置定时器


proc XWnd_KillXCTimer*(hWindow: HWINDOW; nIDEvent: UINT): BOOL {.cdecl,
    importc: "XWnd_KillXCTimer", dynlib: xcgui, discardable.}

proc XWnd_GetBkManager*(hWindow: HWINDOW): HBKM {.cdecl,
    importc: "XWnd_GetBkManager", dynlib: xcgui, discardable.}

proc XWnd_GetBkManagerEx*(hWindow: HWINDOW): HBKM {.cdecl,
    importc: "XWnd_GetBkManagerEx", dynlib: xcgui, discardable.}

proc XWnd_SetTransparentType*(hWindow: HWINDOW; nType: window_transparent) {.cdecl,
    importc: "XWnd_SetTransparentType", dynlib: xcgui, discardable.}
## 设置透明窗口


proc XWnd_SetTransparentAlpha*(hWindow: HWINDOW; alpha: BYTE) {.cdecl,
    importc: "XWnd_SetTransparentAlpha", dynlib: xcgui, discardable.}
## 设置窗口透明度


proc XWnd_SetTransparentColor*(hWindow: HWINDOW; color: COLORREF) {.cdecl,
    importc: "XWnd_SetTransparentColor", dynlib: xcgui, discardable.}
## 设置窗口透明色


proc XWnd_SetShadowInfo*(hWindow: HWINDOW; nSize: cint; nDepth: cint;
                        nAngeleSize: cint; bRightAngle: BOOL; color: COLORREF) {.
    cdecl, importc: "XWnd_SetShadowInfo", dynlib: xcgui, discardable.}

proc XWnd_GetTransparentType*(hWindow: HWINDOW): window_transparent {.cdecl,
    importc: "XWnd_GetTransparentType", dynlib: xcgui, discardable.}

proc XWnd_GetShadowInfo*(hWindow: HWINDOW; pnSize: ptr cint; pnDepth: ptr cint;
                        pnAngeleSize: ptr cint; pbRightAngle: ptr BOOL;
                        pColor: ptr COLORREF) {.cdecl,
    importc: "XWnd_GetShadowInfo", dynlib: xcgui, discardable.}

proc XWnd_EnableCSS*(hWindow: HWINDOW; bEnable: BOOL) {.cdecl,
    importc: "XWnd_EnableCSS", dynlib: xcgui, discardable.}

proc XWnd_SetCssName*(hWindow: HWINDOW; pName: ptr WCHAR) {.cdecl,
    importc: "XWnd_SetCssName", dynlib: xcgui, discardable.}

proc XWnd_GetCssName*(hWindow: HWINDOW): ptr WCHAR {.cdecl,
    importc: "XWnd_GetCssName", dynlib: xcgui, discardable.}
## -------------------------------------------------------------


proc XJS_InitJS*(): BOOL {.cdecl, importc: "XJS_InitJS", dynlib: xcgui, discardable.}

proc XJS_ExitJS*() {.cdecl, importc: "XJS_ExitJS", dynlib: xcgui, discardable.}

proc XJS_RunJS*(pJsFile: cstring): BOOL {.cdecl, importc: "XJS_RunJS", dynlib: xcgui, discardable.}

proc XJS_RunJsString*(pString: cstring): BOOL {.cdecl, importc: "XJS_RunJsString",
    dynlib: xcgui, discardable.}

proc XJS_RunJsStringUtf8*(pString: cstring): BOOL {.cdecl,
    importc: "XJS_RunJsStringUtf8", dynlib: xcgui, discardable.}

proc XJS_EnableDebugInfo*(bEnable: BOOL) {.cdecl, importc: "XJS_EnableDebugInfo",
                                        dynlib: xcgui, discardable.}
## ~ typedef void (CALLBACK *user_clallback)(void *args);


#~ proc XJS_Callback_Reg*(pFunName: ptr WCHAR; fun: user_callback) {.cdecl,
    #~ importc: "XJS_Callback_Reg", dynlib: xcgui, discardable.}

proc XJS_Callback_GetArgsCount*(args: pointer): cint {.cdecl,
    importc: "XJS_Callback_GetArgsCount", dynlib: xcgui, discardable.}
## 获取回调参数数量


proc XJS_Callback_IsNumber*(args: pointer; index: cint): BOOL {.cdecl,
    importc: "XJS_Callback_IsNumber", dynlib: xcgui, discardable.}
## 获取参数类型


proc XJS_Callback_IsString*(args: pointer; index: cint): BOOL {.cdecl,
    importc: "XJS_Callback_IsString", dynlib: xcgui, discardable.}

proc XJS_Callback_IsBool*(args: pointer; index: cint): BOOL {.cdecl,
    importc: "XJS_Callback_IsBool", dynlib: xcgui, discardable.}

proc XJS_Callback_IsFunction*(args: pointer; index: cint): BOOL {.cdecl,
    importc: "XJS_Callback_IsFunction", dynlib: xcgui, discardable.}

proc XJS_Callback_IsObject*(args: pointer; index: cint): BOOL {.cdecl,
    importc: "XJS_Callback_IsObject", dynlib: xcgui, discardable.}

proc XJS_Callback_SetReturnValueNumber*(args: pointer; nValue: cint) {.cdecl,
    importc: "XJS_Callback_SetReturnValueNumber", dynlib: xcgui, discardable.}

proc XJS_Callback_SetReturnValueString*(args: pointer; nValue: ptr WCHAR) {.cdecl,
    importc: "XJS_Callback_SetReturnValueString", dynlib: xcgui, discardable.}

proc XJS_Callback_GetNumber*(args: pointer; index: cint): cint {.cdecl,
    importc: "XJS_Callback_GetNumber", dynlib: xcgui, discardable.}

proc XJS_Callback_GetBool*(args: pointer; index: cint): BOOL {.cdecl,
    importc: "XJS_Callback_GetBool", dynlib: xcgui, discardable.}

proc XJS_Callback_GetString*(args: pointer; index: cint): ptr WCHAR {.cdecl,
    importc: "XJS_Callback_GetString", dynlib: xcgui, discardable.}

proc XJS_FreeString*(pString: ptr WCHAR) {.cdecl, importc: "XJS_FreeString",
    dynlib: xcgui, discardable.}

proc XEle_Move*(hEle: HELE; x: cint; y: cint; bRedraw: BOOL = FALSE;
               nFlags: cint = cint(xc_adjustLayout_all)): cint {.cdecl,
    importc: "XEle_Move", dynlib: xcgui, discardable.}
## 逻辑模式坐标


proc XWnd_Move*(hWindow: HWINDOW; x: cint; y: cint) {.cdecl, importc: "XWnd_Move",
    dynlib: xcgui, discardable.}
## 获取窗口body坐标
