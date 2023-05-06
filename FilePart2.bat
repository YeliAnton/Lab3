@echo off
set dirname=%1
if not defined dirname (
  set /p dirname="Enter directory name: "
)
dir /AD | find "%dirname%" >nul
if %errorlevel% equ 1 (
  echo Directory with name "%dirname%" not found.
) else (
  echo Directories with name "%dirname%":
  dir /AD /B | find "%dirname%"
)
pause