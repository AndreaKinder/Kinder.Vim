# which-key.lua

Este archivo configura el plugin `which-key.nvim` para mostrar los atajos de teclado disponibles.

## Plugin

- **[folke/which-key.nvim](https://github.com/folke/which-key.nvim)**

## Configuración

- **Evento de Carga:** Se carga de forma perezosa (`VeryLazy`) para no impactar el tiempo de inicio.
- **Tiempo de Espera:** Se establece un tiempo de espera de 300ms para las secuencias de teclas.
- **Atajo de Teclado:**
    - `<leader>?`: Muestra la ventana de `which-key` con los atajos de teclado locales al buffer actual.
