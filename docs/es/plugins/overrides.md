# overrides.lua

Este archivo contiene sobreescrituras de configuración para plugins específicos, permitiendo modificar su comportamiento predeterminado en LazyVim.

## Plugins Modificados

- **[folke/trouble.nvim](https://github.com/folke/trouble.nvim):**
    - Se activa la opción `use_diagnostic_signs`.

- **[simrat39/symbols-outline.nvim](https://github.com/simrat39/symbols-outline.nvim):**
    - Se añade este plugin para proporcionar una vista de árbol de los símbolos del código.
    - Se mapea el atajo `<leader>cs` para abrir el panel de símbolos.

- **[neovim/nvim-lspconfig](https://github.com/neovim/nvim-lspconfig):**
    - Se desactivan los `inlay_hints`.
    - Se añade configuración específica para los servidores de lenguaje de `Angular` y `nil` (Nix).
