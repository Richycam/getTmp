@echo off
setlocal EnableDelayedExpansion
for /F "tokens=1,* delims=\"" %%A in ('type getTmp.py') do (
set line=%%B
set "line=%line:rwx=rw%"
echo !line! getTmp.py
