local M = {}

function M.setup(config)
  local c = require("tk.palette")
  local none = "NONE"
  local normal_bg = config.transparent and none or c.dark_indigo_gray
  local comment_style = config.styles.comments or {}
  local keyword_style = config.styles.keywords or {}

  local g = {
    Normal = { fg = c.pale_periwinkle, bg = normal_bg },
    NormalNC = { fg = c.muted_periwinkle, bg = normal_bg },
    NormalFloat = { fg = c.pale_periwinkle, bg = c.near_black_blue },
    FloatBorder = { fg = c.deep_blue, bg = c.near_black_blue },
    FloatTitle = { fg = c.cornflower_blue, bg = c.near_black_blue, bold = true },
    NonText = { fg = c.muted_indigo }, EndOfBuffer = { fg = c.dark_indigo_gray },
    Whitespace = { fg = c.dark_slate_blue }, LineNr = { fg = c.muted_blue_gray, bg = normal_bg },
    CursorLineNr = { fg = c.muted_gold, bg = normal_bg, bold = true },
    CursorLine = { bg = c.charcoal_indigo }, CursorColumn = { link = "CursorLine" },
    ColorColumn = { bg = c.charcoal_indigo }, SignColumn = { fg = c.cornflower_blue, bg = normal_bg },
    CursorLineSign = { bg = c.charcoal_indigo }, FoldColumn = { fg = c.muted_blue_gray, bg = normal_bg },
    Folded = { fg = c.cornflower_blue, bg = c.charcoal_indigo }, MatchParen = { fg = c.light_orange, bold = true },
    Visual = { bg = c.deep_slate_blue }, VisualNOS = { link = "Visual" },
    Search = { fg = c.dark_indigo_gray, bg = c.cornflower_blue }, IncSearch = { fg = c.dark_indigo_gray, bg = c.light_orange },
    CurSearch = { fg = c.dark_indigo_gray, bg = c.muted_gold, bold = true }, Substitute = { fg = c.dark_indigo_gray, bg = c.soft_red },
    Pmenu = { fg = c.pale_periwinkle, bg = c.near_black_blue }, PmenuSel = { fg = c.pale_periwinkle, bg = c.deep_slate_blue, bold = true },
    PmenuKind = { fg = c.light_sky_blue, bg = c.near_black_blue }, PmenuExtra = { fg = c.muted_blue_gray, bg = c.near_black_blue },
    PmenuSbar = { bg = c.charcoal_indigo }, PmenuThumb = { bg = c.dark_slate_blue },
    StatusLine = { fg = c.muted_blue_gray, bg = normal_bg }, StatusLineNC = { fg = c.muted_blue_gray, bg = normal_bg },
    TabLine = { fg = c.muted_blue_gray, bg = c.near_black_blue }, TabLineFill = { bg = c.dark_indigo_gray },
    TabLineSel = { fg = c.pale_periwinkle, bg = c.charcoal_indigo }, WinSeparator = { fg = c.muted_blue_gray },
    VertSplit = { link = "WinSeparator" }, Directory = { fg = c.cornflower_blue }, Title = { fg = c.cornflower_blue, bold = true },
    Question = { fg = c.light_sky_blue }, MoreMsg = { fg = c.yellow_green }, ModeMsg = { fg = c.muted_gold, bold = true },
    WarningMsg = { fg = c.light_orange }, ErrorMsg = { fg = c.soft_red }, Error = { fg = c.soft_red },
    Todo = { fg = c.dark_indigo_gray, bg = c.muted_gold, bold = true },

    Comment = vim.tbl_extend("force", { fg = c.muted_blue_gray }, comment_style),
    SpecialComment = { fg = c.muted_blue_gray, bold = true }, Constant = { fg = c.light_orange },
    String = { fg = c.yellow_green }, Character = { fg = c.mint_teal }, Number = { fg = c.light_orange },
    Boolean = { fg = c.light_orange, bold = true }, Float = { link = "Number" }, Identifier = { fg = c.light_violet },
    Function = { fg = c.cornflower_blue }, Statement = vim.tbl_extend("force", { fg = c.light_violet, bold = true }, keyword_style),
    Keyword = vim.tbl_extend("force", { fg = c.muted_violet }, keyword_style), Operator = { fg = c.pale_cyan },
    Exception = { fg = c.light_violet }, PreProc = { fg = c.light_sky_blue }, Type = { fg = c.bright_cyan },
    Special = { fg = c.pale_cyan }, Delimiter = { fg = c.pale_cyan }, Underlined = { fg = c.cornflower_blue, underline = true },

    DiffAdd = { bg = c.deep_slate_blue }, DiffChange = { bg = c.charcoal_indigo },
    DiffDelete = { fg = c.brick_red, bg = c.near_black_blue }, DiffText = { bg = c.deep_blue, bold = true },
    Added = { fg = c.yellow_green }, Changed = { fg = c.muted_gold }, Removed = { fg = c.soft_red },
    DiagnosticError = { fg = c.soft_red }, DiagnosticWarn = { fg = c.muted_gold },
    DiagnosticInfo = { fg = c.bright_cyan }, DiagnosticHint = { fg = c.vivid_teal }, DiagnosticOk = { fg = c.yellow_green },
    DiagnosticUnderlineError = { sp = c.soft_red, undercurl = true },
    DiagnosticUnderlineWarn = { sp = c.muted_gold, undercurl = true },
    DiagnosticUnderlineInfo = { sp = c.bright_cyan, undercurl = true },
    DiagnosticUnderlineHint = { sp = c.vivid_teal, undercurl = true },
    LspReferenceText = { bg = c.charcoal_indigo }, LspReferenceRead = { link = "LspReferenceText" },
    LspReferenceWrite = { bg = c.charcoal_indigo, underline = true },
    LspSignatureActiveParameter = { fg = c.light_orange, bold = true }, LspCodeLens = { fg = c.muted_blue_gray },

    ["@comment"] = { link = "Comment" }, ["@comment.documentation"] = { link = "SpecialComment" },
    ["@string"] = { link = "String" }, ["@string.escape"] = { fg = c.light_violet },
    ["@character"] = { link = "Character" }, ["@number"] = { link = "Number" },
    ["@boolean"] = { link = "Boolean" }, ["@constant"] = { link = "Constant" },
    ["@constant.builtin"] = { fg = c.light_orange, bold = true }, ["@variable"] = { fg = c.pale_periwinkle },
    ["@variable.builtin"] = { fg = c.soft_red, italic = true }, ["@variable.parameter"] = { fg = c.muted_gold },
    ["@function"] = { link = "Function" }, ["@function.builtin"] = { fg = c.light_sky_blue },
    ["@function.call"] = { link = "Function" }, ["@method"] = { link = "Function" },
    ["@constructor"] = { fg = c.bright_cyan }, ["@keyword"] = { link = "Keyword" },
    ["@keyword.function"] = { fg = c.light_violet }, ["@keyword.return"] = { fg = c.light_violet },
    ["@operator"] = { link = "Operator" }, ["@type"] = { link = "Type" },
    ["@type.builtin"] = { fg = c.bright_cyan, italic = true }, ["@property"] = { fg = c.mint_teal },
    ["@attribute"] = { fg = c.muted_gold }, ["@tag"] = { fg = c.soft_red },
    ["@tag.attribute"] = { fg = c.muted_gold }, ["@tag.delimiter"] = { fg = c.pale_cyan },
    ["@markup.heading"] = { link = "Title" }, ["@markup.link"] = { fg = c.cornflower_blue, underline = true },
    ["@markup.raw"] = { link = "String" },

    GitSignsAdd = { fg = c.yellow_green }, GitSignsChange = { fg = c.muted_gold }, GitSignsDelete = { fg = c.soft_red },
    TelescopeBorder = { fg = "#FFFFFF" }, TelescopeSelection = { bg = c.charcoal_indigo, bold = true },
    TelescopeMatching = { fg = c.light_orange, bold = true }, BlinkCmpLabelMatch = { fg = c.cornflower_blue, bold = true },
    CmpItemAbbrMatch = { fg = c.cornflower_blue, bold = true }, CmpItemAbbrMatchFuzzy = { fg = c.light_sky_blue, bold = true },
  }

  local links = {
    Conditional = "Statement", Repeat = "Statement", Label = "Statement",
    Include = "PreProc", Define = "PreProc", Macro = "PreProc", PreCondit = "PreProc",
    StorageClass = "Type", Structure = "Type", Typedef = "Type", Debug = "Special",
    SpecialChar = "Special", Tag = "Special", Terminal = "Normal", QuickFixLine = "Search",
    SpellBad = "DiagnosticUnderlineError", SpellCap = "DiagnosticUnderlineWarn",
    SpellLocal = "DiagnosticUnderlineInfo", SpellRare = "DiagnosticUnderlineHint",
  }
  for name, target in pairs(links) do g[name] = { link = target } end
  return g
end

return M
