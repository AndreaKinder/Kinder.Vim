-- Ensure 'config.lazy' exists and is properly configured
require("config.lazy")

-- Assuming 'dracula-nvim' theme is available
require('lualine').setup {
  options = {
    -- ... other options ...
    theme = 'dracula-nvim'
    -- ...
  }
}
