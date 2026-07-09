local M = {}

M.config = {
  transparent = false,
  styles = {
    comments = { italic = true },
    keywords = { bold = false },
  },
}

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
  vim.g.colors_name = "ay"

  for group, opts in pairs(require("ay.groups").setup(M.config)) do
    vim.api.nvim_set_hl(0, group, opts)
  end

  local c = require("ay.palette")
  local terminal = {
    c.bg_alt, c.red, c.green, c.pumpkin, c.violet, c.purple, c.teal, c.fg,
    c.gutter, c.red, c.green, c.amber, c.violet, c.purple, c.teal, c.white,
  }

  for i, color in ipairs(terminal) do
    vim.g["terminal_color_" .. (i - 1)] = color
  end
end

return M
