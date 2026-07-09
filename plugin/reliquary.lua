if vim.g.loaded_reliquary == 1 then
  return
end

vim.g.loaded_reliquary = 1

require("reliquary").setup()
