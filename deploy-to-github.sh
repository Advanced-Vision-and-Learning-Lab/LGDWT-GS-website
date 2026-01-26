#!/bin/bash

# GitHub Pages Deployment Script
# This script helps you deploy your website to GitHub Pages

echo "🚀 LGDWT-GS Website - GitHub Pages Deployment"
echo "=============================================="
echo ""

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo "❌ Git is not installed. Please install Git first."
    exit 1
fi

echo "📋 Step 1: Create a new repository on GitHub"
echo "   Go to: https://github.com/new"
echo "   Repository name: lgdwt-gs-website (or your preferred name)"
echo "   Make it PUBLIC (required for free GitHub Pages)"
echo "   DO NOT initialize with README, .gitignore, or license"
echo ""
read -p "Press Enter after you've created the repository on GitHub..."

echo ""
echo "📋 Step 2: Enter your GitHub username:"
read -p "GitHub username: " GITHUB_USERNAME

echo ""
echo "📋 Step 3: Enter your repository name (or press Enter for 'lgdwt-gs-website'):"
read -p "Repository name: " REPO_NAME
REPO_NAME=${REPO_NAME:-lgdwt-gs-website}

echo ""
echo "🔄 Initializing git repository..."
cd "$(dirname "$0")"
git init
git branch -M main

echo ""
echo "📦 Adding files..."
git add .

echo ""
echo "💾 Creating initial commit..."
git commit -m "Initial website commit"

echo ""
echo "🔗 Adding remote repository..."
git remote add origin "https://github.com/${GITHUB_USERNAME}/${REPO_NAME}.git"

echo ""
echo "📤 Pushing to GitHub..."
echo "   (You may be prompted for your GitHub credentials)"
git push -u origin main

echo ""
echo "✅ Done! Your code is now on GitHub."
echo ""
echo "📋 Final Step: Enable GitHub Pages"
echo "   1. Go to: https://github.com/${GITHUB_USERNAME}/${REPO_NAME}/settings/pages"
echo "   2. Under 'Source', select:"
echo "      - Branch: main"
echo "      - Folder: / (root)"
echo "   3. Click 'Save'"
echo ""
echo "🌐 Your website will be live at:"
echo "   https://${GITHUB_USERNAME}.github.io/${REPO_NAME}/"
echo ""
echo "⏳ It may take a few minutes for the site to be available."
