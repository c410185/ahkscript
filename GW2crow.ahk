#MaxThreadsPerHotkey 3
!q::  ; alt+q 热键(可根据您的喜好改变此热键).
#MaxThreadsPerHotkey 1
if KeepWinZRunning  ;  这说明一个潜在的线程正在下面的循环中运行.
{
    KeepWinZRunning := false  ; 向那个线程的循环发出停止的信号.
    return  ; 结束此线程, 这样才可以让下面的线程恢复并得知上一行所做的更改.
}
; 否则:
KeepWinZRunning := true
Loop
{
    ; 以下四行是您要重复的动作(可根据您的需要修改它们):
    SetKeyDelay, 900, 300
    ControlSend, , 1,ahk_exe STGame.exe,
    ControlSend, , 6, ahk_exe STGame.exe,
    ; 但请不要修改下面剩下的内容.
    if not KeepWinZRunning  ; 用户再次按下 alt-q 来向循环发出停止的信号.
        break  ; 跳出此循环.
}
KeepWinZRunning := false  ; 复位, 为下一次使用热键做准备.
return

!w::  ; alt+w 热键(可根据您的喜好改变此热键).
#MaxThreadsPerHotkey 1
if KeepWinZRunning  ;  这说明一个潜在的线程正在下面的循环中运行.
{
    KeepWinZRunning := false  ; 向那个线程的循环发出停止的信号.
    return  ; 结束此线程, 这样才可以让下面的线程恢复并得知上一行所做的更改.
}
; 否则:
KeepWinZRunning := true
Loop
{
    SetKeyDelay, 900, 300
    ControlSend, , 1,ahk_exe STGame.exe,
    ControlSend, , 2,ahk_exe STGame.exe,
    ControlSend, , 6, ahk_exe STGame.exe,
    ControlSend, , 7, ahk_exe STGame.exe,
    ControlSend, , R, ahk_exe STGame.exe,
    ControlSend, , Z, ahk_exe STGame.exe,
    ControlSend, , {F3}, ahk_exe STGame.exe,
    ; 请不要修改下面剩下的内容.
    if not KeepWinZRunning  ; 用户再次按下 alt-w 来向循环发出停止的信号.
        break  ; 跳出此循环.
}
KeepWinZRunning := false  ; 复位, 为下一次使用热键做准备.
return
