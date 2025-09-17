# lazy.lua

This file configures the `lazy.nvim` plugin manager.

## Functionality

- **Bootstraping:** Installs `lazy.nvim` if it is not already present.
- **Node.js Configuration:** Ensures that Neovim uses a recent version of Node.js.
- **Spell Checking:** Enables spell checking for English and Spanish.
- **Plugin Specification (`spec`):**
    - Imports the `LazyVim` plugins.
    - Imports a selection of extra `LazyVim` plugins for various functionalities (editing, languages, AI, etc.).
    - Imports custom plugins from the `lua/plugins/` directory.
- **Defaults (`defaults`):** Configures lazy loading behavior and plugin versioning.
- **Installation (`install`):** Specifies the color schemes to install.
- **Performance (`performance`):** Disables certain stock Vim plugins to improve startup time.
