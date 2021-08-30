'@graysuit
'https://graysuit.github.io
'https://github.com/Back-X/anti-vm

Dim cables
cables = GetObject("winmgmts:").InstancesOf("Win32_PortConnector").Count
If cables = 0 Then
    MsgBox "You are using Virtual Environment", vbExclamation, "Is VM ?"
Else
    MsgBox "You are using Real Environment", vbInformation, "Is VM ?"
End If
