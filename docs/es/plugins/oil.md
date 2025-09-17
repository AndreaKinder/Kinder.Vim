# oil.lua

Este archivo configura `oil.nvim`, un explorador de archivos que permite editar el sistema de archivos como si fuera un buffer de Neovim.

## Plugin

- **[stevearc/oil.nvim](https://github.com/stevearc/oil.nvim)**

## Configuración

- **Atajos de Teclado:**
    - `-`: Abre Oil en el directorio padre.
    - `<leader>E`: Abre Oil en una ventana flotante.
    - `<leader>-`: Abre Oil en el directorio del archivo actual.
- **Explorador de Archivos por Defecto:** Oil se establece como el explorador de archivos por defecto.
- **Opciones de Vista:** Muestra los archivos ocultos por defecto y utiliza un ordenamiento natural.
- **Autocomandos:** Configura autocomandos para que los buffers de Oil no tengan columna de color ni de signos, y para que se guarden automáticamente al salir si hay modificaciones.
