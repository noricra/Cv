# CV — Birante Soumare

This workspace contains two CV formats optimized for international L3 internship applications, including ATS screening and recruiter review.

## Files
- `cv_ats_birante_soumare_en.txt` — ATS-friendly plain text resume (EN).
- `cv_birante_soumare_en.html` — Styled, print-ready HTML CV (EN).
- `cv_ats_birante_soumare_fr.txt` — ATS-friendly plain text resume (FR).
- `cv_birante_soumare_fr.html` — Styled, print-ready HTML CV (FR).
- `export_to_pdf.sh` — One-command PDF export for both HTML CVs.

## How to use

### 1) Quick edits
Open either file and edit content directly. Keep the ATS versions plain (no special symbols/emojis).

### 2) Add your photo (HTML CVs)
- Place an image at `img/photo.jpg` (suggested size: square 600×600 px).
- In the HTML, replace the placeholder inside the `<figure class="avatar">` with:
  ```html
  <img src="img/photo.jpg" alt="Portrait of Birante Soumare" />
  ```
- Tip: Use a neutral background and centered face.

### 3) Export the HTML CVs to PDF
- Option A (Script):
  ```bash
  ./export_to_pdf.sh
  ```
  Generates `Birante_Soumare_CV_EN.pdf` and `Birante_Soumare_CV_FR.pdf` (uses `wkhtmltopdf` or headless Chromium).
- Option B (Browser):
  1. Open `cv_birante_soumare_en.html` or `cv_birante_soumare_fr.html` in your browser.
  2. Print (Ctrl/Cmd + P).
  3. Destination: "Save as PDF".
  4. Margins: Default; Enable background graphics; Scale 100%.
- Option C (wkhtmltopdf):
  ```bash
  wkhtmltopdf --dpi 300 --print-media-type cv_birante_soumare_en.html Birante_Soumare_CV_EN.pdf
  wkhtmltopdf --dpi 300 --print-media-type cv_birante_soumare_fr.html Birante_Soumare_CV_FR.pdf
  ```

### 4) Tailoring for a role
- Update the Professional Summary to match the internship description.
- Reorder Projects so the most relevant appears first.
- Add a "Coursework" line under Education if relevant to the role.

### 5) International applications tips
- Include availability dates and relocation openness (already in Additional section).
- Use English for APAC roles; keep an FR version ready for France.
- Keep the resume to one page (the provided HTML is designed for an A4 one-pager).

## Theme tweaks
Change the accent color in the HTML files by editing the `--accent` variable in `:root`.

## Contact block
Email: `soumare.birante05@gmail.com` • Phone: `+33 6 44 75 60 28` • Location: `France (APAC-ready)`

---
If you want, I can tailor an ATS/HTML version for a specific country (e.g., Singapore) or a specific role (e.g., Python automation) with adjusted keywords and summary.