@echo off
echo ========================================
echo Pushing Medipilot Nexus to GitHub
echo ========================================
echo.

echo [1/5] Initializing Git repository...
git init

echo.
echo [2/5] Adding remote repository...
git remote remove origin 2>nul
git remote add origin https://github.com/Chinmaysl29/mumbaihacks-.git

echo.
echo [3/5] Adding all files...
git add .

echo.
echo [4/5] Committing changes...
git commit -m "Initial commit: Medipilot Nexus - Complete healthcare management system with appointment booking agent"

echo.
echo [5/5] Pushing to GitHub...
git branch -M main
git push -u origin main

if %errorlevel% equ 0 (
    echo.
    echo ========================================
    echo SUCCESS! All files pushed to GitHub
    echo ========================================
) else (
    echo.
    echo ========================================
    echo ERROR: Push failed
    echo You may need to authenticate or check your credentials
    echo ========================================
)

pause
