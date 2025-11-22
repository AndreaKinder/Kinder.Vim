return {
  "renerocksai/telekasten.nvim",
  dependencies = {
    "nvim-telescope/telescope.nvim",
    "nvim-lua/plenary.nvim",
    "renerocksai/calendar-vim",
  },
  keys = {
    -- ═══════════════════════════════════════════════════════════
    -- 📋 PANEL Y BÚSQUEDA
    -- ═══════════════════════════════════════════════════════════
    { "<leader>zp", "<cmd>Telekasten panel<CR>", desc = "📋 Telekasten Panel" },
    { "<leader>zf", "<cmd>Telekasten find_notes<CR>", desc = "🔍 Buscar notas (nombre)" },
    { "<leader>zg", "<cmd>Telekasten search_notes<CR>", desc = "🔎 Buscar en contenido" },
    
    -- ═══════════════════════════════════════════════════════════
    -- 📅 NAVEGACIÓN DIARIA Y SEMANAL
    -- ═══════════════════════════════════════════════════════════
    { "<leader>zd", "<cmd>Telekasten goto_today<CR>", desc = "📅 Ir a nota de hoy" },
    { "<leader>zD", "<cmd>Telekasten find_daily_notes<CR>", desc = "📅 Buscar notas diarias" },
    { "<leader>zT", "<cmd>Telekasten goto_thisweek<CR>", desc = "📆 Ir a nota semanal" },
    { "<leader>zW", "<cmd>Telekasten find_weekly_notes<CR>", desc = "📆 Buscar notas semanales" },
    { "<leader>z[", "<cmd>Telekasten goto_prevday<CR>", desc = "⬅️  Día anterior" },
    { "<leader>z]", "<cmd>Telekasten goto_nextday<CR>", desc = "➡️  Día siguiente" },
    { "<leader>zc", "<cmd>Telekasten show_calendar<CR>", desc = "📅 Mostrar calendario" },
    
    -- ═══════════════════════════════════════════════════════════
    -- 📝 CREAR NOTAS (básico)
    -- ═══════════════════════════════════════════════════════════
    { "<leader>zn", "<cmd>Telekasten new_note<CR>", desc = "📝 Nueva nota genérica" },
    { "<leader>zi", "<cmd>Telekasten insert_link<CR>", desc = "🔗 Insertar enlace" },
    
    -- ═══════════════════════════════════════════════════════════
    -- 🚀 CREAR NOTAS (plantillas específicas)
    -- ═══════════════════════════════════════════════════════════
    { "<leader>zP", "<cmd>TKProject<CR>", desc = "🚀 Nueva nota de proyecto" },
    { "<leader>zM", "<cmd>TKMeeting<CR>", desc = "📋 Nueva nota de reunión" },
    { "<leader>zA", "<cmd>TKArea<CR>", desc = "🗂️  Nueva nota de área" },
    { "<leader>zR", "<cmd>TKResource<CR>", desc = "📚 Nueva nota de recurso" },
    { "<leader>zQ", "<cmd>TKQuickCapture<CR>", desc = "⚡ Captura rápida (Inbox)" },
    
    -- ═══════════════════════════════════════════════════════════
    -- 🔗 ENLACES Y NAVEGACIÓN
    -- ═══════════════════════════════════════════════════════════
    { "<leader>zz", "<cmd>Telekasten follow_link<CR>", desc = "➡️  Seguir enlace" },
    { "<leader>zb", "<cmd>Telekasten show_backlinks<CR>", desc = "🔙 Ver backlinks" },
    { "<leader>zy", "<cmd>Telekasten yank_notelink<CR>", desc = "📋 Copiar enlace nota" },
    
    -- ═══════════════════════════════════════════════════════════
    -- 🏷️  TAGS Y ORGANIZACIÓN
    -- ═══════════════════════════════════════════════════════════
    { "<leader>zt", "<cmd>Telekasten show_tags<CR>", desc = "🏷️  Mostrar todos los tags" },
    { "<leader>zr", "<cmd>Telekasten rename_note<CR>", desc = "✏️  Renombrar nota" },
    
    -- ═══════════════════════════════════════════════════════════
    -- ✅ TAREAS
    -- ═══════════════════════════════════════════════════════════
    { "<leader>z<space>", "<cmd>Telekasten toggle_todo<CR>", desc = "✅ Toggle tarea" },
    
    -- ═══════════════════════════════════════════════════════════
    -- 🖼️  MULTIMEDIA
    -- ═══════════════════════════════════════════════════════════
    { "<leader>zI", "<cmd>Telekasten insert_img_link<CR>", desc = "🖼️  Insertar imagen" },
    
    -- ═══════════════════════════════════════════════════════════
    -- 📂 NAVEGACIÓN RÁPIDA A CARPETAS
    -- ═══════════════════════════════════════════════════════════
    { "<leader>zFp", "<cmd>TKOpenProjects<CR>", desc = "📂 Abrir carpeta Proyectos" },
    { "<leader>zFa", "<cmd>TKOpenAreas<CR>", desc = "📂 Abrir carpeta Áreas" },
    { "<leader>zFr", "<cmd>TKOpenRecursos<CR>", desc = "📂 Abrir carpeta Recursos" },
    { "<leader>zFi", "<cmd>TKOpenInbox<CR>", desc = "📂 Abrir carpeta Inbox" },
  },
  
  config = function()
    local home = vim.fn.expand("~/Notas")
    
    require("telekasten").setup({
      -- ═══════════════════════════════════════════════════════════
      -- 🏠 RUTAS PRINCIPALES
      -- ═══════════════════════════════════════════════════════════
      home = home,
      
      -- Directorios específicos
      dailies = home .. "/journal/daily",
      weeklies = home .. "/journal/weekly",
      templates = home .. "/templates",
      
      -- ═══════════════════════════════════════════════════════════
      -- 📄 CONFIGURACIÓN DE ARCHIVOS
      -- ═══════════════════════════════════════════════════════════
      extension = ".md",
      
      -- ═══════════════════════════════════════════════════════════
      -- 📋 PLANTILLAS
      -- ═══════════════════════════════════════════════════════════
      template_new_note = home .. "/templates/default-note.md",
      template_new_daily = home .. "/templates/daily-note.md",
      template_new_weekly = home .. "/templates/weekly-note.md",
      
      -- ═══════════════════════════════════════════════════════════
      -- 🎨 COMPORTAMIENTO
      -- ═══════════════════════════════════════════════════════════
      take_over_my_home = true,
      auto_set_filetype = true,
      
      -- ═══════════════════════════════════════════════════════════
      -- 📅 CALENDARIO
      -- ═══════════════════════════════════════════════════════════
      plug_into_calendar = true,
      calendar_opts = {
        weeknm = 4,
        calendar_monday = 1,
        calendar_mark = "left-fit",
      },
      
      -- ═══════════════════════════════════════════════════════════
      -- 🔗 ENLACES Y NAVEGACIÓN
      -- ═══════════════════════════════════════════════════════════
      follow_creates_nonexisting = true,
      dailies_create_nonexisting = true,
      weeklies_create_nonexisting = true,
      subdirs_in_links = true,
      
      -- ═══════════════════════════════════════════════════════════
      -- 🏷️  TAGS
      -- ═══════════════════════════════════════════════════════════
      tag_notation = "#tag",
      
      -- ═══════════════════════════════════════════════════════════
      -- 🔢 UUID
      -- ═══════════════════════════════════════════════════════════
      uuid_type = "%Y%m%d%H%M",
      uuid_sep = "-",
      
      -- ═══════════════════════════════════════════════════════════
      -- 🎨 TEMAS Y APARIENCIA
      -- ═══════════════════════════════════════════════════════════
      command_palette_theme = "dropdown",
      show_tags_theme = "dropdown",
      
      -- ═══════════════════════════════════════════════════════════
      -- 🔭 INTEGRACIÓN CON TELESCOPE
      -- ═══════════════════════════════════════════════════════════
      telescope = {
        theme = "ivy",
      },
      
      -- ═══════════════════════════════════════════════════════════
      -- 🖼️  IMÁGENES
      -- ═══════════════════════════════════════════════════════════
      image_subdir = "Recursos/attachments",
      
      -- ═══════════════════════════════════════════════════════════
      -- 🗂️  VAULTS (bóvedas)
      -- ═══════════════════════════════════════════════════════════
      vaults = {
        notas = {
          home = home,
          dailies = home .. "/journal/daily",
          weeklies = home .. "/journal/weekly",
          templates = home .. "/templates",
        },
      },
    })
    
    -- ═════════════════════════════════════════════════════════════
    -- 🎨 CONFIGURACIÓN DE MARKDOWN
    -- ═════════════════════════════════════════════════════════════
    vim.api.nvim_create_autocmd("FileType", {
      pattern = "markdown",
      callback = function()
        -- Configuración específica para archivos markdown
        vim.opt_local.conceallevel = 2
        vim.opt_local.wrap = true
        vim.opt_local.linebreak = true
        vim.opt_local.spell = true
        vim.opt_local.spelllang = { "es", "en" }
      end,
    })
    
    -- ═════════════════════════════════════════════════════════════
    -- 📝 FUNCIÓN HELPER: Crear nota desde plantilla específica
    -- ═════════════════════════════════════════════════════════════
    local function new_note_from_template(template_name, target_dir, icon)
      local template_path = home .. "/templates/" .. template_name .. ".md"
      local filename = vim.fn.input(icon .. " Nombre de la nota: ")
      
      if filename == "" then
        vim.notify("❌ Creación cancelada", vim.log.levels.WARN)
        return
      end
      
      -- Sanitizar nombre de archivo
      filename = filename:gsub("[^%w%s%-_]", ""):gsub("%s+", "-")
      
      local note_path = home .. "/" .. target_dir .. "/" .. filename .. ".md"
      
      -- Verificar si la nota ya existe
      if vim.fn.filereadable(note_path) == 1 then
        vim.notify("⚠️  La nota ya existe: " .. filename, vim.log.levels.WARN)
        vim.cmd("edit " .. note_path)
        return
      end
      
      -- Leer plantilla
      local template_file = io.open(template_path, "r")
      if not template_file then
        vim.notify("❌ Plantilla no encontrada: " .. template_name, vim.log.levels.ERROR)
        return
      end
      
      local template_content = template_file:read("*all")
      template_file:close()
      
      -- Reemplazar variables de la plantilla
      local date = os.date("%Y-%m-%d")
      local time24 = os.date("%H:%M")
      local uuid = os.date("%Y%m%d%H%M")
      local dayname = os.date("%A")
      local year = os.date("%Y")
      local month = os.date("%m")
      local day = os.date("%d")
      
      template_content = template_content:gsub("{{title}}", filename)
      template_content = template_content:gsub("{{date}}", date)
      template_content = template_content:gsub("{{time24}}", time24)
      template_content = template_content:gsub("{{uuid}}", uuid)
      template_content = template_content:gsub("{{dayname}}", dayname)
      template_content = template_content:gsub("{{year}}", year)
      template_content = template_content:gsub("{{month}}", month)
      template_content = template_content:gsub("{{day}}", day)
      
      -- Crear directorio si no existe
      local dir = vim.fn.fnamemodify(note_path, ":h")
      vim.fn.mkdir(dir, "p")
      
      -- Escribir nota
      local note_file = io.open(note_path, "w")
      if note_file then
        note_file:write(template_content)
        note_file:close()
        vim.cmd("edit " .. note_path)
        vim.notify("✅ Nota creada: " .. filename, vim.log.levels.INFO)
      else
        vim.notify("❌ Error al crear la nota", vim.log.levels.ERROR)
      end
    end
    
    -- ═════════════════════════════════════════════════════════════
    -- 🚀 COMANDOS PERSONALIZADOS: Plantillas específicas
    -- ═════════════════════════════════════════════════════════════
    
    vim.api.nvim_create_user_command("TKProject", function()
      new_note_from_template("project-note", "Proyectos", "🚀")
    end, { desc = "🚀 Crear nota de proyecto" })
    
    vim.api.nvim_create_user_command("TKMeeting", function()
      new_note_from_template("meeting-note", "Proyectos", "📋")
    end, { desc = "📋 Crear nota de reunión" })
    
    vim.api.nvim_create_user_command("TKArea", function()
      new_note_from_template("area-note", "Areas", "🗂️")
    end, { desc = "🗂️ Crear nota de área" })
    
    vim.api.nvim_create_user_command("TKResource", function()
      new_note_from_template("resource-note", "Recursos", "📚")
    end, { desc = "📚 Crear nota de recurso" })
    
    -- Captura rápida en Inbox
    vim.api.nvim_create_user_command("TKQuickCapture", function()
      local timestamp = os.date("%Y%m%d-%H%M")
      local filename = "captura-" .. timestamp
      local note_path = home .. "/Inbox/" .. filename .. ".md"
      
      local content = string.format([[---
title: %s
date: %s
tags:
  - inbox
  - quick-capture
---

# Captura Rápida

]], filename, os.date("%Y-%m-%d %H:%M"))
      
      local note_file = io.open(note_path, "w")
      if note_file then
        note_file:write(content)
        note_file:close()
        vim.cmd("edit " .. note_path)
        vim.notify("⚡ Captura rápida creada en Inbox", vim.log.levels.INFO)
      end
    end, { desc = "⚡ Captura rápida en Inbox" })
    
    -- ═════════════════════════════════════════════════════════════
    -- 📂 COMANDOS: Navegación rápida a carpetas
    -- ═════════════════════════════════════════════════════════════
    
    vim.api.nvim_create_user_command("TKOpenProjects", function()
      vim.cmd("Telescope find_files cwd=" .. home .. "/Proyectos")
    end, { desc = "📂 Abrir carpeta Proyectos" })
    
    vim.api.nvim_create_user_command("TKOpenAreas", function()
      vim.cmd("Telescope find_files cwd=" .. home .. "/Areas")
    end, { desc = "📂 Abrir carpeta Áreas" })
    
    vim.api.nvim_create_user_command("TKOpenRecursos", function()
      vim.cmd("Telescope find_files cwd=" .. home .. "/Recursos")
    end, { desc = "📂 Abrir carpeta Recursos" })
    
    vim.api.nvim_create_user_command("TKOpenInbox", function()
      vim.cmd("Telescope find_files cwd=" .. home .. "/Inbox")
    end, { desc = "📂 Abrir carpeta Inbox" })
    
    vim.api.nvim_create_user_command("TKOpenDoc", function()
      vim.cmd("Telescope find_files cwd=" .. home .. "/DOCUMENTACION")
    end, { desc = "📚 Abrir documentación" })
    
    -- ═════════════════════════════════════════════════════════════
    -- 📊 COMANDO: Estadísticas del sistema
    -- ═════════════════════════════════════════════════════════════
    
    vim.api.nvim_create_user_command("TKStats", function()
      local function count_files(dir)
        local handle = io.popen('find "' .. home .. "/" .. dir .. '" -type f -name "*.md" 2>/dev/null | wc -l')
        if handle then
          local result = handle:read("*a")
          handle:close()
          return tonumber(result) or 0
        end
        return 0
      end
      
      local stats = {
        { "📂 Proyectos", count_files("Proyectos") },
        { "🗂️  Áreas", count_files("Areas") },
        { "📚 Recursos", count_files("Recursos") },
        { "📥 Inbox", count_files("Inbox") },
        { "📅 Notas diarias", count_files("journal/daily") },
        { "📆 Notas semanales", count_files("journal/weekly") },
      }
      
      local lines = { "📊 Estadísticas del Sistema de Notas", "", "" }
      for _, stat in ipairs(stats) do
        table.insert(lines, string.format("  %s: %d notas", stat[1], stat[2]))
      end
      
      vim.notify(table.concat(lines, "\n"), vim.log.levels.INFO)
    end, { desc = "📊 Mostrar estadísticas del sistema" })
    
    -- ═════════════════════════════════════════════════════════════
    -- 🔧 COMANDO: Procesar Inbox (guiado)
    -- ═════════════════════════════════════════════════════════════
    
    vim.api.nvim_create_user_command("TKProcessInbox", function()
      vim.notify([[
📥 Procesando Inbox...

Para cada nota pregúntate:
  1️⃣  ¿Es accionable?
      ✅ SÍ → ¿Es proyecto? → Proyectos/
             ¿Es área? → Areas/
             ¿Hacer ya? → Añadir a nota de hoy
      ❌ NO → ¿Es referencia? → Recursos/
             Sino → ¡ELIMINAR!

Abriendo carpeta Inbox...
]], vim.log.levels.INFO)
      
      vim.cmd("Telescope find_files cwd=" .. home .. "/Inbox")
    end, { desc = "📥 Guía para procesar Inbox" })
    
    -- ═════════════════════════════════════════════════════════════
    -- ✅ Mensaje de confirmación
    -- ═════════════════════════════════════════════════════════════
    
    vim.notify([[
✅ Telekasten configurado correctamente

📂 Directorio base: ~/Notas

🚀 Comandos disponibles:
  :TKProject    - Crear proyecto
  :TKMeeting    - Crear reunión
  :TKArea       - Crear área
  :TKResource   - Crear recurso
  :TKStats      - Ver estadísticas
  :TKProcessInbox - Procesar inbox

📋 Atajos principales:
  <leader>zp    - Panel de comandos
  <leader>zd    - Nota de hoy
  <leader>zT    - Nota semanal
  <leader>zf    - Buscar notas

💡 Tip: Usa <leader>zp para ver todos los comandos
]], vim.log.levels.INFO)
  end,
}
