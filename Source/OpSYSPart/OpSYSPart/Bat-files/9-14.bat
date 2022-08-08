@echo off
powershell -executionpolicy bypass -command "Get-AppxPackage -allusers *MicrosoftSolitaireCollection* | Remove-AppxPackage"
pause
exit