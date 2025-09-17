# Estructura del Proyecto

La configuración de Kinder.Vim está organizada de la siguiente manera:

```
nvim/
├── init.lua                # Punto de entrada principal
├── lua/
│   ├── config/             # Configuración base de Neovim
│   │   ├── autocmds.lua    # Autocomandos
│   │   ├── env.lua         # Variables de entorno
│   │   ├── keymaps.lua     # Atajos de teclado
│   │   ├── lazy.lua        # Configuración de lazy.nvim
│   │   ├── nodejs.lua      # Configuración de Node.js
│   │   └── options.lua     # Opciones de Neovim
│   └── plugins/            # Configuración de plugins
│       ├── colorscheme.lua # Tema de colores (tokyonight)
│       ├── copilot.lua     # Integración con GitHub Copilot
│       ├── editor.lua      # Plugins de edición
│       ├── extra.lua       # Plugins adicionales de LazyVim
│       ├── gemini.lua      # Integración con Gemini
│       └── ...             # Otros archivos de plugins
└── spell/                  # Diccionarios personalizados
```

## Descripción de los directorios

- **`init.lua`**: El punto de entrada principal de la configuración. Carga la configuración de `lazy.nvim` y los plugins.
- **`lua/config/`**: Contiene la configuración base de Neovim, como opciones, atajos de teclado y autocomandos.
- **`lua/plugins/`**: Cada archivo en este directorio corresponde a la configuración de un plugin específico.
- **`spell/`**: Contiene diccionarios personalizados para el corrector ortográfico.
