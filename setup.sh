#!/bin/bash

# Portfolio Setup Script
# This will help you update all the placeholders in your portfolio

echo "================================================"
echo "🚀 PORTFOLIO SETUP WIZARD"
echo "================================================"
echo ""
echo "Let's set up your portfolio for deployment!"
echo ""

# GitHub username
echo "1️⃣  What is your GitHub username?"
echo "   (This will be used for your GitHub profile links)"
read -p "   GitHub username: " GITHUB_USERNAME

# For now, we'll use placeholder for Google Drive links
echo ""
echo "2️⃣  Google Drive Setup"
echo "   ⚠️  You need to upload files to Google Drive first!"
echo ""
echo "   Do you have your Google Drive FILE_IDs ready? (y/n)"
read -p "   > " HAS_DRIVE_IDS

if [ "$HAS_DRIVE_IDS" = "y" ]; then
    echo ""
    echo "   Great! Enter your Google Drive FILE_IDs:"
    echo "   (You can leave blank and add later)"
    echo ""
    read -p "   Resume FILE_ID: " RESUME_ID
    read -p "   5S Project FILE_ID: " PROJECT_5S_ID
    read -p "   Clarity AI FILE_ID: " CLARITY_ID
    read -p "   Analytics Project FILE_ID: " ANALYTICS_ID
    read -p "   Full Portfolio FILE_ID: " PORTFOLIO_ID
else
    echo ""
    echo "   No problem! We'll use placeholders for now."
    echo "   You can add your Google Drive links later."
    echo ""
    RESUME_ID="YOUR_RESUME_ID"
    PROJECT_5S_ID="YOUR_5S_ID"
    CLARITY_ID="YOUR_CLARITY_ID"
    ANALYTICS_ID="YOUR_ANALYTICS_ID"
    PORTFOLIO_ID="YOUR_PORTFOLIO_ID"
fi

# Create backup
echo ""
echo "3️⃣  Creating backup of original files..."
cp index.html index.html.backup
cp project-clarity.html project-clarity.html.backup
echo "   ✅ Backup created!"

# Update index.html
echo ""
echo "4️⃣  Updating index.html..."

# Replace GitHub username
sed -i "s/YOUR_GITHUB/$GITHUB_USERNAME/g" index.html

# Replace Google Drive IDs if provided
if [ "$HAS_DRIVE_IDS" = "y" ]; then
    [ -n "$RESUME_ID" ] && sed -i "s/YOUR_RESUME_ID/$RESUME_ID/g" index.html
    [ -n "$PROJECT_5S_ID" ] && sed -i "s/YOUR_5S_ID/$PROJECT_5S_ID/g" index.html
    [ -n "$CLARITY_ID" ] && sed -i "s/YOUR_CLARITY_ID/$CLARITY_ID/g" index.html
    [ -n "$ANALYTICS_ID" ] && sed -i "s/YOUR_ANALYTICS_ID/$ANALYTICS_ID/g" index.html
    [ -n "$PORTFOLIO_ID" ] && sed -i "s/YOUR_PORTFOLIO_ID/$PORTFOLIO_ID/g" index.html
fi

# Update project-clarity.html
echo "   Updating project-clarity.html..."
sed -i "s/YOUR_GITHUB/$GITHUB_USERNAME/g" project-clarity.html
[ "$HAS_DRIVE_IDS" = "y" ] && [ -n "$CLARITY_ID" ] && sed -i "s/YOUR_CLARITY_PORTFOLIO_ID/$CLARITY_ID/g" project-clarity.html

echo "   ✅ Files updated!"

# Summary
echo ""
echo "================================================"
echo "✅ SETUP COMPLETE!"
echo "================================================"
echo ""
echo "Your portfolio is configured with:"
echo "  • GitHub: github.com/$GITHUB_USERNAME"
if [ "$HAS_DRIVE_IDS" = "y" ]; then
    echo "  • Google Drive links: Configured"
else
    echo "  • Google Drive links: Need to add later"
fi
echo ""
echo "Next steps:"
echo "  1. Review your files (backup saved as *.backup)"
echo "  2. Initialize git repository"
echo "  3. Push to GitHub"
echo "  4. Enable GitHub Pages"
echo ""
echo "Ready to proceed with deployment? (y/n)"
read -p "> " PROCEED

if [ "$PROCEED" = "y" ]; then
    echo ""
    echo "Great! Run the deployment script next:"
    echo "  ./deploy.sh"
else
    echo ""
    echo "No problem! You can run ./deploy.sh when ready."
fi

echo ""
echo "================================================"
