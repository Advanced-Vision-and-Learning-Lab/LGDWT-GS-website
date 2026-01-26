# How to Create GitHub Personal Access Token - Step by Step

## Method 1: Direct Link (Fastest)

1. **Click this link:** https://github.com/settings/tokens/new

2. **Fill in the form:**
   - **Note:** `Website Deployment` (or any name you like)
   - **Expiration:** Choose `90 days` or `No expiration`
   - **Scopes:** Check ✅ **`repo`** (the entire "repo" section)

3. **Click:** "Generate token" (green button at bottom)

4. **Copy the token** - it starts with `ghp_` and looks like:
   ```
   ghp_xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
   ```

5. **Save it somewhere safe!** You won't see it again.

---

## Method 2: Through GitHub Website

### Step 1: Go to Settings
1. Go to **github.com** and log in
2. Click your **profile picture** (top right corner)
3. Click **"Settings"**

### Step 2: Navigate to Developer Settings
1. Scroll down in the left sidebar
2. Click **"Developer settings"** (at the bottom)

### Step 3: Go to Personal Access Tokens
1. Click **"Personal access tokens"** (left sidebar)
2. Click **"Tokens (classic)"**

### Step 4: Generate New Token
1. Click **"Generate new token"** button
2. Click **"Generate new token (classic)"**

### Step 5: Configure Token
Fill in the form:

- **Note:** 
  ```
  Website Deployment
  ```

- **Expiration:**
  - Select: `90 days` or `No expiration` (your choice)

- **Scopes:**
  - ✅ Check **`repo`** (this checks all repo permissions)
  - This includes:
    - ✅ repo:status
    - ✅ repo_deployment
    - ✅ public_repo
    - ✅ repo:invite
    - ✅ security_events

- **Scroll down** and click the green **"Generate token"** button

### Step 6: Copy Token
1. You'll see a page with your token
2. **Copy it immediately** - it looks like: `ghp_abc123xyz...`
3. **Save it securely** (password manager, notes, etc.)
4. ⚠️ **You won't be able to see it again!**

---

## What the Token Looks Like

```
ghp_1234567890abcdefghijklmnopqrstuvwxyz123456
```

It's a long string starting with `ghp_`

---

## Using the Token

After you have the token, you can use it in the push script:

```bash
cd /Users/shimasalehi/Downloads/LGDWT-GS/website
./push-with-token.sh
```

When prompted, paste your token.

---

## Security Tips

✅ **DO:**
- Use tokens instead of passwords
- Give tokens descriptive names
- Set expiration dates
- Revoke tokens you're not using

❌ **DON'T:**
- Share tokens publicly
- Commit tokens to git
- Use the same token everywhere
- Leave tokens without expiration

---

## Troubleshooting

**"I can't find Developer settings"**
- Make sure you're logged into GitHub
- Try the direct link: https://github.com/settings/tokens/new

**"Token doesn't work"**
- Make sure you checked the `repo` scope
- Check if token has expired
- Try generating a new token

**"I lost my token"**
- You need to generate a new one
- Old tokens can't be recovered
- Revoke the old one and create a new one
