#!/usr/bin/env bash
set -euo pipefail

echo "==> 1. Instalando dependencias base con pacman..."
sudo pacman -S --needed --noconfirm \
    hyprland waybar rofi-wayland dunst swww hyprlock hypridle \
    ghostty stow polkit-gnome nwg-look wl-clipboard greenclip \
    brightnessctl pipewire wireplumber python-jinja \
    xdg-desktop-portal-hyprland xdg-desktop-portal-gtk \
    ttf-jetbrains-mono-nerd noto-fonts ttf-nerd-fonts-symbols-common

echo "==> 2. Instalando matugen-bin desde el AUR..."
if command -v cachyos-package-manager &> /dev/null; then
    cachyos-package-manager inst matugen-bin
elif command -v yay &> /dev/null; then
    yay -S --noconfirm matugen-bin
else
    echo "Error: cachyos-package-manager o yay no están instalados." >&2
    exit 1
fi

echo "==> 3. Creando directorios necesarios..."
mkdir -p "$HOME/.config/wallpapers" "$HOME/.config/matugen/output"

echo "==> 4. Desplegando configuraciones con GNU Stow..."
stow -v -t "$HOME/.config" hypr waybar rofi ghostty matugen scripts wallpapers

echo "==> 5. Configurando permisos e inicializando colores..."
chmod +x "$HOME/.config/scripts/"*
"$HOME/.config/scripts/apply-colors" || echo "Aviso: La paleta se inicializará completamente al arrancar Hyprland."

echo "==> [ÉXITO] Instalación completada con éxito."
