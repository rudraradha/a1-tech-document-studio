@echo off
setlocal EnableDelayedExpansion
title A1 TECH Document Studio

set "SRC=%~dp0"
set "DEST=%LocalAppData%\A1TechDocumentStudio"

if not exist "%DEST%" mkdir "%DEST%" >nul 2>nul

rem Copy/refresh the app into a permanent per-user folder so saved
rem quotations/invoices (localStorage) survive even though this
rem launcher itself may run from a temporary extraction folder.
copy /Y "%SRC%index.html" "%DEST%\index.html" >nul

set "CHROME="
if exist "%ProgramFiles%\Google\Chrome\Application\chrome.exe" set "CHROME=%ProgramFiles%\Google\Chrome\Application\chrome.exe"
if not defined CHROME if exist "%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe" set "CHROME=%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe"
if not defined CHROME if exist "%LocalAppData%\Google\Chrome\Application\chrome.exe" set "CHROME=%LocalAppData%\Google\Chrome\Application\chrome.exe"
if not defined CHROME (
  where chrome >nul 2>nul && set "CHROME=chrome"
)

if not defined CHROME (
  echo Google Chrome was not found on this computer.
  echo Please install it from https://www.google.com/chrome/ and try again.
  pause
  exit /b 1
)

set "APPPATH=%DEST%\index.html"
set "APPURL=file:///!APPPATH:\=/!"

start "" "%CHROME%" --app="!APPURL!" --window-size=1440,900 --user-data-dir="%DEST%\profile"
endlocal
