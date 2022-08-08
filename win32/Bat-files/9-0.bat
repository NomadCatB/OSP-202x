@echo off
powershell -executionpolicy bypass -command "Get-AppxPackage | Select Name, PackageFullName"
pause
exit