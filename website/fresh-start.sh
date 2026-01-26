#!/bin/bash

echo "🔄 Creating a fresh, clean repository..."
echo ""

cd /Users/shimasalehi/Downloads/LGDWT-GS/website

# Backup current .git
mv .git .git.backup 2>/dev/null

# Initialize fresh repository
git init
git branch -M main

# Add only essential files
git add index.html style.css slider.js
git add camra1.gif
git add "DWT_3DGS_IEEE (7).pdf"
git add output/bicycle/test/ours_5000/renders/*.png
git add output/bicycle1/test/ours_3000/renders/*.png
git add output/flower/test/ours_3000/renders/*.png
git add output/flower1/test/ours_1000/renders/*.png
git add houseplant/images_G/processed_Image_000001__cam1.png
git add houseplant/images_R/processed_Image_000001__cam1.png
git add houseplant/images_RE/processed_Image_000001__cam1.png
git add houseplant/images_NIR/processed_Image_000001__cam1.png
git add houseplant/houseplant_rgb/processed_Image_000001__cam1.png
git add .gitignore

git commit -m "Initial website - essential files only"

echo ""
echo "✅ Fresh repository created!"
echo ""
echo "📤 Now push to GitHub:"
echo "   git remote add origin https://github.com/Shima-Salehi/lgdwt-gs-website.git"
echo "   git push -u origin main --force"
echo ""
echo "⚠️  Note: This will overwrite the remote repository"
