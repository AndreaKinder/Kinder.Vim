# nodejs.lua

Este archivo se encarga de la configuración de Node.js para Neovim, asegurando que se utilice la versión correcta del sistema y no una específica del proyecto.

## Funcionalidad

- **Detección de Node.js:** Busca una instalación de Node.js en rutas comunes del sistema, evitando versiones de proyectos locales.
- **Verificación de Versión:** Comprueba que la versión de Node.js sea v18 o superior. Muestra una advertencia si la versión es demasiado antigua.
- **Comandos:**
    - `NodeRefresh`: Refresca la configuración de Node.js.
    - `NodeInfo`: Muestra información sobre la configuración de Node.js.
    - `NodeDebug`: Activa el modo de depuración para la configuración de Node.js.
