#!/bin/bash
# ============================================================
#  Rajini Portfolio — GitHub Pages Deploy Script
#  Run this once after downloading the folder.
#  Usage: bash deploy.sh
# ============================================================

# ---- CONFIG — edit these two lines -------------------------
GITHUB_USERNAME="chevvururajini"   # your GitHub username
REPO_NAME="portfolio"              # your GitHub repo name
# ------------------------------------------------------------

echo ""
echo "==> Initialising git repository..."
git init
git add .
git commit -m "Initial portfolio commit"
git branch -M main

echo ""
echo "==> Adding remote origin..."
git remote add origin https://github.com/$GITHUB_USERNAME/$REPO_NAME.git

echo ""
echo "==> Pushing to GitHub..."
git push -u origin main

echo ""
echo "==> Done! Now enable GitHub Pages:"
echo "    1. Go to https://github.com/$GITHUB_USERNAME/$REPO_NAME/settings/pages"
echo "    2. Source: Deploy from branch → main → / (root)"
echo "    3. Your site will be live at:"
echo "       https://$GITHUB_USERNAME.github.io/$REPO_NAME/"
echo ""
