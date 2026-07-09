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
  vim.g.colors_name = "st"

  local groups = require("st.groups").setup(M.config)

  for group, opts in pairs(groups) do
    vim.api.nvim_set_hl(0, group, opts)
  end

  local c = require("st.palette")
  local terminal = {
    c.dark_gray, c.muted_red, c.light_cyan, c.gold, c.near_white, c.near_white, c.light_green, c.cool_gray,
    c.slate, c.muted_red, c.light_cyan, c.sand, c.near_white, c.lavender, c.light_green, c.silver,
  }
  for i, color in ipairs(terminal) do
    vim.g["terminal_color_" .. (i - 1)] = color
  end
end

return M
