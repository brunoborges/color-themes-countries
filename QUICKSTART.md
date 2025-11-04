# Quick Start Guide

## Test the Extension Locally

### Step 1: Install the Extension

Copy the extension to your VS Code extensions folder:

**macOS/Linux:**
```bash
cp -r /Users/brunoborges/color-themes-countries ~/.vscode/extensions/
```

**Windows:**
```cmd
xcopy "C:\path\to\color-themes-countries" "%USERPROFILE%\.vscode\extensions\color-themes-countries\" /E /I
```

### Step 2: Reload VS Code

- Press `Ctrl+R` (Windows/Linux) or `Cmd+R` (macOS)
- Or restart VS Code completely

### Step 3: Apply a Theme

1. Press `Ctrl+Shift+P` / `Cmd+Shift+P` to open Command Palette
2. Type `Color Theme`
3. Select `Preferences: Color Theme`
4. Choose any country theme from the list

## Try Different Themes

Each theme offers a unique color experience:

### 🇺🇸 USA - Stars & Stripes
Classic blue tones with soft red accents

### 🇮🇳 India - Saffron Dream
Warm saffron and cool green balanced palette

### 🇨🇳 China - Dragon Red
Bold red with golden highlights

### 🇧🇷 Brazil - Tropical Green
Vibrant green with yellow energy

### 🇬🇧 UK - Royal Blue
Sophisticated blue with subtle red accents

### 🇩🇪 Germany - Berlin Night
Elegant black, red, and gold combination

### 🇯🇵 Japan - Sakura Soft
Gentle pink tones inspired by cherry blossoms

### 🇫🇷 France - Tricolore Moderne
Modern interpretation of blue, white, and red

### 🇨🇦 Canada - Maple Leaf
Clean red and white aesthetic

### 🇷🇺 Russia - Winter Frost
Cool blue and white with subtle red

### 🇰🇷 South Korea - Tech Seoul
Modern blue with tech-inspired accents

### 🇦🇺 Australia - Outback Sunset
Warm sunset colors with blue base

### 🇳🇱 Netherlands - Orange Horizon
Distinctive orange with blue balance

### 🇵🇱 Poland - Baltic White
Clean white and red minimalist design

### ��🇸 Spain - Mediterranean Sun
Sunny yellow and red warmth

### 🇸🇪 Sweden - Nordic Blue
Cool Scandinavian blue and yellow

### 🇺🇦 Ukraine - Wheat & Sky
Bright blue sky with golden wheat

### 🇦🇷 Argentina - Sky Light
Light blue with white clarity

### 🇮🇱 Israel - Tech Aviv
Innovation-inspired blue and white

### 🇸🇬 Singapore - Lion City
Bold red with white precision

## Package the Extension (Optional)

To create a distributable `.vsix` file:

```bash
# Install vsce if not already installed
npm install -g @vscode/vsce

# Navigate to the extension directory
cd /Users/brunoborges/color-themes-countries

# Package the extension
vsce package
```

This creates a `color-themes-countries-1.0.0.vsix` file that you can:
- Share with others
- Install on other machines
- Publish to VS Code Marketplace

## Keyboard Shortcuts

- **Switch Theme**: `Ctrl+K Ctrl+T` (Windows/Linux) or `Cmd+K Cmd+T` (macOS)
- **Command Palette**: `Ctrl+Shift+P` / `Cmd+Shift+P`
- **Reload Window**: `Ctrl+R` / `Cmd+R`

## Tips

1. **Preview Multiple Themes**: Use up/down arrows in the theme picker to quickly preview different themes
2. **Customize Further**: You can override specific colors in your `settings.json` under `workbench.colorCustomizations`
3. **Share Your Favorite**: Each theme works great for screenshots and screen sharing

## What's Next?

- Try all 20 themes to find your favorite
- Customize colors to your preference
- Consider publishing to the VS Code Marketplace
- Share with your team or developer community

Enjoy coding with colors from around the world! 🌍
