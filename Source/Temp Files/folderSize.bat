@Echo Off
SetLocal enabledelayedexpansion
Set D=D:\CD
For /F "tokens=1-3" %%a IN ('Dir "%D%" /-C/S/A:-D') Do Set DirSize=!n2!& Set n2=%%c
Set DirSize=%DirSize:~0,-6%
Echo Size of %D% is %DirSize% MB.
pause