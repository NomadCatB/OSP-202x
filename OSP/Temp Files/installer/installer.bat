set work_dir=d:\work
for %%B in (%work_dir%\*.msi) do ( 
set %%C = "%work_dir%"+"%%B"
find %%C installer.txt
if %%C = %%B del %%B
echo "%%C"
)
pause
pause