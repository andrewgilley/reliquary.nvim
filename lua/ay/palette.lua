local original = {
  bg = "#0A0E14",
  bg_alt = "#101521",
  bg_highlight = "#1A1F29",
  bg_selection = "#273747",
  fg = "#B3B1AD",
  fg_dim = "#8F8F8F",
  comment = "#626A73",
  gutter = "#3D424D",
  border = "#2D3640",
  orange = "#FFB454",
  pumpkin = "#FF8F40",
  amber = "#E6B450",
  red = "#FF3333",
  green = "#C2D94C",
  teal = "#95E6CB",
  purple = "#D2A6FF",
  violet = "#59C2FF",
  yellow = "#E6B450",
  black = "#000000",
  white = "#F8F8F2",
}

local palette = {}

for name, color in pairs(original) do
  palette[name] = color
end

return palette
