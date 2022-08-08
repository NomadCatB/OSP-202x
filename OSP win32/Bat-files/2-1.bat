@echo off
cls
Dism.exe /Online /Cleanup-Image /AnalyzeComponentStore
pause