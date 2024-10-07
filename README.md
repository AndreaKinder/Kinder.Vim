# Configuración de Neovim

Este repositorio contiene mi configuración personal de Neovim. Está diseñada para mejorar la productividad y proporcionar una experiencia de codificación fluida.

## Características

- **Moderno y rápido:** Utiliza Lua para la configuración
- **Carga perezosa:** Mejora el tiempo de inicio
- **Extensible:** Fácil de añadir nuevos plugin y personalizar

## Requisitos previos

- Neovim (versión X.X o superior)
- Git
- Iosevka Nerd Font (para los iconos)

## Instalación

```bash
# Instalar Neovim y Git
sudo pacman -S neovim git

# Clonar la configuración de Neovim
git clone https://github.com/yourusername/nvim-config.git ~/.config/nvim

# Instalar lazy.nvim (gestor de plugins)
git clone --filter=blob:none https://github.com/folke/lazy.nvim.git --branch=stable ~/.local/share/nvim/lazy/lazy.nvim

# Iniciar Neovim
nvim
```

Neovim instalará automáticamente el gestor de plugins y los plugins en la primera ejecución.

## Plugins principales

- Gestor de plugins: lazy.nvim
- Explorador de archivos: nvim-tree.lua
- Buscador difuso: telescope.nvim
- Editor de código: vim-visual-multi
- Integración con Obsidian: obsidian.nvim
- Soporte para Markdown: markdown-preview.nvim

## Estructura de la configuración

- init.lua: Archivo principal de configuración
- lua/config/
    - autocmds.lua: Autocomandos
    - keymaps.lua: Atajos de teclado personalizados
    - lazy.lua: Configuración del gestor de plugins
    - options.lua: Opciones de Neovim
- lua/plugins/: Archivos de configuración individual de plugins

## Personalización

Para añadir o modificar plugins, edita el archivo `lua/plugins.lua`. Para otras personalizaciones, revisa los archivos relevantes en el directorio `lua/`.

## Rendimiento

Esta configuración está optimizada para el rendimiento. Puedes comprobar el tiempo de inicio con:

```bash
nvim --startuptime startup.log
```

## Solución de problemas

Si encuentras algún problema, por favor verifica lo siguiente:

- Asegúrate de que todos los requisitos previos estén instalados
- Ejecuta `:checkhealth` en Neovim para obtener diagnósticos
- Revisa los mensajes de error y los registros

## Contribuciones

¡Las contribuciones son bienvenidas! Por favor, no dudes en enviar un Pull Request.