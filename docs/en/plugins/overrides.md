# overrides.lua

This file contains configuration overrides for specific plugins, allowing modification of their default behavior in LazyVim.

## Modified Plugins

- **[folke/trouble.nvim](https://github.com/folke/trouble.nvim):**
    - The `use_diagnostic_signs` option is enabled.

- **[simrat39/symbols-outline.nvim](https://github.com/simrat39/symbols-outline.nvim):**
    - This plugin is added to provide a tree-like view of code symbols.
    - The `<leader>cs` keybinding is mapped to open the symbols outline.

- **[neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig):**
    - `inlay_hints` are disabled.
    - Specific configuration is added for the `Angular` and `nil` (Nix) language servers.
