@echo off
cls
takeown /f "%windir%\WinSxS\backup" /r
powershell rd %windir%\WinSxS\backup\*.*
pause