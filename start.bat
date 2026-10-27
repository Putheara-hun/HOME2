@echo off
title Home2 house viewer
cd /d "%~dp0"
where node >nul 2>nul
if errorlevel 1 (
  echo Node.js is not installed.
  echo Opening index.html directly in your default browser...
  start "" index.html
  pause
  exit /b
)
node server.js 8085
pause
