# which-key.lua

This file configures the `which-key.nvim` plugin to display available keybindings.

## Plugin

- **[folke/which-key.nvim](https://github.com/folke/which-key.nvim)**

## Configuration

- **Load Event:** It is loaded lazily (`VeryLazy`) to not impact startup time.
- **Timeout:** A timeout of 300ms is set for key sequences.
- **Keybinding:**
    - `<leader>?`: Shows the `which-key` window with the keybindings local to the current buffer.
