@echo off
powershell -executionpolicy bypass -command "Get-AppxPackage -allusers *Windows.photos* | Remove-AppxPackage"
pause
exit