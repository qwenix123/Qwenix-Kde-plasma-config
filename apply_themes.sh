#!/usr/bin/env bash
set -e

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

GREEN="\e[32m"
CYAN="\e[36m"
RESET="\e[0m"

echo -e "${CYAN}==> [1/4] Распаковка тем, оформления и курсоров...${RESET}"
if [ -f "$DIR/themes_and_configs.tar.gz" ]; then
    tar -xzvf "$DIR/themes_and_configs.tar.gz" -C "$HOME"/
else
    echo "Ошибка: архив themes_and_configs.tar.gz не найден!"
    exit 1
fi

echo -e "${CYAN}==> [2/4] Обновление системных кэшей...${RESET}"
fc-cache -f >/dev/null 2>&1 || true
kbuildsycoca6 --noincremental >/dev/null 2>&1 || true

echo -e "${CYAN}==> [3/4] Активация тем оформления...${RESET}"
# Глобальная база Breeze Dark
plasma-apply-lookandfeel -a org.kde.breezedark.desktop || true

# Цветовая схема
plasma-apply-colorscheme MkosBigSurDark || true

# Курсоры
plasma-apply-cursortheme FossaCursors || true

# Оформление окон (Aurorae)
kwriteconfig6 --file "$HOME/.config/kwinrc" --group org.kde.kdecoration2 --key theme "__aurorae__svg__Utterly-Round-Dark"
kwriteconfig6 --file "$HOME/.config/kwinrc" --group org.kde.kdecoration2 --key library "org.kde.kwin.aurorae"

echo -e "${CYAN}==> [4/4] Установка обоев рабочего стола...${RESET}"
WALLPAPER_SRC="$DIR/wallpaper.png"

if [ -f "$WALLPAPER_SRC" ]; then
    mkdir -p "$HOME/.local/share/wallpapers"
    cp "$WALLPAPER_SRC" "$HOME/.local/share/wallpapers/custom_wallpaper.png"
    REAL_WALLPAPER="$HOME/.local/share/wallpapers/custom_wallpaper.png"

    qdbus6 org.kde.plasmashell /PlasmaShell org.kde.PlasmaShell.evaluateScript "
    var allDesktops = desktops();
    for (var i = 0; i < allDesktops.length; i++) {
        var d = allDesktops[i];
        d.wallpaperPlugin = 'org.kde.image';
        d.currentConfigGroup = ['Wallpaper', 'org.kde.image', 'General'];
        d.writeConfig('Image', 'file://${REAL_WALLPAPER}');
    }" || true
fi

echo -e "${CYAN}==> Перезапуск графической оболочки Plasma...${RESET}"
kquitapp6 plasmashell || killall plasmashell || true
kstart plasmashell >/dev/null 2>&1 &

echo -e "${GREEN}==> Все стили, темы и обои успешно применены!${RESET}"
