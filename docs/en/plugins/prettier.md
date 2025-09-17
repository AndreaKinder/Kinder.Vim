# prettier.lua

This file configures code formatting using `conform.nvim` and `prettier`.

## Plugin

- **[stevearc/conform.nvim](https://github.com/stevearc/conform.nvim)**

## Configuration

- **Formatters by File Type (`formatters_by_ft`):**
    - `prettier` is configured as the formatter for the following file types: `javascript`, `javascriptreact`, `typescript`, `typescriptreact`, `css`, `html`, `json`, `yaml`, and `markdown`.
- **Format on Save (`format_on_save`):**
    - Automatic formatting on file save is enabled.
    - A timeout of 500ms is set, and it allows falling back to the LSP if `prettier` fails.
