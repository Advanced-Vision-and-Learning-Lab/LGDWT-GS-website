# GitHub Pages Setup - Step by Step

## Quick Start

### Option 1: Use the Automated Script (Easiest)

1. Run the deployment script:
   ```bash
   cd /Users/shimasalehi/Downloads/LGDWT-GS/website
   ./deploy-to-github.sh
   ```

2. Follow the prompts - it will guide you through everything!

### Option 2: Manual Setup

## Step 1: Create GitHub Repository

1. Go to **https://github.com/new**
2. Repository name: `lgdwt-gs-website` (or any name you prefer)
3. Make it **PUBLIC** (required for free GitHub Pages)
4. **DO NOT** check "Initialize this repository with a README"
5. Click **"Create repository"**

## Step 2: Push Your Website to GitHub

Open Terminal and run these commands:

```bash
# Navigate to your website folder
cd /Users/shimasalehi/Downloads/LGDWT-GS/website

# Initialize git (if not already done)
git init
git branch -M main

# Add all files
git add .

# Create initial commit
git commit -m "Initial website commit"

# Add your GitHub repository (replace YOUR_USERNAME with your GitHub username)
git remote add origin https://github.com/YOUR_USERNAME/lgdwt-gs-website.git

# Push to GitHub
git push -u origin main
```

**Note:** You'll be prompted for your GitHub username and password/token.

## Step 3: Enable GitHub Pages

1. Go to your repository on GitHub: `https://github.com/YOUR_USERNAME/lgdwt-gs-website`
2. Click **Settings** (top menu)
3. Click **Pages** (left sidebar)
4. Under **"Source"**:
   - Branch: Select **`main`**
   - Folder: Select **`/` (root)**
5. Click **Save**

## Step 4: Access Your Website

Your website will be live at:
```
https://YOUR_USERNAME.github.io/lgdwt-gs-website/
```

**Note:** It may take 1-2 minutes for the site to be available after enabling Pages.

## Troubleshooting

### If you get authentication errors:
- Use a Personal Access Token instead of password
- Create one at: https://github.com/settings/tokens
- Select scope: `repo`

### If images don't load:
- Make sure all image paths in `index.html` are relative (start with `./` or just the filename)
- Check that all image files are included in the repository

### If the site shows 404:
- Wait a few minutes (GitHub Pages can take time to build)
- Check Settings → Pages to ensure it's enabled
- Make sure the repository is PUBLIC

## Updating Your Website

After making changes:

```bash
cd /Users/shimasalehi/Downloads/LGDWT-GS/website
git add .
git commit -m "Update website"
git push
```

Changes will be live in 1-2 minutes!
