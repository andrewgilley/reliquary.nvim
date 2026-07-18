local original = {
  near_black_blue = "#0A0E14",
  midnight_blue = "#101521",
  charcoal_blue = "#1A1F29",
  slate_blue = "#273747",
  warm_light_gray = "#B3B1AD",
  medium_gray = "#8F8F8F",
  blue_gray = "#626A73",
  dark_blue_gray = "#3D424D",
  charcoal_blue_gray = "#2D3640",
  light_orange = "#FFB454",
  pumpkin_orange = "#FF8F40",
  mustard_yellow = "#E6B450",
  vivid_red = "#FF3333",
  lime_green = "#C2D94C",
  pale_mint = "#95E6CB",
  pale_lavender = "#D2A6FF",
  bright_sky_blue = "#59C2FF",
  golden_yellow = "#E6B450",
  pure_black = "#000000",
  soft_white = "#F8F8F2",
}

local palette = {}

for name, color in pairs(original) do
  palette[name] = color
end

return palette
