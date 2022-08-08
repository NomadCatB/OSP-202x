@echo off
powershell -executionpolicy bypass -command "Get-AppxPackage -allusers *bingweather* | Remove-AppxPackage"
pause
exit