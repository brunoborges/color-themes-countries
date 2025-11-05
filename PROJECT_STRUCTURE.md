# Project Structure

```
color-themes-countries/
│
├── package.json              # Extension manifest
├── README.md                 # Main documentation
├── CHANGELOG.md              # Version history
├── INSTALLATION.md           # Installation guide
├── QUICKSTART.md             # Local development guide
├── LICENSE                   # MIT License
├── .vscodeignore            # Packaging exclusions
├── .github/workflows/        # CI/CD automation
│
└── themes/                   # 40 theme files (20 countries × 2 variants)
    ├── argentina-dark-theme.json
    ├── argentina-light-theme.json
    └── ...
```

## Theme File Structure

Each theme JSON file contains:

```json
{
  "name": "Theme Name",
  "type": "dark" | "light",
  "colors": { /* UI colors */ },
  "tokenColors": [ /* Syntax highlighting */ ]
}
```

## Publishing

See [PUBLISHING.md](PUBLISHING.md) for build and release instructions.
