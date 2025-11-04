param(
  [switch]$Recreate
)

Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

if ($Recreate -and (Test-Path .venv)) { Remove-Item -Recurse -Force .venv }

if (!(Test-Path .venv)) {
  if (Get-Command py -ErrorAction SilentlyContinue) {
    py -3.11 -m venv .venv
  } elseif (Test-Path "$Env:LOCALAPPDATA\Programs\Python\Python311\python.exe") {
    & "$Env:LOCALAPPDATA\Programs\Python\Python311\python.exe" -m venv .venv
  } else {
    Write-Host "Python 3.11 not found. Install via: winget install -e --id Python.Python.3.11" -ForegroundColor Yellow
    exit 1
  }
}

& .\.venv\Scripts\python -m pip install --upgrade pip
& .\.venv\Scripts\pip install -r requirements.txt

Write-Host "Setup complete." -ForegroundColor Green


