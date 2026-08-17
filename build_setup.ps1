Write-Host "Installing PyInstaller..."
pip install pyinstaller

Write-Host "Compiling Earth Compiler into earth.exe..."
pyinstaller --noconfirm --onefile --name "earth" --add-data "SL_Packages;SL_Packages" earth_compiler.py

if (-not (Test-Path "dist\earth.exe")) {
    Write-Host "Failed to build earth.exe!"
    exit 1
}

Write-Host "Compiling Earth Installer into EarthSetup.exe..."
pyinstaller --noconfirm --onefile --name "EarthSetup" --add-data "dist\earth.exe;earth_dist" earth_installer.py

if (Test-Path "dist\EarthSetup.exe") {
    Write-Host "Successfully built dist\EarthSetup.exe!"
} else {
    Write-Host "Failed to build EarthSetup.exe!"
}
