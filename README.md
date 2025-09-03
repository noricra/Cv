# CV — Birante Soumare

This workspace contains two CV formats optimized for international L3 internship applications, including ATS screening and recruiter review.

## Files
- `cv_ats_birante_soumare_en.txt` — ATS-friendly plain text resume.
- `cv_birante_soumare_en.html` — Styled, print-ready HTML CV.

## How to use

### 1) Quick edits
Open either file and edit content directly. Keep the ATS version plain (no special symbols/emojis).

### 2) Export the HTML CV to PDF
- Option A (Browser):
  1. Open `cv_birante_soumare_en.html` in your browser.
  2. Print (Ctrl/Cmd + P).
  3. Destination: "Save as PDF".
  4. Margins: Default; Enable background graphics; Scale 100%.
- Option B (wkhtmltopdf):
  ```bash
  wkhtmltopdf --dpi 300 --print-media-type cv_birante_soumare_en.html Birante_Soumare_CV.pdf
  ```

### 3) Tailoring for a role
- Update the Professional Summary to match the internship description.
- Reorder Projects so the most relevant appears first.
- Add a "Coursework" line under Education if relevant to the role.

### 4) International applications tips
- Include availability dates and relocation openness (already in Additional section).
- Use English for APAC roles; keep an FR version ready for France.
- Keep the resume to one page (the provided HTML is designed for A4 one-pager).

## Localization
If you need a French version or different color theme, duplicate the HTML file and adjust the text and `--accent` color in `:root`.

## Contact block
Email: `soumare.birante05@gmail.com` • Phone: `+33 6 44 75 60 28` • Location: `France (APAC-ready)`

---
If you want, I can generate a French ATS version and a version tailored to a specific country (e.g., Singapore) with small wording changes.