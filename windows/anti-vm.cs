//@graysuit
//https://graysuit.github.io
//https://github.com/Back-X/anti-vm
using System;
using System.Windows.Forms;

public class anti_vm
{
	static void Main()
	{
		bool IsVM = (new System.Management.ManagementObjectSearcher("SELECT * FROM Win32_PortConnector")).Get().Count == 0;
		MessageBox.Show
		(
		    "You are using " + (IsVM ? "Virtual" : "Real") + " Environment", 
			"Universal VM Detector", 
			MessageBoxButtons.OK, 
			(IsVM ? MessageBoxIcon.Warning : MessageBoxIcon.Information)
	    );
    }
}
