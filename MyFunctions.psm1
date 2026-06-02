function Get-Greeting {
    param (
        [string]$Name = "World"
    )
    return "Hello, $Name! This is from the module."
}

function Get-InternalData {
    return "Secret Data"
}

Export-ModuleMember -Function Get-Greeting, Get-InternalData
function sin {
    param($a)
    return $a + 1
}
Write-Host "Sin is $(sin 1)"

function cos {
    param($a)
    return $a + 1
}
Write-Host "Cos is $(cos 1)"
function power {
    param($a)
    return $a * $a
}
Write-Host "Power is $(power 2)"
function divide {
    param($a)
    return $a / 2
}
Write-Host "Divide is $(divide 4)"
function multiply {
    param($a)
    return $a * 2
}
Write-Host "Multiply is $(multiply 2)"
function add {
    param($a)
    return $a + 2
}
Write-Host "Add is $(add 2)"
function subtract {
    param($a)
    return $a - 2
}
Write-Host "Subtract is $(subtract 2)"
function sin_theta {
    param($a)
    return sin(a)
}
function cos_theta {
    param($a)
    return cos(a)
}
function tan_theta {
    param($a)
    return tan(a)
}
Write-Host "Sin_theta is $(sin_theta 1)"
Write-Host "Cos_theta is $(cos_theta 1)"
Write-Host "Tan_theta is $(tan_theta 1)"

function Import-SlScript {
    param([string]$Path)
    
    $content = Get-Content -Path $Path
    $inFunc = $false
    $funcName = ""
    $funcArgs = @()
    $funcBody = @()
    
    foreach ($line in $content) {
        if ($line -match '^define\s+([a-zA-Z0-9_]+)\((.*?)\):') {
            $funcName = $matches[1]
            if ($matches[2].Trim() -ne "") {
                $funcArgs = $matches[2] -split ',' | ForEach-Object { "`$$($_.Trim())" }
            }
            else {
                $funcArgs = @()
            }
            $inFunc = $true
            $funcBody = @()
        }
        elseif ($inFunc -and $line -match '^    (.*)') {
            $bodyLine = $matches[1]
            # Very basic transpilation of variables from Python to PowerShell
            foreach ($arg in $funcArgs) {
                $argName = $arg.Substring(1)
                $bodyLine = [regex]::Replace($bodyLine, "\b$argName\b", $arg)
            }
            $funcBody += $bodyLine
        }
        elseif ($inFunc -and $line -match '^[^ ]') {
            # Reached the end of the function block
            $paramStr = ""
            if ($funcArgs.Count -gt 0) {
                $paramStr = "param($($funcArgs -join ', '))"
            }
            $bodyStr = $funcBody -join "`n"
            $sbStr = "$paramStr`n$bodyStr"
            try {
                $sb = [scriptblock]::Create($sbStr)
                Set-Item "Function:\global:$funcName" -Value $sb
            }
            catch {
                Write-Warning "Failed to transpile $funcName"
            }
            $inFunc = $false
        }
    }
}
Export-ModuleMember -Function Import-SlScript
$slScriptPath = Join-Path -Path $PSScriptRoot -ChildPath "script.sl"
if (Test-Path $slScriptPath) {
    Import-SlScript -Path $slScriptPath
}

