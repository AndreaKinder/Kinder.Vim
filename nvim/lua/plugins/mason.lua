return {
  {
    "williamboman/mason.nvim",
    opts = {
      ui = {
        border = "rounded",
      },
    },
  },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "angularls",
        "astro",
        "gopls",
        "jsonls",
        "marksman",
        "rust_analyzer",
        "tailwindcss",
        "taplo"
      },
      handlers = {
        function(server_name)
          require("lspconfig")[server_name].setup({
            on_attach = require("lazyvim.plugins.lsp.keymaps").on_attach,
            capabilities = require("cmp_nvim_lsp").default_capabilities(),
          })
        end,
        ["lua_ls"] = function()
          require("lspconfig").lua_ls.setup({
            settings = {
              Lua = {
                diagnostics = {
                  globals = { "vim" },
                },
              },
            },
          })
        end,
      },
    },
  },
}