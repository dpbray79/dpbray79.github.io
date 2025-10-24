#!/bin/bash

# Portfolio Deployment Script for GitHub Pages
# This will guide you through deploying to GitHub

echo "================================================"
echo "🚀 GITHUB PAGES DEPLOYMENT"
echo "================================================"
echo ""

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo "❌ Git is not installed!"
    echo "   Install git first: https://git-scm.com/downloads"
    exit 1
fi

echo "✅ Git is installed"
echo ""

# Get GitHub username
echo "1️⃣  What is your GitHub username?"
read -p "   Username: " GITHUB_USERNAME

# Repository name
REPO_NAME="${GITHUB_USERNAME}.github.io"

echo ""
echo "2️⃣  Your repository will be: $REPO_NAME"
echo "   Your live site will be: https://${GITHUB_USERNAME}.github.io"
echo ""
echo "   Have you created this repository on GitHub already? (y/n)"
read -p "   > " HAS_REPO

if [ "$HAS_REPO" != "y" ]; then
    echo ""
    echo "   ⚠️  You need to create the repository first!"
    echo ""
    echo "   Steps to create repository:"
    echo "   1. Go to: https://github.com/new"
    echo "   2. Repository name: $REPO_NAME"
    echo "   3. Make it PUBLIC"
    echo "   4. DON'T add README, .gitignore, or license"
    echo "   5. Click 'Create repository'"
    echo ""
    echo "   Once created, run this script again!"
    exit 0
fi

# Initialize git if not already
if [ ! -d .git ]; then
    echo ""
    echo "3️⃣  Initializing git repository..."
    git init
    echo "   ✅ Git initialized"
else
    echo ""
    echo "3️⃣  Git already initialized"
fi

# Create .gitignore
echo ""
echo "4️⃣  Creating .gitignore..."
cat > .gitignore << 'EOF'
# Backup files
*.backup

# System files
.DS_Store
Thumbs.db

# Editor files
.vscode/
.idea/
*.swp
*.swo

# Node (if you add it later)
node_modules/
package-lock.json
EOF
echo "   ✅ .gitignore created"

# Add files
echo ""
echo "5️⃣  Adding files to git..."
git add .
echo "   ✅ Files added"

# Commit
echo ""
echo "6️⃣  Creating initial commit..."
git commit -m "Initial portfolio deployment"
echo "   ✅ Committed"

# Rename branch to main
echo ""
echo "7️⃣  Renaming branch to main..."
git branch -M main
echo "   ✅ Branch renamed"

# Add remote
echo ""
echo "8️⃣  Adding GitHub remote..."
REMOTE_URL="https://github.com/${GITHUB_USERNAME}/${REPO_NAME}.git"
git remote remove origin 2>/dev/null
git remote add origin $REMOTE_URL
echo "   ✅ Remote added: $REMOTE_URL"

# Push
echo ""
echo "9️⃣  Ready to push to GitHub!"
echo ""
echo "   This will upload your portfolio to GitHub."
echo "   You may be asked for your GitHub credentials."
echo ""
echo "   Continue? (y/n)"
read -p "   > " PUSH_NOW

if [ "$PUSH_NOW" = "y" ]; then
    echo ""
    echo "   Pushing to GitHub..."
    git push -u origin main
    
    if [ $? -eq 0 ]; then
        echo ""
        echo "================================================"
        echo "🎉 DEPLOYMENT SUCCESSFUL!"
        echo "================================================"
        echo ""
        echo "Your portfolio has been pushed to GitHub!"
        echo ""
        echo "Final Steps:"
        echo "  1. Go to: https://github.com/${GITHUB_USERNAME}/${REPO_NAME}"
        echo "  2. Click 'Settings' tab"
        echo "  3. Click 'Pages' in left sidebar"
        echo "  4. Under 'Source', select 'main' branch"
        echo "  5. Click 'Save'"
        echo "  6. Wait 2-3 minutes"
        echo ""
        echo "Your site will be live at:"
        echo "  🌐 https://${GITHUB_USERNAME}.github.io"
        echo ""
        echo "================================================"
    else
        echo ""
        echo "❌ Push failed!"
        echo ""
        echo "Common issues:"
        echo "  • Wrong username/password"
        echo "  • Repository doesn't exist"
        echo "  • Need to set up SSH keys or Personal Access Token"
        echo ""
        echo "GitHub now requires Personal Access Tokens instead of passwords."
        echo ""
        echo "To create a token:"
        echo "  1. Go to: https://github.com/settings/tokens"
        echo "  2. Click 'Generate new token (classic)'"
        echo "  3. Give it a name: 'Portfolio Deployment'"
        echo "  4. Check 'repo' permissions"
        echo "  5. Click 'Generate token'"
        echo "  6. Copy the token (you won't see it again!)"
        echo "  7. Use the token as your password when pushing"
        echo ""
    fi
else
    echo ""
    echo "No problem! You can push manually later:"
    echo "  git push -u origin main"
fi

echo ""
echo "================================================"
