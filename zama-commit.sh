#!/bin/bash

echo "============================================="
echo "🚀 Zama Contribution Helper"
echo "============================================="

# USER CONFIG
GITHUB_USERNAME="YOUR_USERNAME"
GITHUB_EMAIL="YOUR_EMAIL@example.com"
GITHUB_TOKEN="YOUR_PERSONAL_ACCESS_TOKEN"
NEW_REPO_NAME="zama-logs"

echo "✅ Creating GitHub repo: $NEW_REPO_NAME..."

# Create repo with GitHub API
curl -H "Authorization: token $GITHUB_TOKEN" \
     -d "{\"name\":\"$NEW_REPO_NAME\", \"private\":false}" \
     https://api.github.com/user/repos

echo "✅ Repo created"

# Clone the new repo
git clone https://github.com/$GITHUB_USERNAME/$NEW_REPO_NAME.git
cd $NEW_REPO_NAME

# Git identity
git config user.name "$GITHUB_USERNAME"
git config user.email "$GITHUB_EMAIL"

# Create commit file
echo "# Zama Notes" > zama-notes.md

# Make 10 commits
for i in {1..10}
do
  echo "Note $i: Progress log" >> zama-notes.md
  git add zama-notes.md
  git commit -m "Add note $i"
  echo "✅ Commit $i done"
done

# Push to main branch
git branch -M main
git remote set-url origin https://$GITHUB_USERNAME:$GITHUB_TOKEN@github.com/$GITHUB_USERNAME/$NEW_REPO_NAME.git
git push -u origin main

echo "============================================="
echo "🚀 All done — check your commits at:"
echo "🔗 https://github.com/$GITHUB_USERNAME/$NEW_REPO_NAME"
echo "============================================="
