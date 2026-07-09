local M = {}

M.config = {
  transparent = false,
  contrast = false,
  borders = false,
  cursorline_transparent = false,
  enable_sidebar_background = false,
  uniform_diff_background = false,
  styles = {
    comments = { italic = true },
    keywords = { bold = true },
  },
}

local function bool_from_globals(config, key, names)
  for _, name in ipairs(names) do
    local value = vim.g[name]

    if value ~= nil then
      config[key] = value == true or value == 1
      return
    end
  end
end

local function resolve_config()
  local config = vim.deepcopy(M.config)

  bool_from_globals(config, "contrast", { "nd_contrast", "nord_contrast" })
  bool_from_globals(config, "borders", { "nd_borders", "nord_borders" })
  bool_from_globals(config, "transparent", { "nd_disable_background", "nord_disable_background" })
  bool_from_globals(config, "cursorline_transparent", { "nd_cursorline_transparent", "nord_cursorline_transparent" })
  bool_from_globals(config, "enable_sidebar_background", { "nd_enable_sidebar_background", "nord_enable_sidebar_background" })
  bool_from_globals(config, "uniform_diff_background", { "nd_uniform_diff_background", "nord_uniform_diff_background" })

  local italic = vim.g.nd_italic
  if italic == nil then
    italic = vim.g.nord_italic
  end

  if italic ~= nil then
    config.styles.comments.italic = italic == true or italic == 1
  end

  local bold = vim.g.nd_bold
  if bold == nil then
    bold = vim.g.nord_bold
  end

  if bold ~= nil then
    config.styles.keywords.bold = bold == true or bold == 1
  end

  return config
end

function M.setup(opts)
  M.config = vim.tbl_deep_extend("force", M.config, opts or {})
end

function M.load()
  vim.cmd("highlight clear")

  if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
  end

  vim.o.termguicolors = true
  vim.o.background = "dark"
  vim.g.colors_name = "nd"

  local config = resolve_config()

  for group, opts in pairs(require("nd.groups").setup(config)) do
    vim.api.nvim_set_hl(0, group, opts)
  end

  local c = require("nd.palette")
  local terminal = {
    c.nord1, c.nord11, c.nord14, c.nord13,
    c.nord9, c.nord15, c.nord8, c.nord5,
    c.nord3, c.nord11, c.nord14, c.nord13,
    c.nord10, c.nord15, c.nord7, c.nord6,
  }

  for i, color in ipairs(terminal) do
    vim.g["terminal_color_" .. (i - 1)] = color
  end
end

return M
