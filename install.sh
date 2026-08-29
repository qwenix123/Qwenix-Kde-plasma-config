#!/usr/bin/env bash
set -e

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
chmod +x "$DIR"/*.sh 2>/dev/null || true

CYAN="\e[36m"
GREEN="\e[32m"
YELLOW="\e[33m"
MAGENTA="\e[35m"
RED="\e[31m"
BOLD="\e[1m"
RESET="\e[0m"

show_header() {
    clear
    echo -e "${MAGENTA}${BOLD}"
    cat << "BANNER"
  ____                            _            ____             __ _       
 / __ \ _      __ ___   ____     (_) _  __    / __/___   ____  / /(_)____ _
/ /_/ /| | /| / // _ \ / __ \   / /| |/_/    / /_ / _ \ / __ \/ // // __ `/
\___\_\| |/ |/ //  __// / / /  / /_>  <     / __//  __// / / / // // /_/ / 
     \_/\__/|__/ \___//_/ /_/  /_//_/|_|    /_/   \___//_/ /_/_//_/ \__, /  
                                                                   /____/   
BANNER
    echo -e "${RESET}"
    echo -e "   ${CYAN}✦ CachyOS / Arch Linux ✦ KDE Plasma Rice & Setup ✦${RESET}"
    echo -e "   ---------------------------------------------------------"
    echo ""
}

show_packages() {
    clear
    echo -e "${BOLD}${CYAN}=== Системные пакеты (из официальных репозиториев) ===${RESET}"
    if [ -f "$DIR/packages.txt" ]; then
        echo -e "${YELLOW}$(cat "$DIR/packages.txt" | tr '\n' ' ')${RESET}"
    else
        echo -e "${RED}Файл packages.txt не найден${RESET}"
    fi

    echo ""
    echo -e "${BOLD}${CYAN}=== AUR Пакеты ===${RESET}"
    if [ -f "$DIR/aur-packages.txt" ]; then
        echo -e "${YELLOW}$(cat "$DIR/aur-packages.txt" | tr '\n' ' ')${RESET}"
    else
        echo -e "${RED}Файл aur-packages.txt не найден${RESET}"
    fi

    echo ""
    echo -e "${BOLD}${CYAN}=== Flatpak Пакеты ===${RESET}"
    if [ -f "$DIR/flatpak-packages.txt" ]; then
        echo -e "${YELLOW}$(cat "$DIR/flatpak-packages.txt" | tr '\n' ' ')${RESET}"
    else
        echo -e "${RED}Файл flatpak-packages.txt не найден${RESET}"
    fi

    echo ""
    echo -e "---------------------------------------------------------"
    read -rp "Нажмите [Enter], чтобы вернуться в главное меню..."
}

while true; do
    show_header
    echo -e "  ${BOLD}Выберите действие:${RESET}"
    echo ""
    echo -e "  ${GREEN}1)${RESET} Начать установку всего конфига (only KDE Plasma CachyOS/Arch)"
    echo -e "  ${CYAN}2)${RESET} Установить только оформление (темы, курсоры, обои)"
    echo -e "  ${YELLOW}3)${RESET} Установить только пакеты приложений"
    echo -e "  ${MAGENTA}4)${RESET} Узнать, какие пакеты скачивает этот конфиг"
    echo -e "  ${RED}5)${RESET} Выход"
    echo ""
    read -rp "  Введите номер пункта [1-5]: " choice

    case "$choice" in
        1)
            echo ""
            echo -e "${GREEN}==> Запуск полной установки...${RESET}"
            "$DIR/install_packages.sh"
            "$DIR/apply_themes.sh"
            echo ""
            echo -e "${GREEN}${BOLD}✔ Полная установка завершена!${RESET}"
            read -rp "Нажмите [Enter] для завершения..."
            exit 0
            ;;
        2)
            echo ""
            echo -e "${CYAN}==> Установка визуального оформления...${RESET}"
            "$DIR/apply_themes.sh"
            echo ""
            echo -e "${GREEN}${BOLD}✔ Оформление успешно установлено!${RESET}"
            read -rp "Нажмите [Enter] для завершения..."
            exit 0
            ;;
        3)
            echo ""
            echo -e "${YELLOW}==> Установка пакетов приложений...${RESET}"
            "$DIR/install_packages.sh"
            echo ""
            echo -e "${GREEN}${BOLD}✔ Пакеты успешно установлены!${RESET}"
            read -rp "Нажмите [Enter] для завершения..."
            exit 0
            ;;
        4)
            show_packages
            ;;
        5)
            echo ""
            echo -e "${RED}Выход из инсталлера. До свидания!${RESET}"
            exit 0
            ;;
        *)
            echo -e "${RED}Неверный выбор. Повторите ввод.${RESET}"
            sleep 1
            ;;
    esac
done
