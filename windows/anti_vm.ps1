#@graysuit
#https://discord.com/invite/Hu5XPGMTuk
#https://github.com/Back-X/anti-vm
$IsVM = (get-wmiobject -namespace ROOT\CIMV2 -computername localhost -Query "SELECT * FROM Win32_PortConnector").Count -eq 0; 
Write-Host "You are using $(If ($IsVM) {'Virtual'} Else {'Real'}) Environment";