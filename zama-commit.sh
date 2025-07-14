#!/bin/bash

# Update your details here
REPO="zama-unique-commits"
USERNAME="your-github-username"
EMAIL="your-email@example.com"

echo "🚀 Saint Khen Zama Commit Script"

# 1️⃣ Create new repo folder
mkdir $REPO
cd $REPO
git init
echo "# $REPO" > README.md

# 2️⃣ Set your GitHub identity
git config user.name "$USERNAME"
git config user.email "$EMAIL"

# 3️⃣ Make unique commits with Saint vibes
for i in {1..20}
do
  echo "Hail Saint $i" >> README.md
  git add README.md

  # Generate unique backdate
  DATE=$(date -d "2025-06-30 01:00:00 +${i} minutes" +"%Y-%m-%dT%H:%M:%S")

  git commit -m "I'm unique, I'm blessed by Saint — Hail $i" --date "$DATE"
done

# 4️⃣ Add remote
echo "➡️ Now add remote: git remote add origin https://github.com/YOUR_USERNAME/$REPO.git"
echo "➡️ Then push with: git push -u origin main"
echo "👉 When prompted for password, paste your **Personal Access Token (PAT)**"

echo "✅ Done — 20 Saint-blessed commits ready!"
