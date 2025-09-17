# nodejs.lua

This file handles the Node.js configuration for Neovim, ensuring that the correct system version is used and not a project-specific one.

## Functionality

- **Node.js Detection:** Searches for a Node.js installation in common system paths, avoiding local project versions.
- **Version Check:** Verifies that the Node.js version is v18 or higher. Displays a warning if the version is too old.
- **Commands:**
    - `NodeRefresh`: Refreshes the Node.js configuration.
    - `NodeInfo`: Shows information about the Node.js configuration.
    - `NodeDebug`: Enables debug mode for the Node.js configuration.
