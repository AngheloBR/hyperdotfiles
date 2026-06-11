# Wallpapers

Organized by visual character to help Matugen produce predictable color schemes.

## Directory layout

```
wallpapers/
├── current -> ...              symlink updated by set-wallpaper
├── favorites/                  curated picks that work particularly well
├── landscapes/                 nature, skies, mountains — cool/blue tones
├── abstract/                   gradients, geometric, art — vibrant/expressive
├── dark/                       predominantly dark images — muted/tonal
└── solid/                      minimal, flat color — clean/predictable
```

## How Matugen interprets each type

| Category | Material You result | Best for |
|---|---|---|
| **landscapes** | Blue/teal primary, green tertiary — natural tonal palette | Cool, calm setups |
| **abstract** | Vibrant primaries, high chroma — expressive palette | Colorful, energetic |
| **dark** | Low-luminance surface, muted accents — tonal/dim palette | Minimal, focus-oriented |
| **solid** | Colors pulled from the dominant hue — very predictable | Consistent theming |
| **favorites** | Whatever you've curated | Your best results |

## Tips for good results

- **scheme-tonal-spot** (default) works with almost any image — it extracts a harmonious 5-color palette
- Images with 1–3 dominant colors give the most predictable results
- Avoid busy, muddy, or low-contrast photos — they produce muted, washed-out schemes
- For dark themes, pick images that are mostly dark but have one clear accent color

## Usage

```bash
# Random from entire collection
set-wallpaper

# Specific image
set-wallpaper ~/pictures/wallpaper.jpg

# Random from a category
set-wallpaper ~/.config/wallpapers/landscapes/
```

The `current` symlink always points to the active wallpaper. Scripts and
`apply-colors` can reference it to regenerate colors without needing a path.
