#!/bin/bash

echo "============================================="
echo "🚀 SAINT KHEN — FULL ZAMA AUTO COMMIT SCRIPT"
echo "============================================="

# Prompt for user details
read -p "GitHub Username: " USERNAME
read -p "GitHub Email: " EMAIL
read -p "Repository Name: " REPO
read -s -p "Paste your Personal Access Token (PAT): " PAT
echo ""

# Create the repo via GitHub API
echo "✅ Creating GitHub repo '$REPO'..."
curl -u "$USERNAME:$PAT" https://api.github.com/user/repos -d "{\"name\":\"$REPO\"}"

# Init local repo
echo "✅ Initializing local Git repo..."
mkdir $REPO
cd $REPO
git init -b main
echo "# $REPO" > README.md

git config user.name "$USERNAME"
git config user.email "$EMAIL"

echo "✅ Making Saint-blessed commits..."

for i in {1..20}
do
  echo "Hail Saint $i" >> README.md
  git add README.md

  DATE=$(date -d "2025-06-30 01:00:00 -${i} hours" +"%Y-%m-%dT%H:%M:%S")

  git commit -m "I'm unique, I'm blessed by Saint — Hail $i" --date "$DATE"
done

echo "✅ Adding remote & pushing..."
git remote add origin https://$USERNAME:$PAT@github.com/$USERNAME/$REPO.git
git push -u origin main

echo "✅ All done. 20 commits. Hail Saint Khen! 🎉"
