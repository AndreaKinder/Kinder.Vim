return {
  "coder/claudecode.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    require("claudecode").setup({})
  end,
  -- Opcional: define keymaps
  keys = {
    { "<leader>ac", "<cmd>ClaudeCode<cr>", desc = "Open Claude Code" },
  },
}
