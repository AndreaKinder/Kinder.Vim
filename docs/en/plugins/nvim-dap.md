# nvim-dap.lua

This file configures debugging support in Neovim using the Debug Adapter Protocol (DAP).

## Plugins

- **[mfussenegger/nvim-dap](https://github.com/mfussenegger/nvim-dap)**
- **[rcarriga/nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui)**: A user interface for `nvim-dap`.
- **[theHamsta/nvim-dap-virtual-text](https://github.com/theHamsta/nvim-dap-virtual-text)**: Displays virtual text for the debugger.

## Configuration

- **Keybindings:** Defines a comprehensive set of keybindings under the `<leader>d` prefix to control the debugger (breakpoints, continue, step, etc.).
- **Icons and Highlighting:** Configures icons and highlighting for the stopped line in the debugger.
- **`launch.json` Configuration:** Automatically loads launch configurations from a `.vscode/launch.json` file if it exists.
- **Environment Variables:** Automatically loads environment variables from a `.env` file for Go debugging sessions.
