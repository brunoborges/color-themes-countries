# Project Structure

```
color-themes-countries/
│
├── package.json              # Extension manifest with theme definitions
├── README.md                 # Main documentation
├── CHANGELOG.md              # Version history
├── INSTALLATION.md           # Installation instructions
├── LICENSE                   # MIT License
├── .vscodeignore            # Files to ignore when packaging
│
└── themes/                   # Theme JSON files
    ├── usa-theme.json
    ├── india-theme.json
    ├── china-theme.json
    ├── brazil-theme.json
    ├── uk-theme.json
    ├── germany-theme.json
    ├── japan-theme.json
    ├── france-theme.json
    ├── canada-theme.json
    ├── russia-theme.json
    ├── south-korea-theme.json
    ├── australia-theme.json
    ├── netherlands-theme.json
    ├── poland-theme.json
    ├── spain-theme.json
    ├── sweden-theme.json
    ├── ukraine-theme.json
    ├── argentina-theme.json
    ├── israel-theme.json
    └── singapore-theme.json
```

## File Descriptions

### Root Files

- **package.json**: The extension manifest that defines metadata, contributes themes, and specifies VS Code version requirements
- **README.md**: Main documentation with theme descriptions and usage instructions
- **CHANGELOG.md**: Version history and release notes
- **INSTALLATION.md**: Detailed installation instructions for different platforms
- **LICENSE**: MIT License text
- **.vscodeignore**: Specifies which files to exclude when packaging the extension

### Themes Directory

Contains 20 JSON files, each defining a complete VS Code color theme with:
- Editor colors (background, foreground, UI elements)
- Token colors (syntax highlighting for different code elements)
- Modern, soft color palettes inspired by country flags

## Theme File Structure

Each theme JSON file contains:

```json
{
  "name": "Theme Name",
  "type": "dark",
  "colors": {
    // UI colors for editor, sidebar, status bar, etc.
  },
  "tokenColors": [
    // Syntax highlighting rules for code elements
  ]
}
```

## Key Features

1. **20 Unique Themes**: Each inspired by a country with significant developer population
2. **Modern Color Palettes**: Soft, easy-on-the-eyes colors derived from flag colors
3. **Dark Theme Optimized**: All themes are dark variants for reduced eye strain
4. **Consistent Syntax Highlighting**: Clear distinction between keywords, strings, variables, etc.
5. **Easy Installation**: Simple setup through VS Code Extensions or manual installation

## Countries Represented

The themes represent these countries (in package.json order):
1. USA
2. India
3. China
4. Brazil
5. UK
6. Germany
7. Japan
8. France
9. Canada
10. Russia
11. South Korea
12. Australia
13. Netherlands
14. Poland
15. Spain
16. Sweden
17. Ukraine
18. Argentina
19. Israel
20. Singapore

## Next Steps

To publish this extension to the VS Code Marketplace:

1. Create a publisher account on https://marketplace.visualstudio.com/
2. Get a Personal Access Token from Azure DevOps
3. Install vsce: `npm install -g @vscode/vsce`
4. Package: `vsce package`
5. Publish: `vsce publish`

For more details, see: https://code.visualstudio.com/api/working-with-extensions/publishing-extension
