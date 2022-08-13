@echo off
powershell -executionpolicy bypass -command "Get-AppxPackage -allusers *Messaging* | Remove-AppxPackage"
pause
exit