local original = {
  onyx_black = "#171717",
  deep_charcoal = "#161616",
  charcoal_black = "#171717",
  dark_charcoal = "#1e1e1e",
  charcoal_gray = "#232323",
  medium_charcoal = "#3f3f3f",
  deep_gray = "#282828",
  dark_gray = "#545454",
  medium_gray = "#757575",
  light_gray = "#a4a4a4",
  soft_white = "#f0f0f0",
  bright_red_orange = "#f65a42",
  pale_orange = "#fab283",
  bright_yellow = "#FCD53B",
  vivid_green = "#29c121",
  vivid_teal = "#00ceb9",
  pale_cyan = "#93e9f6",
  light_cornflower_blue = "#8CB0FF",
  pale_violet = "#EDB2F1",
  bright_pink = "#FF9AE2",
  dark_forest_green = "#172a16",
  dark_maroon = "#480702",
  dark_navy_blue = "#05192e",
  deep_forest_green = "#133412",
  dark_brown = "#332821",
  dark_red_black = "#1e1514",
  dark_olive_black = "#221f14",
  dark_blue_gray = "#181d1f",
  dark_green_black = "#111b11",
}

local palette = {}

for name, color in pairs(original) do
  palette[name] = color
end

return palette
