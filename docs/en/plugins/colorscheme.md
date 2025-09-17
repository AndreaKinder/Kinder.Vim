# colorscheme.lua

This file configures the `tokyonight` color scheme for Neovim.

## Plugin

- **[folke/tokyonight.nvim](https://github.com/folke/tokyonight.nvim)**

## Configuration

- The plugin is loaded non-lazily (`lazy = false`) and with a high priority (`priority = 1000`) to ensure the color scheme is applied at startup.
- The command `vim.cmd.colorscheme("tokyonight")` sets `tokyonight` as the active color scheme.
