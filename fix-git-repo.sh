#!/bin/bash

# Fix Git Repository - Remove Problematic Files
# Run this in the Emergent terminal to clean up the repo

echo "🔧 Fixing Git Repository..."

cd /app

# Remove the existing git repo
rm -rf .git

# Reinitialize
git init

# Add .gitignore first
cat > .gitignore << 'GITIGNORE'
# Node modules
node_modules/
frontend/node_modules/
backend/__pycache__/

# Hardhat
cache/
artifacts/
typechain-types/

# Environment - NEVER commit these!
.env
.env.local
*.env
**/*private*
**/*secret*
**/*key*.txt

# Testing
coverage/
coverage.json

# Build
dist/
build/
*.log

# IDE
.vscode/
.idea/

# OS
.DS_Store
Thumbs.db

# Deployment records (keep template)
deployments/*.json
!deployments/.gitkeep

# Frontend build
frontend/build/
frontend/dist/

# Python
*.pyc
__pycache__/
venv/

# Emergent specific
.emergent/

# Lock files (too large)
yarn.lock
frontend/yarn.lock
package-lock.json

# Temp
*.tmp
*.temp
GITIGNORE

# Stage important files only
git add .gitignore
git add .env.example
git add hardhat.config.js
git add package.json

# Contracts
git add contracts/*.sol
git add contracts/README.md

# Scripts
git add scripts/deploy.js

# Tests
git add test/*.test.js

# Documentation
git add README.md
git add QUICKSTART.md
git add DEPLOYMENT_GUIDE.md
git add GITHUB_SETUP.md

# Deployment
git add deployments/.gitkeep

echo "✅ Repository cleaned and files staged"
echo ""
echo "Next steps:"
echo "1. git config user.name 'Your Name'"
echo "2. git config user.email 'your@email.com'"
echo "3. git commit -m 'Initial commit: MathMint Quiz contracts'"
echo "4. git remote add origin YOUR_GITHUB_URL"
echo "5. git push -u origin main"
