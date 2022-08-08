@echo off
powershell -executionpolicy bypass -command "Get-AppxPackage -allusers *3dbuilder* | Remove-AppxPackage"
pause
exit