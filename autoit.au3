#include <File.au3>

$file = "test.txt"
FileOpen($file, 0)
$line = FileReadLine($file, 1)
$list = StringSplit($line,",",2)
_ArrayDisplay($list, "1D display")
$list[1] = 0
$list[2] = 0
$p1 = 0
$p2 = 0
Do
MsgBox($MB_SYSTEMMODAL, "", "Count down!")
FileOpen($file, 0)
$line = FileReadLine($file, 1)
$list = StringSplit($line,",",2)
	  $p1 = $p1 + 1
	  if $p1 == 99 Then
	  $p2 = $p2 + 1
	  $p1 = 0
	  EndIf
$list[1] = $p1
$list[2] = $p2

For $i = 0 To UBound($list) Step 4
   if $list[$i] == 1 Then
	  $list[$list[$i+3]] = $list[$list[$i+1]] + $list[$list[$i+2]]


   EndIf
   if $list[$i] == 2 Then
	   $list[$list[$i+3]] = $list[$list[$i+1]] * $list[$list[$i+2]]
	EndIf

   if $list[$i] == 99 Then

	  if $list[0] == 19690720 Then
	  MsgBox($MB_SYSTEMMODAL, "", "Count down!" & $list[0])
	  _ArrayDisplay($list, "1D display")
	  EndIf

   EndIf

Next
FileClose($file)

until $file == "hhej"
_ArrayDisplay($list, "1D display")


#CS For $i = 1 to _FileCountLines($file)
###     $line = FileReadLine($file, $i)
###
### Next
### msgbox(0,'','the line ' & $i & ' is ' & $line)
msgbox(0,'',$list[0])
 #CE
FileClose($file)


