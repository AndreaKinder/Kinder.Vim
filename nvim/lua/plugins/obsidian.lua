return {
  "epwalsh/obsidian.nvim",
  version = "*", -- recommended, use latest release instead of latest commit
  lazy = true,
  ft = "markdown",
  dependencies = {
    -- Required.
    "nvim-lua/plenary.nvim",

    -- workspaces
  },
  opts = {
    workspaces = {
      {
        name = "personal",
        path = "~/.vaults/personal",
      },
      {
        name = "work",
        path = "~/.vaults/work",
      },
      {
        name = "learn",
        path = "~/.vaults/learn",
      },
    },
    -- keeps or quick notes
    notes_subdir = "limbo",
    new_notes_location = "limbo",
    attachments = {
      img_folder = "archivos",
    },
    -- daily_notes
    daily_notes = {
      template = "note",
      folder = "notes",
      date_format = "%Y-%m-%d",
      alias_format = "%d-%m-%Y",
      default_tag = { "journal" },
    },
    -- internal links
    completion = {
      nvim_cmp = true,
      min_chars = 2,
    },
    -- mappings keboard
    mappings = {
      ["<leader>of"] = {
        action = function()
          return require("obsidian").util.gf_passthrough()
        end,
        opts = { noremap = false, expr = true, buffer = true },
      },
      -- checkbox task
      ["<leader>od"] = {
        action = function()
          return require("obsidian").util.toggle_checkbox()
        end,
        opts = { buffer = true },
      },
    },
    note_frontmatter_func = function(note)
      local out = { id = note.id, aliases = note.aliases, tags = note.tags }
      if note.metadata ~= nil and not vim.tbl_isempty(note.metadata) then
        for k, v in pairs(note.metadata) do
          out[k] = v
        end
      end
      return out
    end,

    note_id_func = function(title)
      local suffix = ""
      if title ~= nil then
        suffix = title:gsub(" ", "-"):gsub("[^A-Za-Z0-9-]", ""):lower()
      else
        for _ = 1, 4 do
          suffix = suffix .. string.char(math.random(65, 90))
        end
      end
      return tostring(os.time()) .. "-" .. suffix
    end,
    templates = {
      subdir = "templates",
      date_format = "%Y-%m-%d",
      gtime_format = "%H:%M",
      tags = "",
    },
  },
}
