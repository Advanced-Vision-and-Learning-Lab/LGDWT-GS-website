# Quick Deployment Guide

## 🚀 Fastest Method: Netlify (2 minutes)

1. **Go to**: https://app.netlify.com/drop
2. **Drag and drop** the entire `website` folder
3. **Done!** Your site is live with a URL like: `https://random-name.netlify.app`

## 📦 GitHub Pages Method

### Step 1: Create GitHub Repository
1. Go to https://github.com/new
2. Create a new repository (e.g., `lgdwt-gs-website`)
3. **Don't** initialize with README

### Step 2: Push Website to GitHub
Run these commands in your terminal:

```bash
cd /Users/shimasalehi/Downloads/LGDWT-GS/website
git init
git add .
git commit -m "Initial website commit"
git branch -M main
git remote add origin https://github.com/YOUR_USERNAME/lgdwt-gs-website.git
git push -u origin main
```

Replace `YOUR_USERNAME` with your GitHub username.

### Step 3: Enable GitHub Pages
1. Go to your repository on GitHub
2. Click **Settings** → **Pages**
3. Under "Source", select:
   - Branch: `main`
   - Folder: `/` (root)
4. Click **Save**
5. Your site will be live at: `https://YOUR_USERNAME.github.io/lgdwt-gs-website/`

## ⚡ Vercel Method

1. Go to https://vercel.com and sign up
2. Click "Add New Project"
3. Import your GitHub repository OR drag & drop the `website` folder
4. Click "Deploy"
5. Your site is live!

## 📝 Notes

- Make sure all image paths in `index.html` are correct
- The website folder should contain: `index.html`, `style.css`, `slider.js`, and all assets
- Large files (videos, many images) might need special handling
