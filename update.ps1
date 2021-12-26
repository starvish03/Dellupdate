New-Item -Path 'C:\DellUpdate' -ItemType Directory -Force
$sourcemsg = 'https://raw.githubusercontent.com/khalilhasanzade/Dellupdate/main/usermsg.vbs'
$destinationmsg = 'C:\DellUpdate\usermsg.vbs'
Invoke-WebRequest -Uri $sourcemsg -OutFile $destinationmsg
$sourcebatch = 'https://raw.githubusercontent.com/khalilhasanzade/Dellupdate/main/Dell_update.bat'
$destinationbatch = 'C:\DellUpdate\Dell_update.bat'
Invoke-WebRequest -Uri $sourcebatch -OutFile $destinationbatch
cscript.exe C:\DellUpdate\usermsg.vbs
Powershell /c Sleep 1800
cmd.exe /c C:\DellUpdate\Dell_update.bat
