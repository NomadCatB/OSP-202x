@echo off
powershell -executionpolicy bypass -command "Get-AppxPackage -allusers *Getstarted* | Remove-AppxPackage"
pause
exit