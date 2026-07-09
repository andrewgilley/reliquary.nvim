local original = {
  gold = "#FAC03B",
  light_yellow = "#FCD988",
  sand = "#F1D47A",
  lavender = "#A29BFE",
  light_green = "#A3DB81",
  silver = "#C8C8C8",
  gray = "#A1A1A1",
  light_gray = "#BBBBBB",
  charcoal = "#4E5257",
  black = "#131515",
  dark_gray = "#181A1B",
  dark_slate = "#1D2023",
  slate = "#242629",
  cool_gray = "#9DA1A3",
  graphite = "#2D3032",
  light_cyan = "#A1E0EA",
  near_white = "#EEEEEE",
  white = "#FFFFFF",
  muted_red = "#C15959",
  steel_gray = "#52595B",
}

local palette = {}

for name, color in pairs(original) do
  palette[name] = color
end

return palette
