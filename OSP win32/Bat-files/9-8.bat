@echo off
powershell -executionpolicy bypass -command "Get-AppxPackage -allusers *WindowsFeedbackHub* | Remove-AppxPackage"
pause
exit