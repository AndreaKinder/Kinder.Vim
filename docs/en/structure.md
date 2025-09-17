# Project Structure

The Kinder.Vim configuration is organized as follows:

```
nvim/
├── init.lua                # Main entry point
├── lua/
│   ├── config/             # Base Neovim configuration
│   │   ├── autocmds.lua    # Autocommands
│   │   ├── env.lua         # Environment variables
│   │   ├── keymaps.lua     # Keymaps
│   │   ├── lazy.lua        # lazy.nvim configuration
│   │   ├── nodejs.lua      # Node.js configuration
│   │   └── options.lua     # Neovim options
│   └── plugins/            # Plugin configurations
│       ├── colorscheme.lua # Color scheme (tokyonight)
│       ├── copilot.lua     # GitHub Copilot integration
│       ├── editor.lua      # Editor plugins
│       ├── extra.lua       # Additional LazyVim plugins
│       ├── gemini.lua      # Gemini integration
│       └── ...             # Other plugin files
└── spell/                  # Custom dictionaries
```

## Directory Descriptions

- **`init.lua`**: The main entry point of the configuration. It loads the `lazy.nvim` configuration and plugins.
- **`lua/config/`**: Contains the base Neovim configuration, such as options, keymaps, and autocommands.
- **`lua/plugins/`**: Each file in this directory corresponds to the configuration of a specific plugin.
- **`spell/`**: Contains custom dictionaries for the spell checker.
