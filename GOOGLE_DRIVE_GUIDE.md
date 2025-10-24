# 📁 GOOGLE DRIVE INTEGRATION GUIDE

## Understanding Google Drive Links

### Link Types

**1. View Link (Default)**
```
https://drive.google.com/file/d/FILE_ID_HERE/view?usp=sharing
```
✅ Use this for: Download buttons, viewing documents

**2. Preview Link (Embedded)**
```
https://drive.google.com/file/d/FILE_ID_HERE/preview
```
✅ Use this for: Embedding PDFs in iframes

**3. Direct Download Link**
```
https://drive.google.com/uc?export=download&id=FILE_ID_HERE
```
✅ Use this for: Forcing download instead of opening in browser

**4. Folder Link**
```
https://drive.google.com/drive/folders/FOLDER_ID_HERE
```
✅ Use this for: Linking to collections of files

---

## Step-by-Step: Making Files Shareable

### For Individual Files:

1. **Upload your file to Google Drive**
   - Go to https://drive.google.com
   - Click "New" → "File upload"
   - Select your file

2. **Get the shareable link**
   - Right-click the file
   - Click "Get link" or "Share"
   - Under "General access", click "Restricted"
   - Change to "Anyone with the link"
   - Click "Done"

3. **Copy the link**
   - Click "Copy link" button
   - Your link will look like: `https://drive.google.com/file/d/1Abc123XYZ456/view?usp=sharing`

4. **Extract the FILE_ID**
   - From: `https://drive.google.com/file/d/1Abc123XYZ456/view?usp=sharing`
   - FILE_ID is: `1Abc123XYZ456`
   - This is what you paste in your HTML!

---

## How to Update Your Portfolio Website

### Example: Adding Your Resume

**In index.html, find this line:**
```html
<a href="https://drive.google.com/file/d/YOUR_RESUME_ID/view" target="_blank">
```

**Replace `YOUR_RESUME_ID` with your actual FILE_ID:**
```html
<a href="https://drive.google.com/file/d/1Abc123XYZ456/view" target="_blank">
```

---

## All the Links You Need to Update

### In `index.html`:

| Line # | Placeholder | Description | Your FILE_ID |
|--------|-------------|-------------|--------------|
| ~46 | YOUR_RESUME_ID | Resume download button | ____________ |
| ~51 | YOUR_GITHUB | GitHub profile link | ____________ |
| ~53 | YOUR_GITHUB | GitHub profile link | ____________ |
| ~187 | YOUR_5S_ID | 5S project download | ____________ |
| ~213 | YOUR_CLARITY_ID | Clarity AI download | ____________ |
| ~237 | YOUR_ANALYTICS_ID | Analytics project | ____________ |
| ~333 | YOUR_PORTFOLIO_ID | Full portfolio PDF | ____________ |

### In `project-clarity.html`:

| Line # | Placeholder | Description | Your FILE_ID |
|--------|-------------|-------------|--------------|
| ~150 | YOUR_CLARITY_PORTFOLIO_ID | Clarity documentation | ____________ |

---

## Quick Reference: Find & Replace

Use your text editor's Find & Replace (Ctrl+H or Cmd+H):

**Find:** `YOUR_RESUME_ID`
**Replace with:** `[Your actual resume FILE_ID]`

**Find:** `YOUR_GITHUB`
**Replace with:** `[Your GitHub username]`

**Find:** `YOUR_5S_ID`
**Replace with:** `[Your 5S project FILE_ID]`

**Find:** `YOUR_CLARITY_ID`
**Replace with:** `[Your Clarity AI FILE_ID]`

**Find:** `YOUR_ANALYTICS_ID`
**Replace with:** `[Your analytics FILE_ID]`

**Find:** `YOUR_PORTFOLIO_ID`
**Replace with:** `[Your portfolio FILE_ID]`

---

## Testing Your Links

### Before Deployment:
1. Copy a Google Drive link from your HTML
2. Paste in browser (incognito mode)
3. Verify it opens correctly
4. Check permissions if it asks you to sign in

