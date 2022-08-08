@echo off
cls
takeown /f "%systemdrive%\$recycle.bin" /r
rd /s /q "%systemdrive%\$recycle.bin"
pause