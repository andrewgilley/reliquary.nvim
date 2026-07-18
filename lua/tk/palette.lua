local original = {
  dark_indigo_gray = "#26273b",
  near_black_blue = "#16161e",
  charcoal_indigo = "#292e42",
  muted_indigo = "#414868",
  pale_periwinkle = "#c0caf5",
  muted_periwinkle = "#a9b1d6",
  dark_slate_blue = "#3b4261",
  muted_blue_gray = "#565f89",
  pure_white = "#FFFFFF",
  cornflower_blue = "#7aa2f7",
  deep_blue = "#3d59a1",
  bright_cyan = "#2ac3de",
  vivid_cyan = "#0db9d7",
  pale_cyan = "#89ddff",
  icy_cyan = "#b4f9f8",
  deep_slate_blue = "#394b70",
  light_sky_blue = "#7dcfff",
  yellow_green = "#9ece6a",
  mint_teal = "#73daca",
  muted_teal = "#41a6b5",
  light_violet = "#bb9af7",
  vivid_magenta = "#ff007c",
  light_orange = "#ff9e64",
  muted_violet = "#9d7cd8",
  soft_red = "#f7768e",
  brick_red = "#db4b4b",
  vivid_teal = "#1abc9c",
  muted_gold = "#e0af68",
}

local palette = {}
for name, color in pairs(original) do palette[name] = color end
return palette
