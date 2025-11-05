# Installation Guide

## Option 1: Install from VS Code Marketplace (Recommended)

1. Open Visual Studio Code
2. Press `Ctrl+Shift+X` (Windows/Linux) or `Cmd+Shift+X` (macOS) to open Extensions
3. Search for "Country Color Themes"
4. Click **Install**
5. Reload VS Code if prompted

## Option 2: Manual Installation

### macOS/Linux

```bash
cd ~/.vscode/extensions
git clone <repository-url> color-themes-countries
```

Or create a symlink to the cloned repository:
```bash
ln -s /path/to/color-themes-countries ~/.vscode/extensions/color-themes-countries
```

### Windows

```cmd
cd %USERPROFILE%\.vscode\extensions
git clone <repository-url> color-themes-countries
```

Or create a symlink (requires administrator privileges):
```cmd
mklink /D "%USERPROFILE%\.vscode\extensions\color-themes-countries" "C:\path\to\color-themes-countries"
```

## Option 3: Install from VSIX Package

1. Download the `.vsix` file from releases
2. Open VS Code
3. Go to Extensions view (`Ctrl+Shift+X` / `Cmd+Shift+X`)
4. Click on the `...` menu at the top
5. Select **Install from VSIX...**
6. Choose the downloaded `.vsix` file

## Activating a Theme

1. `Ctrl+Shift+P` / `Cmd+Shift+P`
2. Type `Color Theme`
3. Select your preferred country theme

## Troubleshooting

### Theme not appearing in the list
- Reload VS Code: `Ctrl+R` / `Cmd+R`
- Check that the extension is installed: View > Extensions
- Verify the extension folder is in the correct location

### Colors not displaying correctly
- Make sure you're using a recent version of VS Code (1.80.0 or higher)
- Try restarting VS Code completely
- Check if another extension is overriding the theme

### Need help?
- Check the [README](README.md) for more information
- Report issues on the GitHub repository

## Uninstalling

1. Go to Extensions view (`Ctrl+Shift+X` / `Cmd+Shift+X`)
2. Find "Country Color Themes"
3. Click **Uninstall**
4. Reload VS Code

Or manually delete the extension folder:
- macOS/Linux: `~/.vscode/extensions/color-themes-countries`
- Windows: `%USERPROFILE%\.vscode\extensions\color-themes-countries`
