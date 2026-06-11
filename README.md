# dotfiles

Minimal Hyprland configuration with Tokyo Night aesthetic and Material You dynamic colors.

## Structure

```
hypr/         → ~/.config/hypr/       modular Hyprland configs
waybar/       → ~/.config/waybar/     status bar (Tokyo Night CSS)
rofi/         → ~/.config/rofi/       app launcher (Tokyo Night theme)
kitty/        → ~/.config/kitty/      terminal (Tokyo Night theme)
scripts/      → ~/.config/scripts/    helper scripts
wallpapers/   → ~/.config/wallpapers/ wallpaper images
matugen/      → matugen templates     Material You color generation
legacy/       → archived bspwm/sxhkd  previous WM setup (reference)
```

## Hyprland Modules

| File                  | Purpose                    |
|-----------------------|----------------------------|
| `hyprland.conf`       | Entry point, general, etc. |
| `env.conf`            | Wayland environment vars    |
| `monitors.conf`       | Monitor layout              |
| `bindings.conf`       | Keybindings                 |
| `windows.conf`        | Window rules                |
| `animations.conf`     | Subtle animations           |
| `autostart.conf`      | Startup applications        |
| `hypridle.conf`       | Idle/lock/suspend           |

## Migration from bspwm/sxhkd

The `legacy/` directory contains the old bspwmrc and sxhkdrc. Keybindings
are ported with the same muscle memory (Super+h/j/k/l for vim-style
navigation, same workspace keybinds, same media keys).

## Dynamic Colors

Change your wallpaper and generate a Material You palette:

```bash
matugen image ~/.config/wallpapers/your-image.png -t scheme-tonal-spot
```

Or use the helper script:

```bash
~/.config/scripts/set-wallpaper ~/path/to/image.jpg
```

## Dependencies (CachyOS)

```
hyprland waybar rofi dunst swww matugen-bin
hyprlock hypridle greenclip wl-clipboard
brightnessctl pipewire wireplumber
polkit-gnome nwg-look
ttf-jetbrains-mono-nerd noto-fonts
firefox thunar ghostty
```
