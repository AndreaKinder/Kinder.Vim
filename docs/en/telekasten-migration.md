# Telekasten Migration Guide

## Overview

Kinder.Vim now uses Telekasten for note management instead of Joplin. This guide explains the migration and new features.

## What Changed

- **Old:** Joplin integration via `joplin.lua`
- **New:** Telekasten integration via `telekasten.lua`
- **Notes Directory:** `~/Notes` (was `~/Notas`)
- **Shell Command:** `note` (was `joplin-note`)

## Telekasten Features

### Directory Structure
```
~/Notes/
├── Proyectos/      # Projects
├── Areas/          # Areas of responsibility
├── Recursos/       # Resources
├── Inbox/          # Quick captures
├── journal/
│   ├── daily/      # Daily notes
│   └── weekly/     # Weekly notes
└── templates/      # Note templates
```

### Key Bindings

**Panel and Search:**
- `<leader>zp` - Telekasten panel
- `<leader>zf` - Find notes by name
- `<leader>zg` - Search in content

**Daily/Weekly:**
- `<leader>zd` - Go to today's note
- `<leader>zD` - Find daily notes
- `<leader>zT` - Go to this week's note
- `<leader>zW` - Find weekly notes

**Create Notes:**
- `<leader>zn` - New generic note
- `<leader>zP` - New project note
- `<leader>zM` - New meeting note
- `<leader>zQ` - Quick capture (Inbox)

**Links and Navigation:**
- `<leader>zz` - Follow link
- `<leader>zb` - Show backlinks
- `<leader>zi` - Insert link

### Shell Integration

Use the `note` command:
```bash
note           # Open panel
note -n        # New note
note -s        # Search notes
note -d        # Today's note
note -w        # This week's note
```

## Migration Steps

1. **Backup Joplin Notes** (if needed)
2. **Create Notes Directory:**
   ```bash
   mkdir -p ~/Notes/{Proyectos,Areas,Recursos,Inbox,journal/{daily,weekly},templates}
   ```
3. **Start Using Telekasten:**
   - Open Neovim
   - Press `<leader>zp` for panel
   - Create your first note with `<leader>zn`

## Tips

- Use tags: `#tag` in your notes
- Link notes: `[[Note Title]]`
- Daily notes are great for journaling
- Use Inbox for quick captures, process later
