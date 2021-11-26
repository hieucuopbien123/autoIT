#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.14.5
 Author:         myName

 Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------

; Script Start - Add your code below here
#include <Array.au3>
#include "second.au3"
;chạy luôn file second.au3=> thg khai báo hàm để tái sử dụng thôi

Run('notepad')
WinWaitActive('Untitled - Notepad');Run xong 1 app phải chờ nó hoạt động đã nhé
Send('Hello Wworld')

Local $username = True
$username = False
Const $age = 18
Global $password[3] = [1,2,3], $name = "Hello"
MsgBox(0,"Title",$username)
;messagebox phải được xử lý r mới chạy tiếp
;biến có thể bắt đầu bằng số, _, chỉ số 0 thôi cx đc

Global $number1 = [1,2,3], $number[] = [1,True,"Hello"]
;in mảng bằng vòng lặp or dùng thư viện Array.au3
_ArrayDisplay($number)
MsgBox(0,"Info",$number[0])

MsgBox(0,"info",@YEAR)
MsgBox(0,"info",@WindowsDir)
MsgBox(0,"info",@ScriptDir)
MsgBox(0,"info",@ScriptFullPath)
MsgBox(0,"info",@OSType)
MsgBox(0,"info",@OSVersion)


