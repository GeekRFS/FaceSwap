@echo off
title FaceSwap Virtual Camera - Unregister

rem Request administrator rights
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Requesting administrator rights...
    powershell -Command "Start-Process -Verb RunAs -FilePath '%~f0'"
    exit /b
)

set "DIR=%~dp0vendor\UnityCapture"

echo Unregistering virtual camera...
if exist "%DIR%\UnityCaptureFilter64.dll" "%SystemRoot%\System32\regsvr32.exe" /s /u "%DIR%\UnityCaptureFilter64.dll"
if exist "%DIR%\UnityCaptureFilter32.dll" "%SystemRoot%\SysWOW64\regsvr32.exe" /s /u "%DIR%\UnityCaptureFilter32.dll"

echo.
echo [OK] Virtual camera removed.
echo.
pause
