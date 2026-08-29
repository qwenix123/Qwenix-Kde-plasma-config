#!/usr/bin/env bash
set -e

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

GREEN="\e[32m"
CYAN="\e[36m"
YELLOW="\e[33m"
RESET="\e[0m"

echo -e "${CYAN}==> [1/4] Обновление зеркал и установка официальных пакетов...${RESET}"
sudo pacman -Syu --needed --noconfirm base-devel

if [ -f "$DIR/packages.txt" ]; then
    OFFICIAL_PKGS=$(grep -vE '^\s*#|^\s*$' "$DIR/packages.txt" | tr '\n' ' ')
    sudo pacman -S --needed --noconfirm $OFFICIAL_PKGS
fi

echo -e "${CYAN}==> [2/4] Проверка AUR-хелпера...${RESET}"
AUR_HELPER=""
if command -v paru &>/dev/null; then
    AUR_HELPER="paru"
elif command -v yay &>/dev/null; then
    AUR_HELPER="yay"
else
    echo -e "${YELLOW}==> AUR-хелпер не найден. Собираем paru-bin...${RESET}"
    git clone https://aur.archlinux.org/paru-bin.git /tmp/paru-bin
    (cd /tmp/paru-bin && makepkg -si --noconfirm)
    rm -rf /tmp/paru-bin
    AUR_HELPER="paru"
fi

echo -e "${CYAN}==> [3/4] Установка пакетов из AUR через $AUR_HELPER...${RESET}"
if [ -f "$DIR/aur-packages.txt" ]; then
    AUR_PKGS=$(grep -vE '^\s*#|^\s*$' "$DIR/aur-packages.txt" | tr '\n' ' ')
    $AUR_HELPER -S --needed --noconfirm $AUR_PKGS
fi

echo -e "${CYAN}==> [4/4] Настройка Flatpak и установка приложений...${RESET}"
if command -v flatpak &>/dev/null; then
    # Подключаем репозиторий Flathub, если он еще не добавлен
    flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

    if [ -f "$DIR/flatpak-packages.txt" ]; then
        while IFS= read -r app || [ -n "$app" ]; do
            # Пропускаем комментарии и пустые строки
            [[ "$app" =~ ^[[:space:]]*# ]] && continue
            [[ -z "${app// }" ]] && continue

            echo -e "${GREEN}==> Ставим Flatpak: $app...${RESET}"
            flatpak install -y flathub "$app"
        done < "$DIR/flatpak-packages.txt"
    fi
fi

echo -e "${GREEN}==> Все пакеты (Pacman, AUR, Flatpak) успешно установлены!${RESET}"
