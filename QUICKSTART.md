# Quick Start Guide

## Local Development

### Step 1: Create Symlink

**macOS/Linux:**
```bash
ln -s /path/to/color-themes-countries ~/.vscode/extensions/color-themes-countries
```

**Windows (admin required):**
```cmd
mklink /D "%USERPROFILE%\.vscode\extensions\color-themes-countries" "C:\path\to\color-themes-countries"
```

### Step 2: Reload VS Code

Press `Ctrl+R` / `Cmd+R`

### Step 3: Select Theme

1. `Ctrl+Shift+P` / `Cmd+Shift+P`
2. Type `Color Theme`
3. Choose a country theme

## Package Extension

```bash
npm install -g @vscode/vsce
vsce package
```

## Keyboard Shortcuts

- **Switch Theme**: `Ctrl+K Ctrl+T` / `Cmd+K Cmd+T`
- **Command Palette**: `Ctrl+Shift+P` / `Cmd+Shift+P`
