@echo off
wmic computersystem set AutomaticManagedPagefile=False
wmic pagefileset delete
echo "Restart for disable all swap-files"
pause