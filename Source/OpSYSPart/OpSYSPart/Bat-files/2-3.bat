@echo off
cls
DISM.exe /online /Cleanup-Image /SPSuperseded
pause