@echo off
powershell -executionpolicy bypass -command "Get-AppxPackage -allusers *XboxApp* | Remove-AppxPackage"
pause
exit