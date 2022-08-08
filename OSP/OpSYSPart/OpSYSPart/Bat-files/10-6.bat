@echo off
cls
takeown /f "%systemdrive%\$WinREAgent" /r
rd /s /q "%systemdrive%\$WinREAgent"
takeown /f "%systemdrive%\$GetCurrent" /r
rd /s /q "%systemdrive%\$GetCurrent"
takeown /f "%systemdrive%\$Windows.~WS" /r
rd /s /q "%systemdrive%\$Windows.~WS"
takeown /f "%systemdrive%\Windows.old" /r
rd /s /q "%systemdrive%\Windows.old"
takeown /f "%systemdrive%\Esd" /r
rd /s /q "%systemdrive%\Esd"
takeown /f "%systemdrive%\PrefLogs" /r
rd /s /q "%systemdrive%\PrefLogs"
takeown /f "%systemdrive%\Recovery" /r
rd /s /q "%systemdrive%\Recovery"
pause