### After Deployment:
1. Visit your live portfolio
2. Click each download button
3. Verify files open/download correctly

---

## Common Issues & Solutions

### ❌ "You need access" error
**Problem:** File permissions not set to "Anyone with the link"
**Solution:** 
1. Go to Google Drive
2. Right-click file → Share
3. Change to "Anyone with the link"
4. Click "Done"

### ❌ Link shows "Preview not available"
**Problem:** Using preview link for non-previewable format
**Solution:** Use `/view` instead of `/preview` in URL

### ❌ Download starts automatically instead of opening
**Problem:** Using download link instead of view link
**Solution:** Change `/uc?export=download` to `/view`

### ❌ Link is broken/404 error
**Problem:** Wrong FILE_ID or file deleted
**Solution:** 
1. Check FILE_ID is correct
2. Verify file still exists in Drive
3. Test link in incognito browser

---

## Advanced: Organizing Your Portfolio Files

### Create a Folder Structure:

```
My Portfolio/
├── Resume/
│   └── DylanBray_Resume.pdf
├── Projects/
│   ├── 5S_Compliance/
│   │   ├── overview.pdf
│   │   └── screenshots/
│   ├── Clarity_Coach_AI/
│   │   ├── documentation.pdf
│   │   ├── architecture.png
│   │   └── demo_video.mp4
│   └── Data_Analytics/
│       └── dashboard.pdf
└── Full_Portfolio.pdf
```

### Share the Entire Folder:
1. Right-click "My Portfolio" folder
2. Get link → "Anyone with the link"
3. Add folder link to your website

---

## Portfolio Files Checklist

Files to Upload to Google Drive:

- [ ] Resume (PDF or DOCX)
- [ ] Combined Portfolio PDF (all projects)
- [ ] 5S Compliance project documentation
- [ ] Clarity Coach AI documentation
- [ ] Data Analytics project samples
- [ ] Any dashboards or visualizations
- [ ] Code samples (optional)
- [ ] Certificates/awards (optional)

---

## Embedding PDFs in Your Portfolio

### Add an iframe to display PDFs:

```html
<div class="embedded-pdf">
    <iframe 
        src="https://drive.google.com/file/d/YOUR_FILE_ID/preview" 
        width="100%" 
        height="600px" 
        frameborder="0"
        allow="autoplay">
    </iframe>
</div>
```

### Add responsive styling in CSS:

```css
.embedded-pdf {
    margin: 2rem 0;
    border-radius: 12px;
    overflow: hidden;
    box-shadow: 0 4px 15px rgba(0,0,0,0.1);
}

.embedded-pdf iframe {
    display: block;
}
```

---

## Creating a Shareable Portfolio Link

### Share your entire portfolio with one link:

1. Create a Google Drive folder: "Dylan Bray Portfolio"
2. Add all your project files to this folder
3. Right-click folder → Get link → Anyone with link
4. Share this link: `https://drive.google.com/drive/folders/YOUR_FOLDER_ID`

### Add to your website:
```html
<a href="https://drive.google.com/drive/folders/YOUR_FOLDER_ID" 
   target="_blank" 
   class="btn btn-primary">
    View All Portfolio Files
</a>
```

---

## Security Note

**Public vs Private:**
- "Anyone with the link" = Anyone who has the URL can view
- Does NOT appear in Google search
- Safe for job applications
- Can revoke access anytime

**To Revoke Access:**
1. Right-click file → Share
2. Change back to "Restricted"
3. Old links will stop working

---

## Quick Actions

**Need to update a file?**
1. Upload new version to Drive (same name)
2. Delete old version
3. Get new link
4. Update your website
5. Commit changes to GitHub

**Need to add a new project?**
1. Upload project files to Drive
2. Get FILE_ID
3. Add project card to index.html
4. Create project detail page (copy project-clarity.html)
5. Link them together
6. Commit to GitHub

---

**✅ You're all set! Your Google Drive files will integrate seamlessly with your portfolio.**
