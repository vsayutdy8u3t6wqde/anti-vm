'@graysuit
'https://discord.com/invite/Hu5XPGMTuk
'https://github.com/Back-X/Universal-VM-Detector
Imports System
Imports System.Windows.Forms
Public Module anti-vm
    Public Sub Main()
        Dim IsVM As Boolean = (New System.Management.ManagementObjectSearcher("SELECT * FROM Win32_PortConnector")).[Get]().Count = 0
        MessageBox.Show("You are using " & (If(IsVM, "Virtual", "Real")) & " Environment", "Universal VM Detector", MessageBoxButtons.OK, (If(IsVM, MessageBoxIcon.Warning, MessageBoxIcon.Information)))
    End Sub
End Module
