<#
.SYNOPSIS
    Simple interpreter for .sl script files.
.DESCRIPTION
    Reads a .sl file, translates core .sl syntax into Python, then executes it using Python.
    This allows `script.sl` to be linked through `interpreter.ps1` on Windows.
#>

param(
    [Parameter(Position=0, ValueFromPipelineByPropertyName=$true)]
    [string]$Path = (Join-Path -Path $PSScriptRoot -ChildPath 'script.sl')
)

function Get-PythonExecutable {
    param(
        [string]$Preferred
    )

    if ($Preferred) {
        return $Preferred
    }

    foreach ($command in 'py', 'python', 'python3') {
        $entry = Get-Command $command -ErrorAction SilentlyContinue
        if ($entry) {
            return $entry.Source
        }
    }

    return $null
}

function Convert-SlToPython {
    param(
        [string]$Content
    )

    $convertedLines = @()
    $lines = $Content -split "`r?`n"

    foreach ($rawLine in $lines) {
        $line = $rawLine -replace '[;]+$',''
        $trimmed = $line.Trim()

        if ($trimmed -eq '') {
            $convertedLines += ''
            continue
        }

        if ($trimmed -match '^(import|from)\s+') {
            if ($trimmed -match '^import\s+(.+)$') {
                $moduleList = $matches[1] -split ',' | ForEach-Object { $_.Trim() }
                $importable = $moduleList | Where-Object { $_ -notmatch '\.psm1$' -and $_ -notmatch '\.ps1$' }
                if ($importable.Count -gt 0) {
                    $convertedLines += "import $($importable -join ', ')"
                } else {
                    $convertedLines += "# ignored import: $trimmed"
                }
                continue
            }
        }

        if ($trimmed -match '^define\s+([A-Za-z_][A-Za-z0-9_]*)\s*\((.*?)\)\s*:(.*)$') {
            $indent = $line.Substring(0, $line.IndexOf($trimmed))
            $convertedLines += "$indentdef $($matches[1])($($matches[2])):$($matches[3])"
            continue
        }

        $line = $line -replace '\blen\(\s*([^\)]+)\s*\)\s*/\s*2\b', 'len($1)//2'
        $convertedLines += $line
    }

    return $convertedLines -join "`n"
}

function Invoke-SlScript {
    param(
        [Parameter(Mandatory=$true)]
        [string]$ScriptPath
    )

    if (-not (Test-Path -Path $ScriptPath)) {
        throw "Script file not found: $ScriptPath"
    }

    $source = Get-Content -Path $ScriptPath -Raw -ErrorAction Stop
    $pythonCode = Convert-SlToPython -Content $source
    $tempFile = Join-Path -Path $env:TEMP -ChildPath "script_sl_$(Get-Random).py"

    try {
        $pythonCode | Set-Content -Path $tempFile -Encoding UTF8

        $pythonExe = Get-PythonExecutable
        if (-not $pythonExe) {
            throw "Python executable not found on PATH. Install Python and retry."
        }

        Write-Host "Executing '$ScriptPath' using Python: $pythonExe" -ForegroundColor Cyan
        & $pythonExe $tempFile
        $exitCode = $LASTEXITCODE

        if ($exitCode -ne 0) {
            throw "Python exited with code $exitCode"
        }
    }
    finally {
        if (Test-Path -Path $tempFile) {
            Remove-Item -Path $tempFile -Force -ErrorAction SilentlyContinue
        }
    }
}

Invoke-SlScript -ScriptPath $Path
