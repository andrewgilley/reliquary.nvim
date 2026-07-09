# reliquary.nvim

Reliquary is a bundled Neovim colorscheme switcher that includes colorschemes that apply to certain file types.

<img width="1917" height="1062" alt="thison" src="https://github.com/user-attachments/assets/3943583f-0200-40aa-a622-bbff79c6c8e3" />

Includes:

- `ay`
- `dc`
- `gn`
- `kg`
- `mc`
- `md`
- `nd`
- `rp`
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
| `typescript`, `typescriptreact` | `rp` |
| `javascript`, `javascriptreact` | `rp` |
| `cpp` | `md` |
| `c` | `mc` |
| `yaml`, `toml` | `ay` |

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
    typescript = "rp",
    typescriptreact = "rp",
    javascript = "rp",
    javascriptreact = "rp",
    cpp = "md",
    c = "mc",
    yaml = "ay",
    toml = "ay",
  },
  preserve_numberline = true,
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
    rp = {
      transparent = false,
    },
    md = {
      transparent = false,
    },
    mc = {
      transparent = false,
    },
    ay = {
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
:colorscheme ay
:colorscheme kg
:colorscheme mc
:colorscheme md
:colorscheme nd
:colorscheme rp
:colorscheme st
:colorscheme tk
```
