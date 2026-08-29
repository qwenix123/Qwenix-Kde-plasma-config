<div align="center">

# ✦ Qwenix KDE Plasma Config ✦

**Персонализированный, минималистичный и производительный рисовый  для KDE Plasma 6 на базе CachyOS / Arch Linux.**

[![Arch Linux](https://img.shields.io/badge/Arch_Linux-blue?style=for-the-badge&logo=arch-linux&logoColor=white)](https://archlinux.org/)
[![CachyOS](https://img.shields.io/badge/CachyOS-00b4d8?style=for-the-badge&logo=linux&logoColor=white)](https://cachyos.org/)
[![KDE Plasma 6](https://img.shields.io/badge/KDE_Plasma_6-1d99f3?style=for-the-badge&logo=kde&logoColor=white)](https://kde.org/)
[![Shell Script](https://img.shields.io/badge/Bash-4EAA25?style=for-the-badge&logo=gnu-bash&logoColor=white)](install.sh)

<br>

<img src="wallpaper.png" alt="Desktop Preview" width="90%" style="border-radius: 12px; box-shadow: 0 10px 30px rgba(0,0,0,0.5);">

</div>

---

### ✨ Визуальный стек и оформление

* **Оконные декорации:** `Utterly-Round-Dark` — закругленные рамки с кастомными кнопками в стиле macOS через движок Aurorae v2.
* **Цветовая палитра:** `MkosBigSurDark` — контрастная темная тема с акцентными системными цветами.
* **Тема курсоров:** `FossaCursors` — сглаженные векторные указатели.
* **Базовая тема:** `org.kde.breezedark.desktop` — надежная системная основа для трея и виджетов.
* **Обои:** Фирменный бэкграунд `wallpaper.png`, устанавливаемый через D-Bus API Plasma Shell.
* **Конфигурации:** Автоматическая фиксация раскладки панелей, шорткатов клавиатуры и чувствительности мыши (`kcminputrc`, `kwinrc`, `kglobalshortcutsrc`).

---

### 📦 Устанавливаемые пакеты

Скрипт `install_packages.sh` автоматически считывает манифесты из корня репозитория и накатывает окружение:

| Источник | Файл конфигурации | Назначение |
| :--- | :--- | :--- |
| **Официальные зеркала (`pacman`)** | `packages.txt` | Базовые зависимости KDE, системные утилиты, библиотеки рендеринга и CLI-инструменты |
| **Arch User Repository (`paru` / `yay`)** | `aur-packages.txt` | Пакеты из AUR: кастомные шрифты, системные виджеты и темы |
| **Flathub (`flatpak`)** | `flatpak-packages.txt` | Изолированные десктопные приложения, мессенджеры и медиа-софт |

> Вы можете изменить состав софта перед установкой, отредактировав соответствующие `.txt` файлы в корне папки.

---

### 🚀 Быстрая установка

Самый надежный способ установки — последовательный запуск команд:

```bash
git clone [https://github.com/qwenix123/Qwenix-Kde-plasma-config.git](https://github.com/qwenix123/Qwenix-Kde-plasma-config.git) ~/qwenix-config
cd ~/qwenix-config
./install.sh<div align="center">

# ✦ Qwenix KDE Plasma Config ✦

**Персонализированный, минималистичный и производительный  сетап для KDE Plasma 6 на базе CachyOS / Arch Linux.**

[![Arch Linux](https://img.shields.io/badge/Arch_Linux-blue?style=for-the-badge&logo=arch-linux&logoColor=white)](https://archlinux.org/)
[![CachyOS](https://img.shields.io/badge/CachyOS-00b4d8?style=for-the-badge&logo=linux&logoColor=white)](https://cachyos.org/)
[![KDE Plasma 6](https://img.shields.io/badge/KDE_Plasma_6-1d99f3?style=for-the-badge&logo=kde&logoColor=white)](https://kde.org/)
[![Shell Script](https://img.shields.io/badge/Bash-4EAA25?style=for-the-badge&logo=gnu-bash&logoColor=white)](install.sh)

<br>

<img src="wallpaper.png" alt="Desktop Preview" width="90%" style="border-radius: 12px; box-shadow: 0 10px 30px rgba(0,0,0,0.5);">

</div>

---

### ✨ Визуальный стек и оформление

* **Оконные декорации:** `Utterly-Round-Dark` — закругленные рамки с кастомными кнопками в стиле macOS через движок Aurorae v2.
* **Цветовая палитра:** `MkosBigSurDark` — контрастная темная тема с акцентными системными цветами.
* **Тема курсоров:** `FossaCursors` — сглаженные векторные указатели.
* **Базовая тема:** `org.kde.breezedark.desktop` — надежная системная основа для трея и виджетов.
* **Обои:** Фирменный бэкграунд `wallpaper.png`, устанавливаемый через D-Bus API Plasma Shell.
* **Конфигурации:** Автоматическая фиксация раскладки панелей, шорткатов клавиатуры и чувствительности мыши (`kcminputrc`, `kwinrc`, `kglobalshortcutsrc`).

---

### 📦 Устанавливаемые пакеты

Скрипт `install_packages.sh` автоматически считывает манифесты из корня репозитория и накатывает окружение:

| Источник | Файл конфигурации | Назначение |
| :--- | :--- | :--- |
| **Официальные зеркала (`pacman`)** | `packages.txt` | Базовые зависимости KDE, системные утилиты, библиотеки рендеринга и CLI-инструменты |
| **Arch User Repository (`paru` / `yay`)** | `aur-packages.txt` | Пакеты из AUR: кастомные шрифты, системные виджеты и темы |
| **Flathub (`flatpak`)** | `flatpak-packages.txt` | Изолированные десктопные приложения, мессенджеры и медиа-софт |

> Вы можете изменить состав софта перед установкой, отредактировав соответствующие `.txt` файлы в корне папки.

---

### 🚀 Быстрая установка

Самый надежный способ установки — последовательный запуск команд:

```bash
git clone [https://github.com/qwenix123/Qwenix-Kde-plasma-config.git](https://github.com/qwenix123/Qwenix-Kde-plasma-config.git) ~/qwenix-config
cd ~/qwenix-config
./install.sh
