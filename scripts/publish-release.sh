#!/bin/bash

# Publish Release Script
# This script commits version changes and creates a release tag

set -e

if [ -z "$1" ]; then
  echo "Usage: ./scripts/publish-release.sh <version>"
  echo "Example: ./scripts/publish-release.sh 1.0.1"
  exit 1
fi

VERSION=$1
TAG="v${VERSION}"

echo "Publishing release ${VERSION}..."
echo ""

# Check if there are changes to commit
if ! git diff --quiet package.json CHANGELOG.md; then
  echo "✓ Changes detected in package.json and/or CHANGELOG.md"
  
  # Show the changes
  echo ""
  echo "Changes to be committed:"
  git diff package.json CHANGELOG.md
  echo ""
  
  # Ask for confirmation
  read -p "Do you want to commit these changes? (y/n) " -n 1 -r
  echo ""
  
  if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo "Aborted."
    exit 1
  fi
  
  # Stage the files
  echo "Staging files..."
  git add package.json CHANGELOG.md
  
  # Commit the changes
  echo "Committing changes..."
  git commit -m "Release ${VERSION}"
  
else
  echo "⚠ No changes detected in package.json or CHANGELOG.md"
  echo "Have you run ./scripts/prepare-release.sh ${VERSION} ?"
  exit 1
fi

# Check if tag already exists
if git rev-parse "$TAG" >/dev/null 2>&1; then
  echo ""
  echo "⚠ Tag ${TAG} already exists!"
  read -p "Do you want to delete and recreate it? (y/n) " -n 1 -r
  echo ""
  
  if [[ $REPLY =~ ^[Yy]$ ]]; then
    echo "Deleting existing tag..."
    git tag -d "$TAG"
    git push origin ":refs/tags/$TAG" 2>/dev/null || true
  else
    echo "Aborted."
    exit 1
  fi
fi

# Create the tag
echo "Creating tag ${TAG}..."
git tag -a "$TAG" -m "Release ${VERSION}"

# Push to origin
echo "Pushing to origin..."
echo ""
read -p "Push to origin (main + tag)? (y/n) " -n 1 -r
echo ""

if [[ ! $REPLY =~ ^[Yy]$ ]]; then
  echo "Aborted. You can manually push with:"
  echo "  git push origin main"
  echo "  git push origin ${TAG}"
  exit 1
fi

git push origin main
git push origin "$TAG"

echo ""
echo "✓ Release ${VERSION} published successfully!"
echo ""
echo "GitHub Actions will now:"
echo "  1. Build the VSIX package"
echo "  2. Create a GitHub Release"
echo "  3. Upload the VSIX file"
echo ""
echo "Check the progress at:"
echo "  https://github.com/brunoborges/color-themes-countries/actions"
echo ""
echo "Once complete, the release will be available at:"
echo "  https://github.com/brunoborges/color-themes-countries/releases/tag/${TAG}"
