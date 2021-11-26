#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.14.5
 Author:         myName

 Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------

; Script Start - Add your code below here

;2 chế độ xử lý sự kiện GUI là message loop(vòng lặp vô tận chờ sự kiện)(mặc định) và onEvent(kiểu signal slot)
#cs
;mesageloop
#include <GUIConstantsEx.au3>
#include <MsgBoxConstants.au3>

Local $hGUI = GUICreate("Hello World", 200, 100)
;tạo cửa sổ gui với "title",width,height,left,top; left,top nếu define phải cùng define là vị trí, mặc định -1 là center
GUICtrlCreateLabel("Hello world! How are you?", 30, 10);tạo ra button và label của cửa sổ gui: "label", left, top
Local $iOKButton = GUICtrlCreateButton("OK", 70, 50, 60);cứ viết bên dưới là nó thành thành phần của cửa sổ GUI
GUISetState(@SW_SHOW, $hGUI);set trạng thái cho window này, dùng @SW_HIDE thì window sẽ không hiện

Local $iMsg = 0
While 1
    $iMsg = GUIGetMsg();hàm bắt mọi sự kiện của cửa sổ gui và gán vào biến kia
    Switch $iMsg
        Case $iOKButton
            MsgBox($MB_SYSTEMMODAL, "GUI Event", "You selected the OK button.")
					;$MB_SYSTEMMODAL là cửa sổ kiểu mặc định như bên trong hệ thống
        Case $GUI_EVENT_CLOSE
            MsgBox($MB_SYSTEMMODAL, "GUI Event", "You selected the Close button. Exiting...")
            ExitLoop; đặt exit loop ở đâu đó bên trong để kết thúc vòng while
    EndSwitch
WEnd

GUIDelete($hGUI);xóa cửa sổ gui
#ce

#cs
;onEvent
#include <GUIConstantsEx.au3>
#include <MsgBoxConstants.au3>

Opt("GUIOnEventMode", 1) ; Change to OnEvent mode, enable hàm onEvent

Local $hMainGUI = GUICreate("Hello World", 200, 100)
GUISetOnEvent($GUI_EVENT_CLOSE, "CLOSEButton");hàm gán sự kiện gì xảy ra thì gọi hàm gì, tên hàm viết thành string
GUICtrlCreateLabel("Hello world! How are you?", 30, 10)
Local $iOKButton = GUICtrlCreateButton("OK", 70, 50, 60)
GUICtrlSetOnEvent($iOKButton, "OKButton")
GUISetState(@SW_SHOW, $hMainGUI)

While 1
    Sleep(100) ; Sleep to reduce CPU usage
WEnd

Func OKButton()
    ; Note: At this point @GUI_CtrlId would equal $iOKButton,
    ; and @GUI_WinHandle would equal $hMainGUI
    MsgBox($MB_OK, "GUI Event", "You selected OK!")
EndFunc   ;==>OKButton

Func CLOSEButton()
    ; Note: At this point @GUI_CtrlId would equal $GUI_EVENT_CLOSE,
    ; and @GUI_WinHandle would equal $hMainGUI
    MsgBox($MB_OK, "GUI Event", "You selected CLOSE! Exiting...")
    Exit
EndFunc   ;==>CLOSEButton
#ce

#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#Region ### START Koda GUI section ### Form=
$Form1 = GUICreate("Member Login", 412, 192, -1, -1)
$Label1 = GUICtrlCreateLabel("Username:", 16, 16, 78, 25)
GUICtrlSetFont(-1, 12, 400, 0, "Segoe UI")
$Input1 = GUICtrlCreateInput("", 104, 16, 265, 28)
GUICtrlSetFont(-1, 12, 400, 0, "MS Sans Serif")
$Label2 = GUICtrlCreateLabel("Password:", 16, 64, 74, 25)
GUICtrlSetFont(-1, 12, 400, 0, "Segoe UI")
$Input2 = GUICtrlCreateInput("", 104, 64, 265, 28, BitOR($GUI_SS_DEFAULT_INPUT,$ES_PASSWORD));cái BitOR để set nhập password
GUICtrlSetFont(-1, 12, 400, 0, "MS Sans Serif")
$Login = GUICtrlCreateButton("Login", 104, 120, 267, 33)
GUICtrlSetFont(-1, 12, 400, 0, "MS Sans Serif")
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###


While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit
		Case $Login
			Local $username = GUICtrlRead($Input1);hàm đọc dữ liệu từ trình điều khiển. Còn hàm nx hay dùng là GUICtrlSetData
			Local $password = GUICtrlRead($Input2)
			If $username == 'admin' And $password == "123" Then
				MsgBox(0,"Thông báo", "Bạn đã đăng nhập thành công")
			Else
				MsgBox(0,"Thông báo", "Sai tên người dùng hoặc mật khẩu")
			EndIf
	EndSwitch
WEnd







