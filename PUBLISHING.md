# Publishing Guide

This guide explains how to build and release new versions of the Country Color Themes extension.

## Prerequisites

- [Node.js](https://nodejs.org/) (v20 or higher)
- [Visual Studio Code Extension Manager (vsce)](https://github.com/microsoft/vscode-vsce)
- Git repository access with push permissions
- GitHub account with repository write access

## Installing vsce

If you haven't already installed vsce globally:

```bash
npm install -g @vscode/vsce
```

## Release Process

### Automated Release (Recommended)

Use the release scripts to streamline the entire process:

```bash
# Step 1: Prepare the release (updates version files)
./scripts/prepare-release.sh 1.0.1

# Step 2: Review the changes
git diff

# Step 3: Publish the release (commits, tags, and pushes)
./scripts/publish-release.sh 1.0.1
```

**What `prepare-release.sh` does:**
1. Updates `package.json` with the new version
2. Updates `CHANGELOG.md` with the new version and current date

**What `publish-release.sh` does:**
1. Shows you a diff of changes to be committed
2. Commits `package.json` and `CHANGELOG.md` with message "Release X.Y.Z"
3. Creates an annotated git tag `vX.Y.Z`
4. Pushes the commit and tag to origin
5. Provides links to track the GitHub Actions workflow

The GitHub Actions workflow will automatically build and publish the release.

### Manual Release Process

If you prefer to do it manually:

### Manual Release Process

If you prefer to do it manually:

#### 1. Update Version Number

Edit `package.json` and increment the version number following [Semantic Versioning](https://semver.org/):

- **Patch** (1.0.x): Bug fixes and minor changes
- **Minor** (1.x.0): New themes or features, backwards compatible
- **Major** (x.0.0): Breaking changes

```json
{
  "version": "1.0.1"
}
```

#### 2. Update CHANGELOG.md

Document all changes in `CHANGELOG.md`:

```markdown
## [Unreleased]

## [1.0.1] - 2024-XX-XX

### Added
- New theme for Country X

### Fixed
- Color contrast improvements in Theme Y

### Changed
- Updated token colors for better readability
```

#### 3. Commit Changes

```bash
git add package.json CHANGELOG.md
git commit -m "Bump version to 1.0.1"
git push origin main
```

#### 4. Create and Push Version Tag

The release process is automated via GitHub Actions when you push a version tag:

```bash
git tag v1.0.1
git push origin v1.0.1
```

---

### 5. Automated Release

Once the tag is pushed, GitHub Actions will automatically:

1. Check out the code
2. Set up Node.js 20
3. Extract the version from the tag
4. Update `package.json` with the version
5. Package the extension into a `.vsix` file
6. Create a GitHub Release with:
   - Release notes (auto-generated from commits)
   - The `.vsix` file as a downloadable asset

### 6. Verify Release

1. Go to [GitHub Releases](https://github.com/brunoborges/color-themes-countries/releases)
2. Verify the new release appears with the correct version
3. Download the `.vsix` file and test installation:
   ```bash
   code --install-extension color-themes-countries-1.0.1.vsix
   ```

## Manual Build (Testing)

To build the extension locally without releasing:

```bash
# Package the extension
vsce package

# This creates: color-themes-countries-X.Y.Z.vsix
```

Test the local build:

```bash
code --install-extension color-themes-countries-X.Y.Z.vsix
```

## Publishing to VS Code Marketplace (Future)

When ready to publish to the official marketplace:

1. Create a [Visual Studio Marketplace publisher account](https://marketplace.visualstudio.com/manage)
2. Generate a Personal Access Token (PAT) from [Azure DevOps](https://dev.azure.com/)
3. Login with vsce:
   ```bash
   vsce login <publisher-name>
   ```
4. Publish the extension:
   ```bash
   vsce publish
   ```

Or publish directly from a specific version:

```bash
vsce publish minor  # Increments minor version
vsce publish patch  # Increments patch version
vsce publish major  # Increments major version
```

## Rollback Process

If a release has issues:

1. Delete the problematic tag locally and remotely:
   ```bash
   git tag -d v1.0.1
   git push origin :refs/tags/v1.0.1
   ```

2. Delete the GitHub Release from the web interface

3. Fix the issues and create a new version

## GitHub Actions Workflows

### Build Workflow (`.github/workflows/build.yml`)
- Triggers on: Push to `main`, Pull Requests
- Purpose: Validates that the extension can be packaged
- Outputs: Uploads `.vsix` file as artifact

### Release Workflow (`.github/workflows/release.yml`)
- Triggers on: Version tags (`v*.*.*`)
- Purpose: Creates official releases with `.vsix` files
- Requires: `GITHUB_TOKEN` (automatically provided)

## Troubleshooting

### "Dependencies lock file is not found"
- This project doesn't use npm dependencies, so no `package-lock.json` is needed
- The workflows have been configured to skip npm caching

### "ReferenceError: File is not defined"
- Ensure `package.json` has the `repository` field correctly set
- Use the latest version of `@vscode/vsce`
- Verify Node.js version is 20 or higher

### Release workflow not triggering
- Ensure tag follows the pattern `v*.*.*` (e.g., `v1.0.1`, not `1.0.1`)
- Verify the tag was pushed to the remote: `git push origin v1.0.1`
- Check GitHub Actions tab for workflow status

## Best Practices

1. **Test locally** before creating a release tag
2. **Update CHANGELOG.md** with every release
3. **Use semantic versioning** consistently
4. **Tag annotated releases** for better Git history:
   ```bash
   git tag -a v1.0.1 -m "Release version 1.0.1"
   ```
5. **Review auto-generated release notes** and edit if needed
6. **Keep themes consistent** across light and dark variants

## Resources

- [VS Code Extension API](https://code.visualstudio.com/api)
- [Theme Color Reference](https://code.visualstudio.com/api/references/theme-color)
- [Publishing Extensions](https://code.visualstudio.com/api/working-with-extensions/publishing-extension)
- [Semantic Versioning](https://semver.org/)
