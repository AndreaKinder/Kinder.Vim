-- This file contains the configuration for integrating GitHub Copilot and Copilot Chat plugins in Neovim.

-- Define prompts for Copilot
-- This table contains various prompts that can be used to interact with Copilot.
local prompts = {
    Explicar = "Por favor, explica cómo funciona el siguiente código.", -- Prompt para explicar código
    Revisar = "Por favor, revisa el siguiente código y proporciona sugerencias para mejorarlo.", -- Prompt para revisar código
    Pruebas = "Por favor, explica cómo funciona el código seleccionado, luego genera pruebas unitarias para él.", -- Prompt para generar pruebas unitarias
    Refactorizar = "Por favor, refactoriza el siguiente código para mejorar su claridad y legibilidad.", -- Prompt para refactorizar código
    ArreglarCodigo = "Por favor, arregla el siguiente código para que funcione como se pretende.", -- Prompt para arreglar código
    ArreglarError = "Por favor, explica el error en el siguiente texto y proporciona una solución.", -- Prompt para arreglar errores
    MejoresNombres = "Por favor, proporciona mejores nombres para las siguientes variables y funciones.", -- Prompt para sugerir mejores nombres
    Documentacion = "Por favor, proporciona documentación para el siguiente código.", -- Prompt para generar documentación
    JsDocs = "Por favor, proporciona JsDocs para el siguiente código.", -- Prompt para generar JsDocs
    DocumentacionParaGithub = "Por favor, proporciona documentación para el siguiente código lista para GitHub usando markdown.", -- Prompt para generar documentación para GitHub
    CrearUnPost = "Por favor, proporciona documentación para el siguiente código para publicarlo en redes sociales, como LinkedIn, debe ser profunda, bien explicada y fácil de entender. Además, hazlo de manera divertida y atractiva.", -- Prompt para crear una publicación en redes sociales
    SwaggerApiDocs = "Por favor, proporciona documentación para la siguiente API usando Swagger.", -- Prompt para generar documentación de API con Swagger
    SwaggerJsDocs = "Por favor, escribe JSDoc para la siguiente API usando Swagger.", -- Prompt para generar JSDocs con Swagger
    Resumir = "Por favor, resume el siguiente texto.", -- Prompt para resumir texto
    Ortografia = "Por favor, corrige cualquier error gramatical y ortográfico en el siguiente texto.", -- Prompt para corregir ortografía y gramática
    Redaccion = "Por favor, mejora la gramática y redacción del siguiente texto.", -- Prompt para mejorar la redacción
    Conciso = "Por favor, reescribe el siguiente texto para hacerlo más conciso.", -- Prompt para hacer el texto conciso
}

-- Plugin configuration
-- This table contains the configuration for various plugins used in Neovim.
return {
  {
    -- Copilot Chat plugin configuration
    "CopilotC-Nvim/CopilotChat.nvim",
    branch = "main",
    cmd = "CopilotChat",
    opts = {
      prompts = prompts,
      system_prompt = "Este GPT es un clon del usuario, un arquitecto líder frontend especializado en Angular y React, con experiencia en arquitectura limpia, arquitectura hexagonal y separación de lógica en aplicaciones escalables. Tiene un enfoque técnico pero práctico, con explicaciones claras y aplicables, siempre con ejemplos útiles para desarrolladores con conocimientos intermedios y avanzados.\n\nHabla con un tono profesional pero cercano, relajado y con un toque de humor inteligente. Evita formalidades excesivas y usa un lenguaje directo, técnico cuando es necesario, pero accesible. Su estilo es argentino, sin caer en clichés, y utiliza expresiones como “buenas acá estamos” o “dale que va” según el contexto.\n\nSus principales áreas de conocimiento incluyen:\n- Desarrollo frontend con Angular, React y gestión de estado avanzada (Redux, Signals, State Managers propios como Gentleman State Manager y GPX-Store).\n- Arquitectura de software con enfoque en Clean Architecture, Hexagonal Architecure y Scream Architecture.\n- Implementación de buenas prácticas en TypeScript, testing unitario y end-to-end.\n- Loco por la modularización, atomic design y el patrón contenedor presentacional \n- Herramientas de productividad como LazyVim, Tmux, Zellij, OBS y Stream Deck.\n- Mentoría y enseñanza de conceptos avanzados de forma clara y efectiva.\n- Liderazgo de comunidades y creación de contenido en YouTube, Twitch y Discord.\n\nA la hora de explicar un concepto técnico:\n1. Explica el problema que el usuario enfrenta.\n2. Propone una solución clara y directa, con ejemplos si aplica.\n3. Menciona herramientas o recursos que pueden ayudar.\n\nSi el tema es complejo, usa analogías prácticas, especialmente relacionadas con construcción y arquitectura. Si menciona una herramienta o concepto, explica su utilidad y cómo aplicarlo sin redundancias.\n\nAdemás, tiene experiencia en charlas técnicas y generación de contenido. Puede hablar sobre la importancia de la introspección, cómo balancear liderazgo y comunidad, y cómo mantenerse actualizado en tecnología mientras se experimenta con nuevas herramientas. Su estilo de comunicación es directo, pragmático y sin rodeos, pero siempre accesible y ameno.\n\nEsta es una transcripción de uno de sus vídeos para que veas como habla:\n\nLe estaba contando la otra vez que tenía una condición Que es de adulto altamente calificado no sé si lo conocen pero no es bueno el oto lo está hablando con mi mujer y y a mí cuando yo era chico mi mamá me lo dijo en su momento que a mí me habían encontrado una condición Que ti un iq muy elevado cuando era muy chico eh pero muy elevado a nivel de que estaba 5 años o 6 años por delante de un niño",
      model = "claude-3.5-sonnet",
      answer_header = "  The Kinder   ",
      auto_insert_mode = true,
      window = {
        layout = "horizontal",
      },
      mappings = {
        complete = {
          insert = "<Tab>",
        },
        close = {
          normal = "q",
          insert = "<C-c>",
        },
        reset = {
          normal = "<C-l>",
          insert = "<C-l>",
        },
        submit_prompt = {
          normal = "<CR>",
          insert = "<C-s>",
        },
        toggle_sticky = {
          normal = "arr",
        },
        clear_stickies = {
          normal = "arx",
        },
        accept_diff = {
          normal = "<C-y>",
          insert = "<C-y>",
        },
        jump_to_diff = {
          normal = "aj",
        },
        quickfix_answers = {
          normal = "aqa",
        },
        quickfix_diffs = {
          normal = "aqd",
        },
        yank_diff = {
          normal = "ay",
          register = '"', -- Default register to use for yanking
        },
        show_diff = {
          normal = "ad",
          full_diff = false, -- Show full diff instead of unified diff when showing diff window
        },
        show_info = {
          normal = "ai",
        },
        show_context = {
          normal = "ac",
        },
        show_help = {
          normal = "ah",
        },
      },
    },
    config = function(_, opts)
      local chat = require("CopilotChat")

      vim.api.nvim_create_autocmd("BufEnter", {
        pattern = "copilot-chat",
        callback = function()
          vim.opt_local.relativenumber = true
          vim.opt_local.number = false
        end,
      })

      chat.setup(opts)
    end,
  },
  -- Blink integration
  {
    "saghen/blink.cmp",
    optional = true,
    ---@module 'blink.cmp'
    ---@type blink.cmp.Config
    opts = {
      sources = {
        providers = {
          path = {
            enabled = function()
              return vim.bo.filetype ~= "copilot-chat"
            end,
          },
        },
      },
    },
  },
}