@echo off
powershell -executionpolicy bypass -command "Get-AppxPackage -allusers *WindowsMaps* | Remove-AppxPackage"
pause
exit