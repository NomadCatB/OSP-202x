@echo off
powershell -executionpolicy bypass -command "Get-AppxPackage -allusers *bingsports* | Remove-AppxPackage"
pause
exit