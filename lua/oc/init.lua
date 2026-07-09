local M = {}

M.config = {
  transparent = false,
  styles = {
    comments = { italic = true },
    keywords = {},
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
  vim.g.colors_name = "oc"

  for group, opts in pairs(require("oc.groups").setup(M.config)) do
    vim.api.nvim_set_hl(0, group, opts)
  end

  local c = require("oc.palette")
  local terminal = {
    c.bg, c.red, c.teal, c.yellow, c.blue, c.purple, c.cyan, c.grey3,
    c.grey2, c.red, c.green, c.orange, c.blue, c.pink, c.cyan, c.white,
  }

  for i, color in ipairs(terminal) do
    vim.g["terminal_color_" .. (i - 1)] = color
  end
end

return M
