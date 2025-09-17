# prettier.lua

Este archivo configura el formateo de código utilizando `conform.nvim` y `prettier`.

## Plugin

- **[stevearc/conform.nvim](https://github.com/stevearc/conform.nvim)**

## Configuración

- **Formateadores por Tipo de Archivo (`formatters_by_ft`):**
    - Se configura `prettier` como el formateador para los siguientes tipos de archivo: `javascript`, `javascriptreact`, `typescript`, `typescriptreact`, `css`, `html`, `json`, `yaml`, y `markdown`.
- **Formateo al Guardar (`format_on_save`):**
    - Se habilita el formateo automático al guardar el archivo.
    - Se establece un tiempo de espera de 500ms y se permite recurrir al LSP si `prettier` falla.
