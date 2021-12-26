@echo off

"C:\Program Files (x86)\Dell\CommandUpdate\dcu-cli.exe" /scan -silent -outputLog=C:\Dell-CU-scan.log

"C:\Program Files (x86)\Dell\CommandUpdate\dcu-cli.exe" /applyUpdates -silent -reboot=enable -outputLog=C:\Dell-CU-apply.log
