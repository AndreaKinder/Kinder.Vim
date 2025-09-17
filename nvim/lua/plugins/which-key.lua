-- Este archivo contiene la configuración para el plugin which-key.nvim en Neovim.

return {
  -- Plugin: which-key.nvim
  -- URL: https://github.com/folke/which-key.nvim
  -- Descripción: Un plugin de Neovim que muestra una ventana emergente con posibles combinaciones de teclas del comando que empezaste a escribir.
  "folke/which-key.nvim",

  event = "VeryLazy", -- Cargar este plugin en el evento 'VeryLazy'

  init = function()
    -- Establecer el tiempo de espera para secuencias de teclas
    vim.o.timeout = true
    vim.o.timeoutlen = 300 -- Establecer la duración del tiempo de espera a 300 milisegundos
  end,

  keys = {
    {
      -- Combinación de teclas para mostrar la ventana emergente de which-key
      "<leader>?",
      function()
        require("which-key").show({ global = false }) -- Mostrar la ventana emergente de which-key para combinaciones locales
      end,
    },
  },
}
