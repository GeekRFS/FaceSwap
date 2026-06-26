@echo off
title FaceSwap Virtual Camera - Register

rem Request administrator rights (regsvr32 requires admin)
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo Requesting administrator rights...
    powershell -Command "Start-Process -Verb RunAs -FilePath '%~f0'"
    exit /b
)

set "DIR=%~dp0vendor\UnityCapture"

if not exist "%DIR%\UnityCaptureFilter64.dll" (
    echo [ERROR] Not found: "%DIR%\UnityCaptureFilter64.dll"
    echo Put Unity Capture DLLs into the vendor\UnityCapture folder.
    pause
    exit /b 1
)

echo Registering 64-bit virtual camera filter...
"%SystemRoot%\System32\regsvr32.exe" /s "%DIR%\UnityCaptureFilter64.dll"

if exist "%DIR%\UnityCaptureFilter32.dll" (
    echo Registering 32-bit filter ^(for 32-bit apps^)...
    "%SystemRoot%\SysWOW64\regsvr32.exe" /s "%DIR%\UnityCaptureFilter32.dll"
)

echo.
echo [OK] Virtual camera registered. OBS is no longer required.
echo      Now run:  python faceswap_app.py
echo.
pause
