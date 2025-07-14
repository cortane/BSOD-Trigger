@echo off
title Network Cache Reset

echo [1/3] Resetting Winsock catalog...
netsh winsock reset

echo [2/3] Resetting IP stack...
netsh int ip reset

echo [3/3] Flushing DNS cache...
ipconfig /flushdns

echo.
echo Network cache reset completed successfully.
echo It is recommended to restart your PC to apply changes.
pause
