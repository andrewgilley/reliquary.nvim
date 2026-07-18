local original = {
  bright_gold = "#FAC03B",
  pale_yellow = "#FCD988",
  sandy_yellow = "#F1D47A",
  light_lavender = "#A29BFE",
  pale_green = "#98d473",
  light_gray = "#C8C8C8",
  medium_light_gray = "#A1A1A1",
  silver_gray = "#BBBBBB",
  charcoal_gray = "#4E5257",
  near_black = "#131515",
  charcoal_black = "#181A1B",
  dark_slate_gray = "#1D2023",
  deep_slate_gray = "#242629",
  cool_gray = "#9DA1A3",
  graphite_gray = "#2D3032",
  pale_cyan = "#A1E0EA",
  soft_white = "#EEEEEE",
  pure_white = "#FFFFFF",
  muted_red = "#C15959",
  steel_gray = "#52595B",
}

local palette = {}

for name, color in pairs(original) do
  palette[name] = color
end

return palette
