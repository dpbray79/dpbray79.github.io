#!/bin/bash

echo "=================================="
echo "🔍 SYSTEM CHECK"
echo "=================================="
echo ""

# Check Git
echo "Checking Git installation..."
if command -v git &> /dev/null; then
    GIT_VERSION=$(git --version)
    echo "✅ Git is installed: $GIT_VERSION"
else
    echo "❌ Git is NOT installed"
    echo ""
    echo "Install Git:"
    echo "  Mac: brew install git"
    echo "  Windows: https://git-scm.com/downloads"
    echo "  Linux: sudo apt-get install git"
fi

echo ""

# Check Git config
echo "Checking Git configuration..."
GIT_NAME=$(git config --global user.name 2>/dev/null)
GIT_EMAIL=$(git config --global user.email 2>/dev/null)

if [ -n "$GIT_NAME" ]; then
    echo "✅ Git name configured: $GIT_NAME"
else
    echo "⚠️  Git name not configured"
    echo "   Run: git config --global user.name \"Your Name\""
fi

if [ -n "$GIT_EMAIL" ]; then
    echo "✅ Git email configured: $GIT_EMAIL"
else
    echo "⚠️  Git email not configured"
    echo "   Run: git config --global user.email \"your.email@example.com\""
fi

echo ""
echo "=================================="
echo "Current directory:"
pwd
echo "=================================="
echo ""
echo "Files in current directory:"
ls -la
echo ""
echo "=================================="
