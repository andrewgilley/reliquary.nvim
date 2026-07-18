local original = {
  dark_charcoal_blue = "#282a36",
  muted_indigo_gray = "#44475a",
  soft_white = "#f8f8f2",
  muted_cornflower = "#6272a4",
  pale_cyan = "#8be9fd",
  bright_green = "#50fa7b",
  light_orange = "#ffb86c",
  bright_pink = "#ff79c6",
  light_violet = "#bd93f9",
  coral_red = "#ff5555",
  pale_yellow = "#f1fa8c",

  near_black_blue = "#21222c",
  dark_indigo_gray = "#343746",
  dark_forest_green = "#294436",
  dark_slate_blue = "#3b3f56",
  dark_burgundy = "#4b2f3d",
}

local palette = {}

for name, color in pairs(original) do
  palette[name] = color
end

return palette
