Write-Host "Compiling pointer_lib.cpp to pointer_lib.dll..."
g++ -shared -o pointer_lib.dll pointer_lib.cpp

if ($LASTEXITCODE -eq 0) {
    Write-Host "Compilation successful."
    Write-Host "Installing python dependencies..."
    pip install -r requirements.txt
    
    Write-Host "Starting FastAPI Server..."
    uvicorn main:app --reload
} else {
    Write-Host "Compilation failed. Ensure g++ (MinGW) is installed and in your PATH."
}
