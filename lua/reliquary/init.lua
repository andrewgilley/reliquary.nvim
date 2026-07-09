local M = {}

local defaults = {
  enabled = true,
  fallback = nil,
  preserve_numberline = true,
  filetypes = {
    python = "st",
    rust = "kg",
    go = "nd",
    gomod = "nd",
    gosum = "nd",
    gowork = "nd",
    goland = "nd",
    odin = "dc",
    lua = "tk",
    zig = "gn",
    typescript = "rp",
    typescriptreact = "rp",
    javascript = "rp",
    javascriptreact = "rp",
  },
  schemes = {},
}

M.config = vim.deepcopy(defaults)
M.current = nil

local group = vim.api.nvim_create_augroup("Reliquary", {})

local function snapshot_numberline()
  if not M.config.preserve_numberline then
    return nil
  end

  local wins = {}

  for _, win in ipairs(vim.api.nvim_list_wins()) do
    wins[win] = {
      number = vim.wo[win].number,
      relativenumber = vim.wo[win].relativenumber,
    }
  end

  return wins
end

local function restore_numberline(wins)
  if not wins then
    return
  end

  for win, opts in pairs(wins) do
    if vim.api.nvim_win_is_valid(win) then
      if opts.number then
        vim.wo[win].number = true
      end

      if opts.relativenumber then
        vim.wo[win].relativenumber = true
      end
    end
  end
end

local function configure_schemes(schemes)
  for name, opts in pairs(schemes or {}) do
    local ok, scheme = pcall(require, name)

    if ok and type(scheme.setup) == "function" then
      scheme.setup(opts)
    end
  end
end

local function resolve_scheme(bufnr)
  local filetype = vim.bo[bufnr].filetype

  if filetype == "" then
    return M.config.fallback
  end

  return M.config.filetypes[filetype] or M.config.fallback
end

function M.apply(bufnr, opts)
  if not M.config.enabled then
    return nil
  end

  bufnr = bufnr or vim.api.nvim_get_current_buf()
  opts = opts or {}

  if not vim.api.nvim_buf_is_valid(bufnr) then
    return nil
  end

  local scheme = resolve_scheme(bufnr)

  if not scheme or scheme == "" then
    return nil
  end

  if not opts.force and vim.g.colors_name == scheme then
    M.current = scheme
    return scheme
  end

  local numberline = snapshot_numberline()
  local ok, err = pcall(vim.cmd.colorscheme, scheme)

  if not ok then
    vim.schedule(function()
      vim.notify(("reliquary.nvim: failed to load colorscheme %q: %s"):format(scheme, err), vim.log.levels.ERROR)
    end)
    return nil
  end

  restore_numberline(numberline)
  M.current = scheme
  return scheme
end

function M.setup(opts)
  M.config = vim.tbl_deep_extend("force", vim.deepcopy(defaults), opts or {})

  configure_schemes(M.config.schemes)

  vim.api.nvim_clear_autocmds({ group = group })

  if not M.config.enabled then
    return
  end

  vim.api.nvim_create_autocmd({ "FileType", "BufEnter", "BufWinEnter" }, {
    group = group,
    callback = function(args)
      M.apply(args.buf)
    end,
  })

  vim.api.nvim_create_autocmd("VimEnter", {
    group = group,
    callback = function()
      M.apply(vim.api.nvim_get_current_buf())
    end,
  })

  if vim.v.vim_did_enter == 1 then
    M.apply(vim.api.nvim_get_current_buf())
  end
end

return M
