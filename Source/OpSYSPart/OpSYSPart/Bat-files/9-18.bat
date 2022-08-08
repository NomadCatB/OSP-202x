@echo off
powershell -executionpolicy bypass -command "Get-AppxPackage -allusers *Xbox One SmartGlass* | Remove-AppxPackage"
pause
exit