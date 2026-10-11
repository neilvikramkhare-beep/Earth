<#
==============================================================================
 Earth Language Unified Master Backend PowerShell Script
 File: backend.ps1
 Provides complete PowerShell automation for running, building, and serving Earth Language.
==============================================================================
#>

param (
    [string]$Command = "help",
    [string]$Target = "",
    [int]$Port = 8080
)

$scriptDir = Split-Path -Parent $MyInvocation.MyCommand.Path

function Show-Help {
    Write-Host "========================================================" -ForegroundColor Cyan
    Write-Host " Earth Unified Master Backend PowerShell (backend.ps1)" -ForegroundColor Cyan
    Write-Host "========================================================" -ForegroundColor Cyan
    Write-Host "Usage:"
    Write-Host "  .\backend.ps1 run <file.sl | file.et>  - Run an Earth script"
    Write-Host "  .\backend.ps1 compile <file>          - Compile an Earth script"
    Write-Host "  .\backend.ps1 server [port]           - Start Backend HTTP server"
    Write-Host "  .\backend.ps1 audit                   - Run system audit"
    Write-Host "  .\backend.ps1 ide                     - Launch Earth IDE"
    Write-Host "  .\backend.ps1 help                    - Display this help message"
    Write-Host "========================================================"
}

switch ($Command.ToLower()) {
    "run" {
        if (-not $Target) { Write-Host "Error: Specify a file to run." -ForegroundColor Red; exit 1 }
        python "$scriptDir\backend.py" run $Target
    }
    "compile" {
        if (-not $Target) { Write-Host "Error: Specify a file to compile." -ForegroundColor Red; exit 1 }
        python "$scriptDir\backend.py" compile $Target
    }
    "server" {
        Write-Host "[*] Starting Earth Backend Server on port $Port..." -ForegroundColor Green
        python "$scriptDir\backend.py" server $Port
    }
    "audit" {
        python "$scriptDir\backend.py" audit
    }
    "ide" {
        python "$scriptDir\backend.py" ide
    }
    "help" {
        Show-Help
    }
    default {
        # Check if Command is a file path
        if (Test-Path $Command) {
            python "$scriptDir\backend.py" run $Command
        } else {
            Show-Help
        }
    }
}
