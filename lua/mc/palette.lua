local original = {
  icy_white = "#EEFFFF",
  muted_periwinkle = "#717CB4",
  pure_black = "#000000",
  soft_red = "#F07178",
  pale_green = "#C3E88D",
  warm_yellow = "#FFCB6B",
  light_cornflower_blue = "#82AAFF",
  pale_periwinkle = "#B0C9FF",
  pale_cyan = "#89DDFF",
  light_violet = "#C792EA",
  salmon_orange = "#F78C6C",
  muted_red = "#DC6068",
  muted_yellow_green = "#ABCF76",
  muted_gold = "#E6B455",
  muted_cornflower_blue = "#6E98EB",
  muted_cyan = "#71C6E7",
  muted_violet = "#B480D6",
  muted_orange = "#E2795B",
  muted_teal = "#80CBC4",
  bright_yellow = "#FFCC00",
  vivid_pink_red = "#FF5370",
  near_black = "#181818",
  deep_black = "#111111",
  light_blue_gray = "#B0BEC5",
  medium_gray = "#8C8B8B",
  dark_gray = "#404040",
  near_pure_black = "#101010",
  charcoal_black = "#242424",
  deep_charcoal = "#2C2C2C",
  charcoal_gray = "#303030",
  muted_charcoal = "#3A3A3A",
  vivid_orange = "#FF9800",
  deep_gray = "#515151",
  medium_dark_gray = "#424242",
}

local palette = {}

for name, color in pairs(original) do
  palette[name] = color
end

return palette
