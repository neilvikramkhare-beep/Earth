@echo off
setlocal enabledelayedexpansion

:: ==============================================================================
:: Earth Language Unified Master Backend Batch Script
:: File: backend.bat
:: Consolidates earth.bat, Install-Earth.bat, run_neilos.bat, and backend operations.
:: ==============================================================================

set "SCRIPT_DIR=%~dp0"
set "PYTHON_CMD=python"

if "%~1"=="" goto help
if /I "%~1"=="help" goto help
if /I "%~1"=="--help" goto help
if /I "%~1"=="-h" goto help

if /I "%~1"=="install" goto do_install
if /I "%~1"=="server" goto do_server
if /I "%~1"=="ide" goto do_ide
if /I "%~1"=="audit" goto do_audit
if /I "%~1"=="epip" goto do_epip
if /I "%~1"=="run" goto do_run

:: Default: Run script using backend.py or earth_compiler
goto do_run_direct

:do_install
echo [*] Installing and configuring Earth Language environment...
setx PATH "%PATH%;%SCRIPT_DIR%" /M >nul 2>&1
if errorlevel 1 (
    setx PATH "%PATH%;%SCRIPT_DIR%" >nul 2>&1
)
assoc .sl=EarthScript >nul 2>&1
assoc .et=EarthScript >nul 2>&1
ftype EarthScript="%SCRIPT_DIR%backend.bat" "%%1" %%* >nul 2>&1
echo [+] Earth Language environment configured successfully!
goto end

:do_server
set "PORT=8080"
if not "%~2"=="" set "PORT=%~2"
echo [*] Starting Earth Unified Backend Server on port %PORT%...
%PYTHON_CMD% "%SCRIPT_DIR%backend.py" server %PORT%
goto end

:do_ide
echo [*] Launching Earth IDE...
%PYTHON_CMD% "%SCRIPT_DIR%backend.py" ide
goto end

:do_audit
echo [*] Running Earth Ecosystem Integrity Audit...
%PYTHON_CMD% "%SCRIPT_DIR%backend.py" audit
goto end

:do_epip
shift
%PYTHON_CMD% "%SCRIPT_DIR%backend.py" epip %*
goto end

:do_run
shift
%PYTHON_CMD% "%SCRIPT_DIR%backend.py" run %*
goto end

:do_run_direct
%PYTHON_CMD% "%SCRIPT_DIR%backend.py" run %*
goto end

:help
echo ========================================================
echo  Earth Unified Master Backend Runner (backend.bat)
echo ========================================================
echo Usage:
echo   backend.bat ^<filename.sl ^| filename.et^>  - Run an Earth script
echo   backend.bat server [port]                - Start Backend HTTP server
echo   backend.bat ide                          - Launch Earth IDE
echo   backend.bat audit                        - Run ecosystem audit
echo   backend.bat install                      - Configure environment and associations
echo   backend.bat epip ^<args^>                  - Manage packages
echo   backend.bat help                         - Display this help message
echo ========================================================

:end
endlocal
