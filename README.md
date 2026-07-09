# reliquary.nvim

A bundled Neovim colorscheme switcher that includes:

- `dc`
- `gn`
- `kg`
- `nd`
- `st`
- `tk`

The plugin watches the current buffer filetype and applies a matching
colorscheme automatically.

## Default Map

| Filetype | Colorscheme |
| --- | --- |
| `python` | `st` |
| `rust` | `kg` |
| `go`, `gomod`, `gosum`, `gowork`, `goland` | `nd` |
| `odin` | `dc` |
| `lua` | `tk` |
| `zig` | `gn` |

## Installation

With [lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
{
  "andrewgilley/reliquary.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("reliquary").setup()
  end,
}
```

The `setup` call is optional if you want the default map.

## Configuration

```lua
require("reliquary").setup({
  filetypes = {
    python = "st",
    rust = "kg",
    go = "nd",
    odin = "dc",
    lua = "tk",
    zig = "gn",
  },
  fallback = nil,
  schemes = {
    st = {
      transparent = false,
    },
    kg = {
      transparent = false,
      terminalColors = true,
    },
    nd = {
      transparent = false,
    },
  },
})
```

`fallback` may be set to one of the bundled colorscheme names if buffers with
unmapped filetypes should also force a theme.

## Manual Use

```lua
require("reliquary").apply()
```

The bundled colorschemes are also available directly:

```vim
:colorscheme dc
:colorscheme gn
:colorscheme kg
:colorscheme nd
:colorscheme st
:colorscheme tk
```
