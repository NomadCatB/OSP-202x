@ECHO OFF

SET THEDIR=%SystemRoot%\System32\DriverStore\Temp\
Echo Deleting all files from %THEDIR%
DEL "%THEDIR%\*" /F /Q /A
Echo Deleting all folders from %THEDIR%
FOR /F "eol=| delims=" %%I in ('dir "%THEDIR%\*" /AD /B 2^>nul') do rd /Q /S "%THEDIR%\%%I"
EXIT
