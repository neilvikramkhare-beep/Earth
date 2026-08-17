<#
.SYNOPSIS
    Interpreter launcher for .sl script files.
.DESCRIPTION
    Reads a .sl file and executes it using the Earth Compiler engine (earth_compiler.py).
    Allows `script.sl` to be invoked seamlessly through `interpreter.ps1` on Windows.
#>

param(
    [Parameter(Position=0, ValueFromPipelineByPropertyName=$true)]
    [string]$Path = (Join-Path -Path $PSScriptRoot -ChildPath 'script.sl')
)

function Get-PythonExecutable {
    foreach ($command in 'py', 'python', 'python3') {
        $entry = Get-Command $command -ErrorAction SilentlyContinue
        if ($entry) {
            return $entry.Source
        }
    }
    return $null
}

if (-not (Test-Path -Path $Path)) {
    Write-Error "Script file not found: $Path"
    exit 1
}

$pythonExe = Get-PythonExecutable
if (-not $pythonExe) {
    Write-Error "Python executable not found on PATH. Install Python and retry."
    exit 1
}

$compilerScript = Join-Path -Path $PSScriptRoot -ChildPath "earth_compiler.py"
Write-Host "Executing '$Path' using Earth Compiler..." -ForegroundColor Cyan
& $pythonExe $compilerScript $Path
