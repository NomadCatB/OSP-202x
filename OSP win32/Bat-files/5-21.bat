@echo off
cls
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows NT\SystemRestore" /v DisableSR /t Reg_Dword /d 1 /f
pause