@echo off
cls
del /f /s /q %windir%\Installer\$PatchCache$
rd /s /q %windir%\Installer\$PatchCache$
pause