# colorscheme.lua

Este archivo configura el tema de colores `tokyonight` para Neovim.

## Plugin

- **[folke/tokyonight.nvim](https://github.com/folke/tokyonight.nvim)**

## Configuración

- El plugin se carga de forma no perezosa (`lazy = false`) y con alta prioridad (`priority = 1000`) para asegurar que el tema de colores se aplique al inicio.
- El comando `vim.cmd.colorscheme("tokyonight")` establece `tokyonight` como el tema de colores activo.
