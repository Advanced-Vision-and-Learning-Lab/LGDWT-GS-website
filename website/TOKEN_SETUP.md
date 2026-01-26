# Using GitHub Personal Access Token

## Step 1: Create a Personal Access Token

1. **Go to GitHub Settings:**
   - Visit: https://github.com/settings/tokens
   - Or: GitHub → Your Profile → Settings → Developer settings → Personal access tokens → Tokens (classic)

2. **Generate New Token:**
   - Click **"Generate new token"** → **"Generate new token (classic)"**
   - You may need to enter your password

3. **Configure Token:**
   - **Note:** Give it a name like "Website Deployment"
   - **Expiration:** Choose how long it should last (90 days, or no expiration)
   - **Scopes:** Check ✅ **`repo`** (this gives full repository access)
   - Scroll down and click **"Generate token"**

4. **Copy the Token:**
   - ⚠️ **IMPORTANT:** Copy the token immediately! It looks like: `ghp_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx`
   - You won't be able to see it again
   - Save it somewhere safe (password manager, notes app, etc.)

## Step 2: Use the Token

### Option A: Use the Automated Script (Easiest)

```bash
cd /Users/shimasalehi/Downloads/LGDWT-GS/website
./push-with-token.sh
```

The script will ask for:
- Your GitHub username
- Repository name
- Your Personal Access Token (hidden input)

### Option B: Manual Commands

```bash
cd /Users/shimasalehi/Downloads/LGDWT-GS/website

# Remove old remote if exists
git remote remove origin

# Add remote with token (replace YOUR_USERNAME, REPO_NAME, and YOUR_TOKEN)
git remote add origin https://YOUR_TOKEN@github.com/YOUR_USERNAME/REPO_NAME.git

# Push
git push -u origin main
```

**Example:**
```bash
git remote add origin https://ghp_abc123xyz@github.com/yourusername/lgdwt-gs-website.git
git push -u origin main
```

## Step 3: Store Token Securely (Optional)

After first push, you can configure git to remember your token:

```bash
# Store credentials
git config credential.helper store

# Or use keychain (macOS)
git config credential.helper osxkeychain
```

## Security Notes

- ✅ Tokens are safer than passwords
- ✅ You can revoke tokens anytime
- ✅ Tokens can have limited scopes
- ⚠️ Never share your token publicly
- ⚠️ Don't commit tokens to git

## Troubleshooting

**"Authentication failed"**
- Check that token has `repo` scope
- Make sure token hasn't expired
- Verify username and repository name are correct

**"Repository not found"**
- Make sure repository exists on GitHub
- Check repository name spelling
- Ensure repository is PUBLIC (for free GitHub Pages)
