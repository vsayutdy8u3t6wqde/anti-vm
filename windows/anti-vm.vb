'@graysuit
'https://discord.com/invite/Hu5XPGMTuk
'https://github.com/Back-X/Universal-VM-Detector
Imports System
Imports System.Management
Imports System.Windows.Forms
Public Module anti_vm
	Public Sub Main()
		Dim flag As Boolean = New ManagementObjectSearcher("SELECT * FROM Win32_PortConnector").[Get]().Count = 0
		MessageBox.Show("You are using " + If(flag, "Virtual", "Real") + " Environment", "Universal VM Detector", MessageBoxButtons.OK, If(flag, MessageBoxIcon.Exclamation, MessageBoxIcon.Asterisk))
	End Sub
End Module
