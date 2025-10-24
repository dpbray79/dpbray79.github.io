# 🚀 DEPLOY YOUR PORTFOLIO - 3 SIMPLE OPTIONS

Choose the method that works best for you:

---

## ⚡ OPTION 1: Automated Scripts (Recommended)

### Step 1: Download portfolio folder to your computer

### Step 2: Open Terminal and navigate to portfolio folder
```bash
cd /path/to/portfolio
```

### Step 3: Run setup script
```bash
chmod +x setup.sh
./setup.sh
```
This will update your GitHub username and Google Drive links.

### Step 4: Run deployment script
```bash
chmod +x deploy.sh
./deploy.sh
```
This will push everything to GitHub!

### Step 5: Enable GitHub Pages
1. Go to your repository on GitHub
2. Settings → Pages
3. Source: main branch
4. Save

**Done! Your site is live in 2-3 minutes!**

---

## 📋 OPTION 2: Manual Commands (Step-by-Step)

### View the complete manual guide:
```bash
cat MANUAL_DEPLOY.sh
```

Or open `MANUAL_DEPLOY.sh` in a text editor and follow along.

**Summary:**
```bash
# 1. Navigate to portfolio folder
cd /path/to/portfolio

# 2. Initialize git
git init

# 3. Add files
git add .

# 4. Commit
git commit -m "Initial portfolio deployment"

# 5. Rename branch
git branch -M main

# 6. Add remote (replace YOUR-USERNAME)
git remote add origin https://github.com/YOUR-USERNAME/YOUR-USERNAME.github.io.git

# 7. Push
git push -u origin main
```

Then enable GitHub Pages in repository settings.

---

## 🖱️ OPTION 3: GitHub Web Interface (No Terminal Needed!)

### Step 1: Create Repository
1. Go to https://github.com/new
2. Name: `your-username.github.io` (replace with your username)
3. Public repository
4. DON'T add README
5. Click "Create repository"

### Step 2: Upload Files
1. In your new repository, click "Add file" → "Upload files"
2. Drag and drop these files:
   - index.html
   - styles.css
   - script.js
   - project-clarity.html
   - (any other project pages you create)
3. Write commit message: "Initial portfolio upload"
4. Click "Commit changes"

### Step 3: Enable GitHub Pages
1. Click "Settings" tab
2. Click "Pages" in left sidebar
3. Under "Source", select "main" branch
4. Click "Save"
5. Wait 2-3 minutes

**Your site is live at: https://your-username.github.io**

---

## 🔧 Before Deployment: Update Your Info

**Required Updates in `index.html`:**

Find and replace these placeholders:
- `YOUR_GITHUB` → your GitHub username
- `YOUR_RESUME_ID` → Google Drive file ID (or remove if not ready)
- `YOUR_5S_ID` → 5S project file ID (or remove)
- `YOUR_CLARITY_ID` → Clarity AI file ID (or remove)
- `YOUR_ANALYTICS_ID` → Analytics project file ID (or remove)
- `YOUR_PORTFOLIO_ID` → Portfolio PDF file ID (or remove)

**Quick Find & Replace:**
1. Open `index.html` in text editor (VS Code, Notepad++, etc.)
2. Use Find & Replace (Ctrl+H / Cmd+H)
3. Replace each placeholder with your actual values

**Don't have Google Drive links yet?**
No problem! You can:
- Remove those download buttons temporarily
- Add them later and update

---

## 🎯 For Your Detect Application (TODAY)

**Minimum to deploy:**
1. Update `YOUR_GITHUB` with your GitHub username
2. Deploy using Option 3 (web interface - fastest!)
3. Include portfolio link in application

**Can add later:**
- Google Drive links
- Your photo
- More project details
- Additional projects

**Goal:** Get SOMETHING live today, perfect it later!

---

## ✅ Post-Deployment Checklist

After deploying, verify:
- [ ] Site loads: `https://your-username.github.io`
- [ ] Navigation works
- [ ] All sections visible
- [ ] Mobile view works
- [ ] Links go to correct places
- [ ] No broken images/icons

---

## 🆘 Need Help?

**Git not installed?**
- Mac: `brew install git`
- Windows: https://git-scm.com/downloads
- Linux: `sudo apt-get install git`

**Authentication failed?**
You need a Personal Access Token:
1. https://github.com/settings/tokens
2. Generate new token (classic)
3. Check "repo" permissions
4. Use token as password when pushing

**Other issues?**
Check `MANUAL_DEPLOY.sh` for troubleshooting section.

---

## 🚀 Deployment Time Estimates

- **Option 1 (Scripts):** 5-10 minutes
- **Option 2 (Manual):** 10-15 minutes  
- **Option 3 (Web):** 5-10 minutes

All options get you the same result - a live portfolio!

---

## 📱 After It's Live

1. **Test on multiple devices**
   - Desktop
   - Tablet
   - Mobile phone

2. **Share it!**
   - Add to LinkedIn
   - Include in email signature
   - Use in job applications

3. **Update regularly**
   - Add new projects
   - Update skills
   - Keep resume current

---

**Choose your option and let's get your portfolio live! 🎉**
