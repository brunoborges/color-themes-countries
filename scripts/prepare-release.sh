#!/bin/bash

# Prepare Release Script
# This script updates version numbers across all project files

set -e

if [ -z "$1" ]; then
  echo "Usage: ./scripts/prepare-release.sh <version>"
  echo "Example: ./scripts/prepare-release.sh 1.0.1"
  exit 1
fi

VERSION=$1
TAG="v${VERSION}"

echo "Preparing release ${VERSION}..."

# Update package.json
echo "Updating package.json..."
npm version ${VERSION} --no-git-tag-version --allow-same-version

# Update CHANGELOG.md with new version and date
DATE=$(date +%Y-%m-%d)
echo "Updating CHANGELOG.md..."

# Check if CHANGELOG.md exists and has an Unreleased section
if [ -f "CHANGELOG.md" ]; then
  # Replace [Unreleased] with the new version and date
  sed -i.bak "s/## \[Unreleased\]/## [Unreleased]\n\n## [${VERSION}] - ${DATE}/" CHANGELOG.md
  rm CHANGELOG.md.bak 2>/dev/null || true
else
  echo "Warning: CHANGELOG.md not found"
fi

echo ""
echo "✓ Files updated successfully!"
echo ""
echo "Next steps:"
echo "1. Review the changes:"
echo "   git diff"
echo ""
echo "2. Commit the changes:"
echo "   git add package.json CHANGELOG.md"
echo "   git commit -m \"Release ${VERSION}\""
echo ""
echo "3. Create and push the tag:"
echo "   git tag ${TAG}"
echo "   git push origin main"
echo "   git push origin ${TAG}"
echo ""
echo "The GitHub Actions workflow will automatically build and publish the release."
