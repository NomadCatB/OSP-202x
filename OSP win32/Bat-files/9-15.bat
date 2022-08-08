@echo off
powershell -executionpolicy bypass -command "Get-AppxPackage -allusers *ZuneVideo* | Remove-AppxPackage"
pause
exit