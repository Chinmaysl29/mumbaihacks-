# Git Setup and Push Instructions

## Prerequisites
1. Install Git from https://git-scm.com/download/win
2. After installation, restart your terminal/command prompt

## Steps to Push to GitHub

### 1. Initialize Git Repository (if not already initialized)
```bash
git init
```

### 2. Add Remote Repository
```bash
git remote add origin https://github.com/Chinmaysl29/mumbaihacks-.git
```

### 3. Add All Files
```bash
git add .
```

### 4. Commit Changes
```bash
git commit -m "Initial commit: Medipilot Nexus - Complete healthcare management system"
```

### 5. Set Branch and Push
```bash
git branch -M main
git push -u origin main
```

## If Repository Already Exists

If the remote already exists, you may need to:
```bash
git remote set-url origin https://github.com/Chinmaysl29/mumbaihacks-.git
git push -u origin main
```

## Force Push (if needed)
```bash
git push -u origin main --force
```

## Files Included
- All frontend React components
- Backend Express server with API endpoints
- Database schemas
- Configuration files
- Agent JSON configurations
- Documentation

