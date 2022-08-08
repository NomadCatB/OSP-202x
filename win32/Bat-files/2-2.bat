@echo off
cls
Dism.exe /Online /Cleanup-Image /StartComponentCleanup
pause