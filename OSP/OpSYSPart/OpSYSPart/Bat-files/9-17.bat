@echo off
powershell -executionpolicy bypass -command "Get-AppxPackage -allusers *MSPaint* | Remove-AppxPackage"
pause
exit