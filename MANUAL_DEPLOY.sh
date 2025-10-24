#!/bin/bash

# MANUAL DEPLOYMENT GUIDE
# Follow these commands step-by-step

cat << 'EOF'
================================================
🚀 MANUAL DEPLOYMENT GUIDE
================================================

Copy and paste these commands one at a time into your terminal.
Replace [YOUR-USERNAME] with your actual GitHub username.

================================================
STEP 1: Navigate to portfolio folder
================================================

cd /path/to/portfolio

# (Update the path above to where you downloaded the portfolio files)

================================================
STEP 2: Make sure you have git installed
================================================

git --version

# If you get an error, install git:
# Mac: brew install git
# Windows: Download from https://git-scm.com/downloads
# Linux: sudo apt-get install git

================================================
STEP 3: Configure git (if first time)
================================================

git config --global user.name "Your Name"
git config --global user.email "your.email@example.com"

# Replace with your actual name and email

================================================
STEP 4: Initialize git repository
================================================

git init

# This creates a .git folder

================================================
STEP 5: Add all files
================================================

git add .

# This stages all files for commit

================================================
STEP 6: Create initial commit
================================================

git commit -m "Initial portfolio deployment"

# This saves your changes locally

================================================
STEP 7: Rename branch to main
================================================

git branch -M main

# GitHub uses 'main' as default branch name

================================================
STEP 8: Add GitHub remote
================================================

git remote add origin https://github.com/[YOUR-USERNAME]/[YOUR-USERNAME].github.io.git

# IMPORTANT: Replace [YOUR-USERNAME] with your GitHub username!
# Example: git remote add origin https://github.com/dylanbray/dylanbray.github.io.git

================================================
STEP 9: Push to GitHub
================================================

git push -u origin main

# You'll be asked for credentials:
# Username: your GitHub username
# Password: your Personal Access Token (NOT your password!)

================================================
CREATING A PERSONAL ACCESS TOKEN
================================================

GitHub requires tokens instead of passwords:

1. Go to: https://github.com/settings/tokens
2. Click "Generate new token (classic)"
3. Name it: "Portfolio Deployment"
4. Set expiration: 90 days (or longer)
5. Check these permissions:
   ✓ repo (all)
6. Click "Generate token"
7. COPY THE TOKEN (you won't see it again!)
8. Use this token as your password when pushing

================================================
STEP 10: Enable GitHub Pages
================================================

After pushing successfully:

1. Go to your repository:
   https://github.com/[YOUR-USERNAME]/[YOUR-USERNAME].github.io

2. Click "Settings" tab (top right)

3. Scroll down or click "Pages" in left sidebar

4. Under "Source":
   - Branch: Select "main"
   - Folder: Select "/ (root)"

5. Click "Save"

6. Wait 2-3 minutes for deployment

7. Your site will be live at:
   https://[YOUR-USERNAME].github.io

================================================
TROUBLESHOOTING
================================================

ERROR: "fatal: not a git repository"
FIX: Run: git init

ERROR: "fatal: remote origin already exists"
FIX: Run: git remote remove origin
      Then try adding remote again

ERROR: "Authentication failed"
FIX: Make sure you're using a Personal Access Token, not your password
     Create token at: https://github.com/settings/tokens

ERROR: "Repository not found"
FIX: Make sure you created the repository on GitHub first
     Go to: https://github.com/new
     Name: [YOUR-USERNAME].github.io
     Public repository

ERROR: "Permission denied"
FIX: Check your GitHub username is correct
     Make sure repository exists and is public

================================================
UPDATING YOUR SITE LATER
================================================

When you make changes:

1. Edit your files (index.html, etc.)

2. Stage changes:
   git add .

3. Commit changes:
   git commit -m "Updated portfolio content"

4. Push to GitHub:
   git push

5. Changes appear in 1-2 minutes!

================================================
VERIFICATION CHECKLIST
================================================

After deployment, verify:

✓ Can you access: https://[YOUR-USERNAME].github.io
✓ All navigation links work
✓ Images/icons display correctly
✓ Mobile view works (test on phone)
✓ Google Drive links work (if added)
✓ Social media links go to correct profiles

================================================
QUICK REFERENCE
================================================

Check status:           git status
View changes:           git diff
View commit history:    git log
Undo changes:          git checkout -- <file>
View remotes:          git remote -v

================================================

Need help? Check:
- GitHub Pages Docs: https://pages.github.com
- Git Documentation: https://git-scm.com/doc
- Your README.md file

================================================
EOF
