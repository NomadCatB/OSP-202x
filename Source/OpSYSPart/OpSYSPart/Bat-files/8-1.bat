@echo off
cls
reg add "HKCR\*\shell\runas" /d "Get Owner" /f
reg add "HKCR\*\shell\runas" /v Extended /f
reg add "HKCR\*\shell\runas" /v NoWorkingDirectory /f
reg add "HKCR\*\shell\runas\command" /d "cmd.exe /c takeown /f \"%1\" && icacls \"%1\" /grant administrators:F" /f
reg add "HKCR\*\shell\runas\command" /v IsolatedCommand /d "cmd.exe /c takeown /f \"%1\" && icacls \"%1\" /grant administrators:F" /f
reg add "HKCR\Directory\shell\runas" /d "Get Owner" /f
reg add "HKCR\Directory\shell\runas" /v Extended /f
reg add "HKCR\Directory\shell\runas" /v NoWorkingDirectory /f
reg add "HKCR\Directory\shell\runas\command" /d "cmd.exe /c takeown /f \"%1\" /r /d y && icacls \"%1\" /grant administrators:F /t" /f
reg add "HKCR\Directory\shell\runas\command" /v IsolatedCommand /d "cmd.exe /c takeown /f \"%1\" /r /d y && icacls \"%1\" /grant administrators:F /t" /f
reg add "HKCR\AllFilesystemObjects\shellex\ContextMenuHandlers\{C2FBB630-2971-11D1-A18C-00C04FD75D13}" /f
pause