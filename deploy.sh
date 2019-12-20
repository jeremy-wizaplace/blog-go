#!/bin/sh

# If a command fails then the deploy stops
set -e

printf "\033[0;32mDeploying updates to GitHub...\033[0m\n"

git config user.email "jeremy.reynaud@wizacha.com"
git config user.name "Jérémy Reynaud"

# Add destination repository
git submodule add -b master -f git@github.com:jeremy-wizaplace/jeremy-wizaplace.github.io.git public

# Build the project.
hugo -t bleak

# Go To Public folder
cd public

# Add changes to git.
git add .

# Commit changes.
msg="rebuilding site $(date)"
if [ -n "$*" ]; then
	msg="$*"
fi
git commit -m "$msg"

# Push source and build repos.
git push origin master
