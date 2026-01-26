# LGDWT-GS Website

This is the project website for LGDWT-GS: Local and Global Discrete Wavelet-Regularized 3D Gaussian Splatting.

## Deployment Instructions

### Option 1: GitHub Pages (Recommended)

1. Create a new repository on GitHub (e.g., `lgdwt-gs-website`)
2. Push this website folder to GitHub:
   ```bash
   git add .
   git commit -m "Initial website commit"
   git remote add origin https://github.com/YOUR_USERNAME/lgdwt-gs-website.git
   git push -u origin main
   ```
3. Go to repository Settings → Pages
4. Select source: `main` branch, folder: `/` (root)
5. Your site will be live at: `https://YOUR_USERNAME.github.io/lgdwt-gs-website/`

### Option 2: Netlify (Easiest)

1. Go to [netlify.com](https://netlify.com) and sign up
2. Drag and drop this entire `website` folder onto Netlify
3. Your site will be live immediately!

### Option 3: Vercel

1. Go to [vercel.com](https://vercel.com) and sign up
2. Import this folder or drag & drop
3. Deploy instantly

## File Structure

- `index.html` - Main website page
- `style.css` - Stylesheet
- `slider.js` - Interactive comparison slider
- `output/` - Comparison images
- `houseplant/` - Dataset images
- `camra1.gif` - Animated GIF

## Notes

- All image paths are relative to the website folder
- Make sure all assets (images, videos, GIFs) are included when deploying
