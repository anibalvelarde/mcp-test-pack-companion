# Define the directory and file paths
$anyllmDir = [System.IO.Path]::Combine($HOME, '.anyllm')
$envFile = [System.IO.Path]::Combine($anyllmDir, '.env')

# Create the directory if it doesn't exist
if (-Not (Test-Path -Path $anyllmDir)) {
    Write-Host "Creating directory: $anyllmDir"
    New-Item -ItemType Directory -Path $anyllmDir | Out-Null
}

# Create the .env file if it doesn't exist
if (-Not (Test-Path -Path $envFile)) {
    Write-Host "Creating .env file at: $envFile"
    New-Item -ItemType File -Path $envFile | Out-Null
    Set-Content -Path $envFile -Value "# Add your environment variables here"
}

Write-Host "Setup complete."