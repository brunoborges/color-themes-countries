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

Or copy the entire folder:
```bash
cp -r /path/to/color-themes-countries ~/.vscode/extensions/
```

### Windows

```cmd
cd %USERPROFILE%\.vscode\extensions
git clone <repository-url> color-themes-countries
```

Or manually copy the folder to:
```
%USERPROFILE%\.vscode\extensions\
```

## Option 3: Install from VSIX Package

1. Download the `.vsix` file from releases
2. Open VS Code
3. Go to Extensions view (`Ctrl+Shift+X` / `Cmd+Shift+X`)
4. Click on the `...` menu at the top
5. Select **Install from VSIX...**
6. Choose the downloaded `.vsix` file

## Activating a Theme

After installation:

1. Open Command Palette:
   - Windows/Linux: `Ctrl+Shift+P`
   - macOS: `Cmd+Shift+P`

2. Type: `Color Theme` or `Preferences: Color Theme`

3. Browse and select your preferred country theme:
   - USA - Stars & Stripes
   - India - Saffron Dream
   - China - Dragon Red
   - Brazil - Tropical Green
   - UK - Royal Blue
   - Germany - Berlin Night
   - Japan - Sakura Soft
   - France - Tricolore Moderne
   - Canada - Maple Leaf
   - Russia - Winter Frost
   - South Korea - Tech Seoul
   - Australia - Outback Sunset
   - Netherlands - Orange Horizon
   - Poland - Baltic White
   - Spain - Mediterranean Sun
   - Sweden - Nordic Blue
   - Ukraine - Wheat & Sky
   - Argentina - Sky Light
   - Israel - Tech Aviv
   - Singapore - Lion City

## Building from Source

If you want to package the extension yourself:

1. Install `vsce` (Visual Studio Code Extension Manager):
   ```bash
   npm install -g @vscode/vsce
   ```

2. Navigate to the extension directory:
   ```bash
   cd /path/to/color-themes-countries
   ```

3. Package the extension:
   ```bash
   vsce package
   ```

4. This will create a `.vsix` file that you can install

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
