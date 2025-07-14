#!/bin/bash

echo "============================================="
echo "🚀 SAINT KHEN — FULL ZAMA AUTO COMMIT SCRIPT"
echo "============================================="

# Prompt for details
read -p "GitHub Username: " USERNAME
read -p "GitHub Email: " EMAIL
read -p "Repository Name: " REPO
read -s -p "Paste your Personal Access Token (PAT): " PAT
echo ""

# Create repo using GitHub API
echo "✅ Creating GitHub repo '$REPO'..."
curl -u "$USERNAME:$PAT" \
     -H "Accept: application/vnd.github.v3+json" \
     -H "Content-Type: application/json" \
     https://api.github.com/user/repos \
     -d "{\"name\":\"$REPO\"}"

# Make local dir (safe)
if [ -d "$REPO" ]; then
  echo "⚠️  Directory $REPO already exists. Exiting to avoid conflict."
  exit 1
fi

mkdir "$REPO"
cd "$REPO"

# Init git
git init
git branch -M main
echo "# $REPO" > README.md

git config user.name "$USERNAME"
git config user.email "$EMAIL"

echo "✅ Making Saint-blessed commits..."

for i in {1..20}; do
  echo "Hail Saint $i" >> README.md
  git add README.md

  DATE=$(date -d "2025-06-30 23:00:00 -${i} hour" +"%Y-%m-%dT%H:%M:%S")
  GIT_AUTHOR_DATE="$DATE" GIT_COMMITTER_DATE="$DATE" \
  git commit -m "I'm unique, I'm blessed by Saint — Hail $i"
done

# Add remote safely
git remote remove origin 2>/dev/null
git remote add origin "https://$USERNAME:$PAT@github.com/$USERNAME/$REPO.git"

echo "✅ Pushing to GitHub..."
git push -u origin main

echo "============================================="
echo "✅ All done. 20 commits. Hail Saint Khen! 🎉"
echo "============================================="
