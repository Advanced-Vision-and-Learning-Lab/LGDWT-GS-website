#!/bin/bash

echo "🔧 Fix GitHub Repository Setup"
echo "=============================="
echo ""

# Remove any existing incorrect remote
git remote remove origin 2>/dev/null

echo "📋 Step 1: Find your GitHub username"
echo "   - Go to https://github.com and log in"
echo "   - Click your profile picture (top right)"
echo "   - Your username is shown in the URL or under your name"
echo ""
echo "   OR check: https://github.com/settings/profile"
echo ""
read -p "Enter your CORRECT GitHub username: " GITHUB_USERNAME

echo ""
echo "📋 Step 2: Repository name"
echo "   Make sure you've created the repository on GitHub first!"
echo "   Go to: https://github.com/new if you haven't created it yet"
echo ""
read -p "Enter your repository name (default: lgdwt-gs-website): " REPO_NAME
REPO_NAME=${REPO_NAME:-lgdwt-gs-website}

echo ""
echo "🔗 Adding correct remote repository..."
git remote add origin "https://github.com/${GITHUB_USERNAME}/${REPO_NAME}.git"

echo ""
echo "📤 Testing connection..."
if git ls-remote origin &>/dev/null; then
    echo "✅ Repository found! Pushing code..."
    git push -u origin main
    echo ""
    echo "✅ Success! Your code is now on GitHub."
    echo ""
    echo "📋 Final Step: Enable GitHub Pages"
    echo "   1. Go to: https://github.com/${GITHUB_USERNAME}/${REPO_NAME}/settings/pages"
    echo "   2. Under 'Source', select:"
    echo "      - Branch: main"
    echo "      - Folder: / (root)"
    echo "   3. Click 'Save'"
    echo ""
    echo "🌐 Your website will be at:"
    echo "   https://${GITHUB_USERNAME}.github.io/${REPO_NAME}/"
else
    echo "❌ Repository not found!"
    echo ""
    echo "Please make sure:"
    echo "   1. You've created the repository at: https://github.com/${GITHUB_USERNAME}/${REPO_NAME}"
    echo "   2. The repository is PUBLIC (required for free GitHub Pages)"
    echo "   3. Your username is correct: ${GITHUB_USERNAME}"
    echo ""
    echo "After creating the repository, run this script again."
fi
