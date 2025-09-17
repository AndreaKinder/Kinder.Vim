# oil.lua

This file configures `oil.nvim`, a file explorer that allows you to edit the filesystem as if it were a Neovim buffer.

## Plugin

- **[stevearc/oil.nvim](https://github.com/stevearc/oil.nvim)**

## Configuration

- **Keybindings:**
    - `-`: Opens Oil in the parent directory.
    - `<leader>E`: Opens Oil in a floating window.
    - `<leader>-`: Opens Oil in the current file's directory.
- **Default File Explorer:** Oil is set as the default file explorer.
- **View Options:** Shows hidden files by default and uses natural sorting.
- **Autocommands:** Configures autocommands so that Oil buffers do not have a color column or sign column, and to automatically save on exit if there are modifications.
