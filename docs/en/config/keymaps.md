# keymaps.lua

This file contains custom key mappings for Neovim.

## Custom Mappings

- **`Ctrl+b` (Insert Mode):** Deletes to the end of the word without leaving insert mode.
- **`Ctrl+c`:** Escapes from insert, normal, and visual modes.
- **Tmux Navigation:** `Ctrl+h/j/k/l` shortcuts to navigate between Neovim and Tmux panes.
- **`leader+fe`:** Opens the file explorer (Oil).
- **`leader+ag`:** Toggles the Gemini command-line interface.
- **`Ctrl+s` (Normal Mode):** Saves the current file with a custom notification.
- **`leader+sg` (Visual Mode):** Searches for the selected text in the project.
- **`leader+sG` (Visual Mode):** Searches for the selected text from the project's root directory.
- **`leader+md`:** Deletes all marks.

The file also disables some default keybindings to avoid conflicts.
