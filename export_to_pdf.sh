#!/usr/bin/env bash
set -euo pipefail

# Export HTML CVs to PDF (A4, print CSS). Requires wkhtmltopdf or Chromium/Chrome.
# Usage: ./export_to_pdf.sh

HTML_EN="cv_birante_soumare_en.html"
HTML_FR="cv_birante_soumare_fr.html"
OUT_EN="Birante_Soumare_CV_EN.pdf"
OUT_FR="Birante_Soumare_CV_FR.pdf"

have_wkhtmltopdf() { command -v wkhtmltopdf >/dev/null 2>&1; }
have_chromium() { command -v chromium >/dev/null 2>&1 || command -v chromium-browser >/dev/null 2>&1 || command -v google-chrome >/dev/null 2>&1 || command -v google-chrome-stable >/dev/null 2>&1; }

render_with_wkhtmltopdf() {
	wkhtmltopdf --dpi 300 --print-media-type "$1" "$2"
}

render_with_chromium() {
	local CHROMIUM_BIN
	if command -v chromium >/dev/null 2>&1; then CHROMIUM_BIN=chromium; fi
	if command -v chromium-browser >/dev/null 2>&1; then CHROMIUM_BIN=chromium-browser; fi
	if command -v google-chrome >/dev/null 2>&1; then CHROMIUM_BIN=google-chrome; fi
	if command -v google-chrome-stable >/dev/null 2>&1; then CHROMIUM_BIN=google-chrome-stable; fi
	"${CHROMIUM_BIN}" --headless --disable-gpu --no-sandbox --print-to-pdf="$2" "$(readlink -f "$1")"
}

convert() {
	local IN="$1"; local OUT="$2"
	if have_wkhtmltopdf; then
		echo "[wkhtmltopdf] $IN -> $OUT"
		render_with_wkhtmltopdf "$IN" "$OUT"
	elif have_chromium; then
		echo "[chromium] $IN -> $OUT"
		render_with_chromium "$IN" "$OUT"
	else
		echo "Error: Please install wkhtmltopdf or Chromium/Chrome to export PDFs." >&2
		exit 1
	fi
}

convert "$HTML_EN" "$OUT_EN"
convert "$HTML_FR" "$OUT_FR"

echo "Done. Generated: $OUT_EN, $OUT_FR"