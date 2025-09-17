-- Configura Node.js antes de cargar plugins
require("config.nodejs").setup({ silent = true })

-- Carga variables de entorno desde el archivo .env
require("config.env")

-- inicializa lazy.nvim, LazyVim y tus plugins
require("config.lazy")
vim.opt.timeoutlen = 1000
vim.opt.ttimeoutlen = 0
