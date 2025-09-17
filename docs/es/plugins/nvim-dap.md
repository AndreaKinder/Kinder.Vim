# nvim-dap.lua

Este archivo configura el soporte de depuración en Neovim utilizando el protocolo de adaptador de depuración (DAP).

## Plugins

- **[mfussenegger/nvim-dap](https://github.com/mfussenegger/nvim-dap)**
- **[rcarriga/nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui)**: Una interfaz de usuario para `nvim-dap`.
- **[theHamsta/nvim-dap-virtual-text](https://github.com/theHamsta/nvim-dap-virtual-text)**: Muestra texto virtual para el depurador.

## Configuración

- **Atajos de Teclado:** Define un conjunto completo de atajos de teclado bajo el prefijo `<leader>d` para controlar el depurador (puntos de interrupción, continuar, paso a paso, etc.).
- **Iconos y Resaltado:** Configura los iconos y el resaltado para la línea detenida en el depurador.
- **Configuración de `launch.json`:** Carga automáticamente las configuraciones de lanzamiento desde un archivo `.vscode/launch.json` si existe.
- **Variables de Entorno:** Carga automáticamente las variables de entorno desde un archivo `.env` para las sesiones de depuración de Go.
