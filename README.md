# Dylan Bray - Portfolio Website

A modern, responsive portfolio website showcasing data analytics, AI/ML projects, and professional experience.

## 🚀 Quick Start - Deploy to GitHub Pages Today

### Step 1: Prepare Your Files

1. Download all portfolio files to your computer
2. Update the following placeholders with your actual links:

**In `index.html`:**
- Replace `YOUR_RESUME_ID` with your Google Drive resume file ID
- Replace `YOUR_GITHUB` with your GitHub username
- Replace `YOUR_5S_ID` with your 5S project Google Drive file ID
- Replace `YOUR_CLARITY_ID` with your Clarity Coach AI Google Drive file ID
- Replace `YOUR_ANALYTICS_ID` with your analytics project Google Drive file ID
- Replace `YOUR_PORTFOLIO_ID` with your full portfolio PDF Google Drive file ID

**In `project-clarity.html`:**
- Replace `YOUR_CLARITY_PORTFOLIO_ID` with your Clarity Coach AI documentation file ID

### Step 2: Get Google Drive Share Links

For each document you want to share:
1. Upload file to Google Drive
2. Right-click file → Get link → Set to "Anyone with the link"
3. Copy the link (format: `https://drive.google.com/file/d/FILE_ID_HERE/view`)
4. Extract just the `FILE_ID_HERE` part
5. Replace the placeholders in your HTML files

### Step 3: Create GitHub Repository

1. Go to GitHub.com and sign in
2. Click the "+" icon (top right) → "New repository"
3. Name it: `your-username.github.io` (replace `your-username` with your actual GitHub username)
4. Make it Public
5. Check "Add a README file"
6. Click "Create repository"

### Step 4: Upload Your Files

**Option A - Via GitHub Web Interface (Easiest):**
1. In your new repository, click "Add file" → "Upload files"
2. Drag and drop all your portfolio files:
   - index.html
   - styles.css
   - script.js
   - project-clarity.html
   - (and any other project detail pages)
3. Write a commit message: "Initial portfolio upload"
4. Click "Commit changes"

**Option B - Via Git Command Line:**
```bash
# Navigate to your portfolio folder
cd /path/to/your/portfolio

# Initialize git repository
git init

# Add all files
git add .

# Commit files
git commit -m "Initial portfolio upload"

# Add your GitHub repository as remote
git remote add origin https://github.com/your-username/your-username.github.io.git

# Push to GitHub
git branch -M main
git push -u origin main
```

### Step 5: Enable GitHub Pages

1. Go to your repository on GitHub
2. Click "Settings" tab
3. Scroll down to "Pages" (in left sidebar)
4. Under "Source", select "main" branch
5. Click "Save"
6. Wait 2-3 minutes for deployment

### Step 6: Access Your Live Site

Your portfolio will be live at: `https://your-username.github.io`

## 📁 File Structure

```
portfolio/
├── index.html              # Main homepage
├── styles.css              # All styling
├── script.js               # Navigation and interactions
├── project-clarity.html    # Clarity Coach AI detail page
├── project-5s.html         # 5S Compliance detail page (create similar)
├── project-analytics.html  # Analytics project detail page (create similar)
└── README.md              # This file
```

## 🎨 Customization Guide

### Adding Your Photo

1. Add your photo to the repository
2. In `index.html`, find the hero section
3. Add an image element:
```html
<div class="hero-image">
    <img src="your-photo.jpg" alt="Dylan Bray">
</div>
```

### Changing Colors

In `styles.css`, modify the color variables:
```css
:root {
    --primary-color: #2563eb;     /* Main blue color */
    --secondary-color: #1e40af;   /* Darker blue */
    --accent-color: #3b82f6;      /* Light blue */
}
```

### Adding More Projects

1. Duplicate `project-clarity.html`
2. Rename it (e.g., `project-5s.html`)
3. Update the content
4. Add a project card in `index.html` linking to your new page

### Updating Content

Edit `index.html` to update:
- Professional summary
- Projects
- Skills
- Contact information

## 🔗 Google Drive Integration

