$1::
clipboard:=""
send ^c
send {tab}       ; if the two fields are in the same line, the second right of the first
clipwait
v1:=trim(clipboard," `t`r`n"), clipboard:=""
send ^c
clipwait
v2:=trim(clipboard," `t`r`n")
return

$2::
send %v1%{TAB 4}%v2%
return