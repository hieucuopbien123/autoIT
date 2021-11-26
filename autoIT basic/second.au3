#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.14.5
 Author:         myName

 Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------

; Script Start - Add your code below here
#NoTrayIcon
#RequireAdmin5

From J2Team	ConsoleWrite("=====" & @CRLF)
	ConsoleWrite($data)
	ConsoleWrite(@CRLF)
EndFunc

Global $b = "Hello "
$b = $b & "World"
$b &= "!"
view($b)

Global $c = 10
Global $a = $c = "10";== tương tự ngược với <>
view($a)
;autoIT tự chuyển sang chuỗi nên vẫn là true

Global $d = ($c >= 9 And $c == "10") Or Not(1)
view($d)

Global $username = "Hieu"
Global $password = "123"
If $username == "Hieu" And $password == "123" Then
	MsgBox(0, "Message","You are Hieu")
ElseIf $username == "Trang" And $password == "123" Then
	MsgBox(0, "Message","You are Trang")
Else
	MsgBox(0, "Message","Else")
EndIf

Select
	Case $username == "Hieu" And $password == "123"
		MsgBox(0, "Info","You are Hieu")
	Case $username == "Trang" And $password == "123"
		MsgBox(0, "Info","You are Hieu")
EndSelect

Global $number = 5;
Switch Int($number)
	Case 1 To 10
		MsgBox(0, "Info","1-10")
	Case Else
		MsgBox(0, "Info","Else")
EndSwitch

Global $members = ["Hieu","Trang","Killer"]
For $i = 0 To 2
	ConsoleWrite($members[$i] & @CRLF)
Next

For $i = 2 To 0 Step -1
	ConsoleWrite($members[$i] & @CRLF)
Next

Global $i = 0;i tự tạo nhưng tốt nhất cứ khai báo
While $i < 3
	ConsoleWrite($members[$i] & @CRLF)
	$i+=1; autoIt k có ++
WEnd

$i = 0
Do
	ConsoleWrite($members[$i] & @CRLF)
	$i += 1
Until $i = 3

For $member In $members
    ConsoleWrite($member & @CRLF)
Next

ClipPut("Hello"); ấn CTRL+V sẽ lấy được "Hello" ra sau khi hàm này chạy

Func main()
	Run("notepad")
	Sleep(2000)
	Send("From J2Team");
EndFunc
main()

Func sum($a, $b)
    Return $a + $b
EndFunc
;hàm k được có tên bắt đầu bằng số, _ đc
Global $res = sum(10, 15)
MsgBox(0,"Res",$res)
;bên trong hàm dùng Local thì ra khỏi hàm bị xóa k dùng đc


