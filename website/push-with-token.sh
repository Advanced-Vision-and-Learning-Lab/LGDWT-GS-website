#!/bin/bash

echo "🔐 GitHub Push with Personal Access Token"
echo "=========================================="
echo ""

# Remove any existing incorrect remote
git remote remove origin 2>/dev/null

echo "📋 Step 1: Create a Personal Access Token (if you don't have one)"
echo "   1. Go to: https://github.com/settings/tokens"
echo "   2. Click 'Generate new token' → 'Generate new token (classic)'"
echo "   3. Give it a name: 'Website Deployment'"
echo "   4. Select scope: ✅ repo (check the 'repo' checkbox)"
echo "   5. Click 'Generate token'"
echo "   6. COPY THE TOKEN (you won't see it again!)"
echo ""
read -p "Press Enter after you have your token ready..."

echo ""
read -p "Enter your GitHub username: " GITHUB_USERNAME
read -p "Enter your repository name (default: lgdwt-gs-website): " REPO_NAME
REPO_NAME=${REPO_NAME:-lgdwt-gs-website}

echo ""
echo "🔑 Enter your Personal Access Token:"
echo "   (It will be hidden for security)"
read -s GITHUB_TOKEN

echo ""
echo "🔗 Adding remote with token authentication..."
git remote add origin "https://${GITHUB_TOKEN}@github.com/${GITHUB_USERNAME}/${REPO_NAME}.git"

echo ""
echo "📤 Testing connection and pushing..."
if git ls-remote origin &>/dev/null; then
    echo "✅ Connection successful! Pushing code..."
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
    echo "❌ Connection failed!"
    echo ""
    echo "Please check:"
    echo "   1. Your token is correct"
    echo "   2. Token has 'repo' scope enabled"
    echo "   3. Repository exists: https://github.com/${GITHUB_USERNAME}/${REPO_NAME}"
    echo "   4. Repository is PUBLIC"
fi

# Remove token from remote URL for security (store it in credential helper instead)
echo ""
echo "🔒 Securing your token..."
git remote set-url origin "https://github.com/${GITHUB_USERNAME}/${REPO_NAME}.git"
git config credential.helper store
echo "https://${GITHUB_USERNAME}:${GITHUB_TOKEN}@github.com" > ~/.git-credentials 2>/dev/null || echo "Note: You may need to enter token again on next push"
