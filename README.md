<div align="center">

# ✦ Qwenix KDE Plasma Config ✦

**Персонализированный, производительный и эстетичный пресет окружения KDE Plasma 6 для CachyOS / Arch Linux.**

[![Arch Linux](https://img.shields.io/badge/Arch_Linux-blue?style=for-the-badge&logo=arch-linux&logoColor=white)](https://archlinux.org/)
[![CachyOS](https://img.shields.io/badge/CachyOS-00b4d8?style=for-the-badge&logo=linux&logoColor=white)](https://cachyos.org/)
[![KDE Plasma 6](https://img.shields.io/badge/KDE_Plasma_6-1d99f3?style=for-the-badge&logo=kde&logoColor=white)](https://kde.org/)
[![Shell Script](https://img.shields.io/badge/Bash-4EAA25?style=for-the-badge&logo=gnu-bash&logoColor=white)](install.sh)

<br>

<img src="wallpaper.png" alt="Desktop Preview" width="92%" style="border-radius: 12px; box-shadow: 0 10px 30px rgba(0,0,0,0.5);">

</div>

---

### ✨ Особенности сборки

* **Window Decorations:** `Utterly-Round-Dark` — закругленные рамки и macOS-подобные акцентные кнопки управления окнами на движке Aurorae v2.
* **Color Scheme:** `MkosBigSurDark` — глубокая темная тема с контрастными системными акцентами.
* **Cursor Theme:** `FossaCursors` — аккуратный сглаженный набор курсоров.
* **Base Plasma Theme:** `Breeze Dark` — стабильная основа для системных виджетов и трея.
* **Full Dotfiles:** Автоматическое восстановление раскладки панелей, шорткатов, параметров мыши и конфигов рабочих утилит.

---

### 📦 Состав пакетов

Конфиг разделен на три уровня зависимостей для быстрой и чистой установки:

| Категория | Источник | Основные компоненты |
| :--- | :--- | :--- |
| **Системные утилиты и GUI** | Official Repos (`pacman`) | Базовые библиотеки KWin/Plasma, мультимедиа-кодеки, терминал, утилиты мониторинга и файловый менеджер (`packages.txt`) |
| **Расширения и AUR** | Arch User Repository (`paru` / `yay`) | Кастомные темы оформления, шрифты, дополнительные виджеты панели и специфичные утилиты окружения (`aur-packages.txt`) |
| **Пользовательский софт** | Flathub (`flatpak`) | Изолированные десктопные приложения, мессенджеры и медиаплееры (`flatpak-packages.txt`) |

> Точные списки пакетов вынесены в текстовые файлы в корне репозитория и могут быть отредактированы под свои задачи перед запуском.

---

### 🚀 Быстрая установка

**Способ 1. Пошаговые команды:**

```text
git clone [https://github.com/qwenix123/Qwenix-Kde-plasma-config.git](https://github.com/qwenix123/Qwenix-Kde-plasma-config.git) ~/qwenix-config
cd ~/qwenix-config
./install.sh
