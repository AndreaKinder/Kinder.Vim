# Guía de Migración a Telekasten

## Descripción General

Kinder.Vim ahora usa Telekasten para gestión de notas en lugar de Joplin. Esta guía explica la migración y las nuevas características.

## Qué Cambió

- **Anterior:** Integración con Joplin vía `joplin.lua`
- **Nuevo:** Integración con Telekasten vía `telekasten.lua`
- **Directorio de Notas:** `~/Notes` (era `~/Notas`)
- **Comando de Shell:** `note` (era `joplin-note`)

## Características de Telekasten

### Estructura de Directorios
```
~/Notes/
├── Proyectos/      # Proyectos
├── Areas/          # Áreas de responsabilidad
├── Recursos/       # Recursos
├── Inbox/          # Capturas rápidas
├── journal/
│   ├── daily/      # Notas diarias
│   └── weekly/     # Notas semanales
└── templates/      # Plantillas de notas
```

### Atajos de Teclado

**Panel y Búsqueda:**
- `<leader>zp` - Panel de Telekasten
- `<leader>zf` - Buscar notas por nombre
- `<leader>zg` - Buscar en contenido

**Diario/Semanal:**
- `<leader>zd` - Ir a nota de hoy
- `<leader>zD` - Buscar notas diarias
- `<leader>zT` - Ir a nota de esta semana
- `<leader>zW` - Buscar notas semanales

**Crear Notas:**
- `<leader>zn` - Nueva nota genérica
- `<leader>zP` - Nueva nota de proyecto
- `<leader>zM` - Nueva nota de reunión
- `<leader>zQ` - Captura rápida (Inbox)

**Enlaces y Navegación:**
- `<leader>zz` - Seguir enlace
- `<leader>zb` - Mostrar backlinks
- `<leader>zi` - Insertar enlace

### Integración con Shell

Usa el comando `note`:
```bash
note           # Abrir panel
note -n        # Nueva nota
note -s        # Buscar notas
note -d        # Nota de hoy
note -w        # Nota de esta semana
```

## Pasos de Migración

1. **Respaldar Notas de Joplin** (si es necesario)
2. **Crear Directorio de Notas:**
   ```bash
   mkdir -p ~/Notes/{Proyectos,Areas,Recursos,Inbox,journal/{daily,weekly},templates}
   ```
3. **Comenzar a Usar Telekasten:**
   - Abrir Neovim
   - Presionar `<leader>zp` para el panel
   - Crear tu primera nota con `<leader>zn`

## Consejos

- Usa etiquetas: `#etiqueta` en tus notas
- Enlaza notas: `[[Título de Nota]]`
- Las notas diarias son excelentes para journaling
- Usa Inbox para capturas rápidas, procesa después
