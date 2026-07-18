local original = {
  pure_black = "#000000",
  near_black = "#191919",
  charcoal_black = "#222222",
  dark_gray = "#333333",
  light_gray = "#cccccc",
  medium_gray = "#999999",
  muted_gray = "#666666",
  deep_gray = "#555555",
  bright_green = "#4cd169",
  pale_green = "#8bff95",
  mint_green = "#5dff9e",
  dark_forest_green = "#0f291a",
  deep_green = "#005500",
  olive_yellow = "#b8bb00",
  dark_olive_yellow = "#aaa400",
  light_brown = "#ddaa66",
  pale_peach = "#ffcd8b",
  muted_cyan = "#4cbbd1",
  cornflower_blue = "#4c72d1",
  light_violet = "#c476f1",
  bright_violet = "#cf7dff",
  lavender_gray = "#9999cc",
  bright_magenta = "#d14cb4",
  muted_red = "#9a383a",
  dark_red = "#863132",
  deep_red = "#990000",
  pure_white = "#ffffff",
  muted_purple = "#6e4287",
  dark_green = "#306d30",
  dark_purple = "#541691",
  soft_red = "#cc6666",
  soft_cyan = "#66cccc",
  soft_magenta = "#cc66cc",
  soft_yellow = "#cccc66",
}

local palette = {}

for name, color in pairs(original) do
  palette[name] = color
end

return palette
