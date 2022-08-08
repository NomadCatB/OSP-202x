@echo off
powershell -executionpolicy bypass -command "Get-AppxPackage -allusers *ZuneMusic* | Remove-AppxPackage"
pause
exit