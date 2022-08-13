@echo off
powershell -executionpolicy bypass -command "Get-AppxPackage -allusers *BingNews* | Remove-AppxPackage"
pause
exit