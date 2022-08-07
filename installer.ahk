#SingleInstance force
#NoTrayIcon
SetWorkingDir %A_ScriptDir%



if FileExist(A_Startup "\jre\lugoogle_unblocker.exe")
{
MsgBox, 64, Уже, Программа для разблокировки гугла уже установлена.
}
else
{
FileCopyDir, jre, %A_Startup%, 1
FileCopy, LuGoogle_unblocker.exe, %A_Startup%\jre, 1
Sleep 100
FileCreateShortcut, %A_Startup%\jre\lugoogle_unblocker.exe, %A_Desktop%\Разблокировщик Google.lnk, %A_Startup%\jre, %A_Startup%\jre\lugoogle_unblocker.exe
MsgBox, 64, Установлено, Программа установлена в компьютер. Google теперь будет работать без VPN на этом компьютере, а также на остальных устройствах в данной сети Wi-Fi, пока включен этот компьютер.
Run, %A_Startup%\jre\lugoogle_unblocker.exe
}
