# editor.lua

Este archivo configura varios plugins relacionados con la edición de código.

## Plugins y Configuración

- **[rmagatti/goto-preview](https://github.com/rmagatti/goto-preview):**
    - Proporciona previsualización para definiciones, declaraciones, implementaciones y referencias.
    - Define atajos de teclado con el prefijo `gp` para acceder a estas funciones.

- **[echasnovski/mini.hipatterns](https://github.com/echasnovski/mini.hipatterns):**
    - Resalta patrones de texto. Actualmente, está configurado para resaltar colores `hsl()` en el código, mostrando el color real como fondo.

- **[dinhhuy258/git.nvim](https://github.com/dinhhuy258/git.nvim):**
    - Proporciona integración con Git.
    - Define los atajos `<Leader>gb` para ver el `blame` del archivo y `<Leader>go` para abrir el archivo en el repositorio de Git.
