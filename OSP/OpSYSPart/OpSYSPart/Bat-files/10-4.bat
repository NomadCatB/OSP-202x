@ECHO OFF
SET THEDIR="%SystemDrive%\Users\%username%\AppData\Local\Temp\"
DEL "%THEDIR%\*" /F /Q /A
FOR /F "eol=| delims=" %%I in ('dir "%THEDIR%\*" /AD /B 2^>nul') do rd /Q /S "%THEDIR%\%%I"
EXIT
