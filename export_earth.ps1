$earthDir = "C:\Users\Admin\Desktop\Earth"
$earthBat = "$earthDir\earth.bat"

Write-Host "Adding Earth to User PATH..."
$userPath = [Environment]::GetEnvironmentVariable("Path", "User")
if ($userPath -notmatch [regex]::Escape($earthDir)) {
    $newPath = $userPath
    if (-not $newPath.EndsWith(";")) {
        $newPath += ";"
    }
    $newPath += $earthDir
    [Environment]::SetEnvironmentVariable("Path", $newPath, "User")
    Write-Host "Successfully added $earthDir to PATH."
} else {
    Write-Host "Earth directory is already in the PATH."
}

Write-Host "Registering .sl file extension..."
# Register extension in HKCU so it doesn't require Admin privileges
$extensionPath = "HKCU:\Software\Classes\.sl"
$progIdPath = "HKCU:\Software\Classes\EarthScript"

if (-not (Test-Path $extensionPath)) {
    New-Item -Path $extensionPath -Force | Out-Null
}
Set-ItemProperty -Path $extensionPath -Name "(Default)" -Value "EarthScript"

if (-not (Test-Path $progIdPath)) {
    New-Item -Path $progIdPath -Force | Out-Null
}
Set-ItemProperty -Path $progIdPath -Name "(Default)" -Value "Earth Script File"

$commandPath = "$progIdPath\shell\open\command"
if (-not (Test-Path $commandPath)) {
    New-Item -Path $commandPath -Force | Out-Null
}
# Wrap the command to execute earth.bat and pass the file as argument
$commandString = "`"$earthBat`" `"%1`" %*"
Set-ItemProperty -Path $commandPath -Name "(Default)" -Value $commandString

Write-Host "Successfully associated .sl extension with Earth."
Write-Host "Please restart your terminal to apply the PATH changes."
