# mason.lua

Este archivo configura `mason.nvim` y `mason-lspconfig.nvim` para gestionar servidores de lenguaje (LSP), linters y formateadores.

## Plugins

- **[williamboman/mason.nvim](https://github.com/williamboman/mason.nvim)**
- **[williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)**

## Configuración

- **`mason.nvim`**: La interfaz de usuario de Mason se configura con bordes redondeados.
- **`mason-lspconfig.nvim`**:
    - **`ensure_installed`**: Asegura que los siguientes servidores de lenguaje estén instalados: `angularls`, `astro`, `gopls`, `jsonls`, `marksman`, `rust_analyzer`, `tailwindcss`, `taplo`.
    - **`handlers`**: Configura cómo se deben iniciar los servidores de lenguaje. La configuración predeterminada utiliza `lspconfig` con los atajos de teclado de `LazyVim` y las capacidades de `cmp_nvim_lsp`.
