@echo off
setlocal enabledelayedexpansion

echo --------------------------------------------------
echo INSTALLER FOR basicstream LIBRARY (MinGW - Windows)
echo --------------------------------------------------

rem Name of the file to copy (must be in the same folder)
set "HEADER_NAME=basicstream"

echo [1/4] Searching for g++.exe...
for /f "delims=" %%G in ('where g++ 2^>nul') do (
    set "GPP_PATH=%%~dpG"
    goto found_gpp
)

echo g++ not found in PATH.
echo Please make sure MinGW is installed and g++ is accessible.
pause
exit /b 1

:found_gpp
echo g++ found at: !GPP_PATH!

rem Go up one level from /bin to the root of MinGW
set "MINGW_ROOT=!GPP_PATH:~0,-4!"
set "TARGET_DIR=!MINGW_ROOT!include"

echo Detected include directory: !TARGET_DIR!

rem Check if the file exists in the current folder
if not exist "%HEADER_NAME%" (
    echo File "%HEADER_NAME%" not found in the current directory.
    pause
    exit /b 1
)

echo [2/4] Copying to the include directory...
copy /Y "%HEADER_NAME%" "!TARGET_DIR!\%HEADER_NAME%" > nul
if errorlevel 1 (
    echo Copy failed. Check permissions or MinGW location.
    pause
    exit /b 1
)

echo [3/4] Verifying installation...
if exist "!TARGET_DIR!\%HEADER_NAME%" (
    echo Installation successful. File copied to:
    echo   !TARGET_DIR!
    echo You can now use: #include ^<basicstream^>
) else (
    echo Copy appears to have failed.
)

echo --------------------------------------------------
pause
