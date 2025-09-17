# env.lua

Este archivo carga variables de entorno desde un archivo `.env` ubicado en el directorio de configuración de Neovim (`~/.config/nvim/.env`).

## Funcionalidad

El script lee el archivo `.env` línea por línea, ignora comentarios y líneas vacías, y luego establece las variables de entorno para la sesión actual de Neovim.
