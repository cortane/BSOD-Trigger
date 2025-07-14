@echo off
REM Get current batch file folder
set scriptdir=%~dp0

REM Run PowerShell with execution policy bypass and hidden window
powershell.exe -ExecutionPolicy Bypass -WindowStyle Hidden -File "%scriptdir%bsod.ps1"
