@echo off
setlocal enabledelayedexpansion

title Kartov Groups - After Effects CEP Extension Installer
echo =======================================================
echo    Kartov Groups - Extension Installer
echo =======================================================
echo.

:: 1. Adobe CEP Developer Mode (PlayerDebugMode)
echo [1/3] Enabling Adobe CEP PlayerDebugMode...
for %%v in (7 8 9 10 11 12 13 14 15 16) do (
    reg add "HKEY_CURRENT_USER\Software\Adobe\CSXS.%%v" /v PlayerDebugMode /t REG_SZ /d 1 /f >nul 2>&1
)
echo       [OK] PlayerDebugMode enabled successfully.

:: 2. Target Directories
echo [2/3] Checking destination directory...
set "TARGET_DIR=%APPDATA%\Adobe\CEP\extensions\KartovGroups"

if exist "%~dp0CSXS" (
    set "SRC_DIR=%~dp0"
) else (
    set "SRC_DIR=%~dp0.."
)

if not exist "%APPDATA%\Adobe\CEP\extensions" (
    mkdir "%APPDATA%\Adobe\CEP\extensions" 2>nul
)

if exist "%TARGET_DIR%" (
    echo       Updating existing installation...
    rmdir /S /Q "%TARGET_DIR%" 2>nul
)

mkdir "%TARGET_DIR%" 2>nul

:: 3. Copy Files
echo [3/3] Copying extension files...
xcopy /E /Y /I "%SRC_DIR%\CSXS" "%TARGET_DIR%\CSXS" >nul
xcopy /E /Y /I "%SRC_DIR%\css" "%TARGET_DIR%\css" >nul
xcopy /E /Y /I "%SRC_DIR%\js" "%TARGET_DIR%\js" >nul
xcopy /E /Y /I "%SRC_DIR%\jsx" "%TARGET_DIR%\jsx" >nul
copy /Y "%SRC_DIR%\index.html" "%TARGET_DIR%\" >nul
copy /Y "%SRC_DIR%\.debug" "%TARGET_DIR%\" >nul

echo.
echo =======================================================
echo    INSTALLATION COMPLETED SUCCESSFULLY!
echo =======================================================
echo.
echo Extension Location:
echo %TARGET_DIR%
echo.
echo How to Use:
echo 1. Restart Adobe After Effects.
echo 2. Go to: Window - Extensions - Kartov Groups
echo.
pause
