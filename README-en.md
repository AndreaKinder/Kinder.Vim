# Neovim Configuration

This repository contains my personal Neovim configuration. It is designed to enhance productivity and provide a smooth coding experience.

## Features

- **Modern and fast:** Uses Lua for configuration
- **Lazy loading:** Improves startup time
- **Extensible:** Easy to add new plugins and customize

## Prerequisites

- Neovim (version X.X or higher)
- Git
- Iosevka Nerd Font (for icons)

## Installation

```bash
# Install Neovim and Git
sudo pacman -S neovim git

# Clone the Neovim configuration
git clone https://github.com/yourusername/nvim-config.git ~/.config/nvim

# Install lazy.nvim (plugin manager)
git clone --filter=blob:none https://github.com/folke/lazy.nvim.git --branch=stable ~/.local/share/nvim/lazy/lazy.nvim

# Start Neovim
nvim
```

Neovim will automatically install the plugin manager and plugins on first run.

## Main Plugins

- Plugin manager: lazy.nvim
- File explorer: nvim-tree.lua
- Fuzzy finder: telescope.nvim
- Code editor: vim-visual-multi
- Obsidian integration: obsidian.nvim
- Markdown support: markdown-preview.nvim

## Configuration Structure

- init.lua: Main configuration file
- lua/config/
    - autocmds.lua: Autocommands
    - keymaps.lua: Custom keybindings
    - lazy.lua: Plugin manager configuration
    - options.lua: Neovim options
- lua/plugins/: Individual plugin configuration files

## Customization

To add or modify plugins, edit the `lua/plugins.lua` file. For other customizations, check the relevant files in the `lua/` directory.

## Performance

This configuration is optimized for performance. You can check the startup time with:

```bash
nvim --startuptime startup.log
```

## Troubleshooting

If you encounter any issues, please check the following:

- Ensure all prerequisites are installed
- Run `:checkhealth` in Neovim for diagnostics
- Review error messages and logs

## Contributions

Contributions are welcome! Please feel free to submit a Pull Request.