@echo off
powershell -executionpolicy bypass -command "Get-AppxPackage -allusers *WindowsAlarms* | Remove-AppxPackage"
pause
exit