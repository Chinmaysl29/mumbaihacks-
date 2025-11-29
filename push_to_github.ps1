Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Pushing Medipilot Nexus to GitHub" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Check if git is installed
$gitInstalled = $false
while (-not $gitInstalled) {
    try {
        $gitVersion = git --version
        Write-Host "[✓] Git is installed: $gitVersion" -ForegroundColor Green
        $gitInstalled = $true
    } catch {
        Write-Host "[✗] Git is not installed yet. Waiting..." -ForegroundColor Yellow
        Start-Sleep -Seconds 30
    }
}

Write-Host ""
Write-Host "[1/5] Initializing Git repository..." -ForegroundColor Yellow
git init

Write-Host ""
Write-Host "[2/5] Adding remote repository..." -ForegroundColor Yellow
git remote remove origin 2>$null
git remote add origin https://github.com/Chinmaysl29/mumbaihacks-.git

Write-Host ""
Write-Host "[3/5] Adding all files..." -ForegroundColor Yellow
git add .

Write-Host ""
Write-Host "[4/5] Committing changes..." -ForegroundColor Yellow
git commit -m "Initial commit: Medipilot Nexus - Complete healthcare management system with appointment booking agent"

Write-Host ""
Write-Host "[5/5] Pushing to GitHub..." -ForegroundColor Yellow
git branch -M main
git push -f -u origin main

if ($LASTEXITCODE -eq 0) {
    Write-Host ""
    Write-Host "========================================" -ForegroundColor Green
    Write-Host "SUCCESS! All files pushed to GitHub" -ForegroundColor Green
    Write-Host "========================================" -ForegroundColor Green
} else {
    Write-Host ""
    Write-Host "========================================" -ForegroundColor Red
    Write-Host "ERROR: Push failed" -ForegroundColor Red
    Write-Host "You may need to authenticate or check your credentials" -ForegroundColor Yellow
    Write-Host "========================================" -ForegroundColor Red
}
