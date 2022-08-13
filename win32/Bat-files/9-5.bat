@echo off
powershell -executionpolicy bypass -command "Get-AppxPackage -allusers *CommsPhone* | Remove-AppxPackage"
pause
exit