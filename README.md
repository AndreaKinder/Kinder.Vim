# Kinder.Vim

Esta es mi configuración personal de Neovim, diseñada para ser un editor de código potente y productivo. Originalmente creado para mi [configuración de Arch Linux](https://github.com/AndreaKinder/ArchKinder.Dots) (que ya no se mantiene), ahora es mi configuración principal para el desarrollo de software.

![KinderVim Screenshot](screenshots/KinderVim-ScreenShot.png)
![KinderVim Code Screenshot](screenshots/KinderVim-Code-ScreenShot.png)

## Características

- **Rápido y Ligero:** Optimizado para el rendimiento.
- **Interfaz Moderna:** Interfaz limpia y estética con el tema `tokyonight`.
- **Soporte Completo de LSP:** Autocompletado, diagnósticos y formateo.
- **Integración con IA:** Soporte para GitHub Copilot y Gemini.
- **Fácil Personalización:** Estructura modular impulsada por `lazy.nvim`.

## Requisitos previos

- **Neovim:** Versión 0.9 o superior.
- **Git:** Para la gestión de plugins.
- **Nerd Font:** Se recomienda [Iosevka Nerd Font](https://www.nerdfonts.com/font-downloads) para una correcta visualización de los iconos.
- **Dependencias de plugins:** Asegúrate de tener instalados los requisitos para los plugins de `mason.nvim`.

## Instalación

1.  **Clona el repositorio:**
    ```bash
    git clone https://github.com/AndreaKinder/Kinder.Vim.git ~/.config/
    ```

2.  **Inicia Neovim:**
    ```bash
    nvim
    ```
    `lazy.nvim` se instalará automáticamente y gestionará los plugins en el primer inicio.

## Documentación

Para una documentación más detallada sobre la estructura del proyecto, plugins y configuraciones, por favor consulta la [documentación completa aquí](./docs/es/index.md).

## Contribuciones

Las contribuciones son bienvenidas. Si tienes alguna sugerencia o mejora, no dudes in abrir un *Pull Request*.
