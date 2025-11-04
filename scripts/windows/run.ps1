Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

if (!(Test-Path .venv)) { Write-Host "Run setup first: scripts\\windows\\setup.ps1" -ForegroundColor Yellow; exit 1 }

& .\.venv\Scripts\python app.py


