# lazy.lua

Este archivo configura el gestor de plugins `lazy.nvim`.

## Funcionalidad

- **Bootstraping:** Instala `lazy.nvim` si no está presente.
- **Configuración de Node.js:** Asegura que Neovim utilice una versión reciente de Node.js.
- **Corrector Ortográfico:** Habilita el corrector ortográfico para inglés y español.
- **Especificación de Plugins (`spec`):**
    - Importa los plugins de `LazyVim`.
    - Importa una selección de plugins extra de `LazyVim` para diversas funcionalidades (edición, lenguajes, IA, etc.).
    - Importa los plugins personalizados desde el directorio `lua/plugins/`.
- **Valores por Defecto (`defaults`):** Configura el comportamiento de carga perezosa y el versionado de plugins.
- **Instalación (`install`):** Especifica los esquemas de color a instalar.
- **Rendimiento (`performance`):** Deshabilita ciertos plugins de stock de Vim para mejorar el tiempo de inicio.
