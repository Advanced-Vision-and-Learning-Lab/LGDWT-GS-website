#!/bin/bash

GITHUB_USERNAME="Shima-Salehi"
REPO_NAME="lgdwt-gs-website"
GITHUB_TOKEN="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"

echo "🔗 Setting up remote..."
cd /Users/shimasalehi/Downloads/LGDWT-GS/website

# Remove old remote
git remote remove origin 2>/dev/null

# Add remote with token
git remote add origin "https://${GITHUB_TOKEN}@github.com/${GITHUB_USERNAME}/${REPO_NAME}.git"

echo "📤 Pushing to GitHub..."
git push -u origin main

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ Success! Your code is on GitHub!"
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
else
    echo ""
    echo "❌ Push failed. Please check:"
    echo "   - Repository exists: https://github.com/${GITHUB_USERNAME}/${REPO_NAME}"
    echo "   - Repository is PUBLIC"
fi
