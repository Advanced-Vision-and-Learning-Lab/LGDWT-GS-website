#!/bin/bash

# Quick script to push to GitHub
# Replace YOUR_USERNAME and REPO_NAME with your actual values

echo "Enter your GitHub username:"
read GITHUB_USERNAME

echo "Enter your repository name (or press Enter for 'lgdwt-gs-website'):"
read REPO_NAME
REPO_NAME=${REPO_NAME:-lgdwt-gs-website}

echo ""
echo "Adding remote repository..."
git remote add origin "https://github.com/${GITHUB_USERNAME}/${REPO_NAME}.git" 2>/dev/null || git remote set-url origin "https://github.com/${GITHUB_USERNAME}/${REPO_NAME}.git"

echo ""
echo "Pushing to GitHub..."
git push -u origin main

echo ""
echo "✅ Done! Your code is on GitHub."
echo ""
echo "📋 Next: Enable GitHub Pages"
echo "   1. Go to: https://github.com/${GITHUB_USERNAME}/${REPO_NAME}/settings/pages"
echo "   2. Under 'Source', select:"
echo "      - Branch: main"
echo "      - Folder: / (root)"
echo "   3. Click 'Save'"
echo ""
echo "🌐 Your website will be at:"
echo "   https://${GITHUB_USERNAME}.github.io/${REPO_NAME}/"
