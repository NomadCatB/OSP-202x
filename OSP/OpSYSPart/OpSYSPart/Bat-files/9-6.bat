@echo off
powershell -executionpolicy bypass -command "Get-AppxPackage -allusers *WindowsCamera* | Remove-AppxPackage"
pause
exit