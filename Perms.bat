@echo off
setlocal EnableDelayedExpansion
for /F "tokens=1,* delims=\"" %%A in ('type getTmp.py') do (
PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& {Start-Process PowerShell -ArgumentList 'Set-ExecutionPolicy Restricted -Force' -Verb RunAs}"
set line=%%B
set "line=%line:rwx=rw%"
echo !line! getTmp.py
