# editor.lua

This file configures several plugins related to code editing.

## Plugins and Configuration

- **[rmagatti/goto-preview](https://github.com/rmagatti/goto-preview):**
    - Provides preview functionality for definitions, declarations, implementations, and references.
    - Defines keybindings with the `gp` prefix to access these functions.

- **[echasnovski/mini.hipatterns](https://github.com/echasnovski/mini.hipatterns):**
    - Highlights text patterns. Currently, it is configured to highlight `hsl()` colors in the code, displaying the actual color as the background.

- **[dinhhuy258/git.nvim](https://github.com/dinhhuy258/git.nvim):**
    - Provides Git integration.
    - Defines the `<Leader>gb` keybinding to view the file's `blame` and `<Leader>go` to open the file in the Git repository.
