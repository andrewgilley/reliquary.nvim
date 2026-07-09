local M = {}

M.config = {
  undercurl = true,
  transparent = false,
  dimInactive = false,
  terminalColors = true,
  commentStyle = { italic = true },
  functionStyle = {},
  keywordStyle = { italic = true },
  statementStyle = { bold = true },
  typeStyle = {},
  styles = {
    comments = { italic = true },
    keywords = { italic = true },
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
  vim.g.colors_name = "kg"

  for group, opts in pairs(require("kg.groups").setup(M.config)) do
    vim.api.nvim_set_hl(0, group, opts)
  end

  if M.config.terminalColors then
    local c = require("kg.palette")
    local terminal = {
      c.sumiInk0, c.autumnRed, c.autumnGreen, c.boatYellow2,
      c.crystalBlue, c.oniViolet, c.waveAqua1, c.oldWhite,
      c.fujiGray, c.samuraiRed, c.springGreen, c.carpYellow,
      c.springBlue, c.springViolet1, c.waveAqua2, c.fujiWhite,
      c.surimiOrange, c.peachRed,
    }

    for i, color in ipairs(terminal) do
      vim.g["terminal_color_" .. (i - 1)] = color
    end
  end
end

return M
