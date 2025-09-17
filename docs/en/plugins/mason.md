# mason.lua

This file configures `mason.nvim` and `mason-lspconfig.nvim` to manage language servers (LSPs), linters, and formatters.

## Plugins

- **[williamboman/mason.nvim](https://github.com/williamboman/mason.nvim)**
- **[williamboman/mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim)**

## Configuration

- **`mason.nvim`**: The Mason UI is configured with rounded borders.
- **`mason-lspconfig.nvim`**:
    - **`ensure_installed`**: Ensures that the following language servers are installed: `angularls`, `astro`, `gopls`, `jsonls`, `marksman`, `rust_analyzer`, `tailwindcss`, `taplo`.
    - **`handlers`**: Configures how language servers should be started. The default configuration uses `lspconfig` with `LazyVim`'s keymaps and `cmp_nvim_lsp`'s capabilities.