### Making Files Shareable

1. **Upload to Google Drive**
2. **Right-click file** → "Get link"
3. **Change to "Anyone with the link"**
4. **Copy the link**
5. **Extract the FILE_ID from the URL:**
   - Full URL: `https://drive.google.com/file/d/1Abc123XYZ456/view?usp=sharing`
   - FILE_ID: `1Abc123XYZ456`

### Embedding PDFs

To embed a PDF viewer (instead of just download link):
```html
<iframe 
    src="https://drive.google.com/file/d/YOUR_FILE_ID/preview" 
    width="100%" 
    height="600px" 
    frameborder="0">
</iframe>
```

### Creating Folder Links

To link to a Google Drive folder:
1. Right-click folder → Get link
2. Use the folder link directly:
```html
<a href="https://drive.google.com/drive/folders/YOUR_FOLDER_ID" target="_blank">
    View All Projects
</a>
```

## 🛠️ Creating Additional Project Pages

Use `project-clarity.html` as a template:

1. Copy `project-clarity.html`
2. Rename to your project name
3. Update these sections:
   - Project title and description
   - Problem Statement
   - Technical Solution
   - Technologies & Tools
   - Key Features
   - Outcomes & Impact
   - Google Drive link

4. Add to `index.html`:
```html
<div class="project-card">
    <div class="project-image">
        <i class="fas fa-ICON-NAME project-icon"></i>
    </div>
    <div class="project-content">
        <h3>Your Project Name</h3>
        <p class="project-description">Description here</p>
        <div class="project-tags">
            <span class="tag">Tag1</span>
            <span class="tag">Tag2</span>
        </div>
        <div class="project-links">
            <a href="your-project.html" class="project-link">
                View Details <i class="fas fa-arrow-right"></i>
            </a>
        </div>
    </div>
</div>
```

## 📊 Adding Analytics

To track visitors with Google Analytics:

1. Sign up at: https://analytics.google.com
2. Create a property for your website
3. Copy your tracking ID (looks like: G-XXXXXXXXXX)
4. Add to `index.html` before `</head>`:

```html
<!-- Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-XXXXXXXXXX"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'G-XXXXXXXXXX');
</script>
```

## 🎯 For Detect Technologies Application

**Immediate Actions:**
1. Upload your resume to Google Drive (make shareable)
2. Create a combined portfolio PDF with:
   - 5S Compliance project (1-2 pages)
   - Clarity Coach AI project (2-3 pages)
   - Best data analytics project (1-2 pages)
3. Upload portfolio PDF to Google Drive
4. Update all Google Drive links in the HTML
5. Deploy to GitHub Pages
6. Include your portfolio link in your email to Beth Easson

**Your portfolio URL will be:** `https://YOUR-GITHUB-USERNAME.github.io`

## 📱 Mobile Responsive

The site is fully responsive and works on:
- Desktop computers
- Tablets
- Mobile phones

Test on different devices after deployment!

## 🐛 Troubleshooting

**Site not showing up?**
- Wait 5 minutes after enabling GitHub Pages
- Check that your repository name is exactly: `your-username.github.io`
- Ensure files are in the root directory, not in a subfolder

**Google Drive links not working?**
- Verify files are set to "Anyone with the link"
- Use the FILE_ID format, not the full URL

**Styling looks broken?**
- Make sure `styles.css` is in the same folder as `index.html`
- Check browser console for errors (F12)

**Mobile menu not working?**
- Ensure `script.js` is in the same folder
- Check browser console for JavaScript errors

## 🚀 Next Steps After Deployment

1. Share your portfolio link in your cover letter
2. Add portfolio link to your LinkedIn profile
3. Include in email signature
4. Test all links to ensure they work
5. Ask friends to review and provide feedback

## 📞 Support

Need help? Common resources:
- GitHub Pages Documentation: https://pages.github.com
- GitHub Community Forum: https://github.community
- HTML/CSS Reference: https://developer.mozilla.org

## 📄 License

This portfolio template is free to use and customize for your personal use.

---

**Created for Dylan Bray's Professional Portfolio - 2025**
