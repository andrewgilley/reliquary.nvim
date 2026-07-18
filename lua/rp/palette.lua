local original = {
  near_black_violet = "#16141f",
  midnight_violet = "#191724",
  dark_violet_gray = "#1f1d2e",
  charcoal_violet = "#26233a",
  muted_violet_gray = "#6e6a86",
  lavender_gray = "#908caa",
  pale_lavender = "#e0def4",
  dusty_pink = "#eb6f92",
  pale_gold = "#f6c177",
  pale_rose = "#ebbcba",
  dark_teal_blue = "#31748f",
  pale_cyan = "#9ccfd8",
  light_violet = "#c4a7e7",
  muted_sage = "#95b1ac",
  deep_violet_gray = "#21202e",
  muted_indigo_gray = "#403d52",
  medium_violet_gray = "#524f67",
}

local palette = {}

for name, color in pairs(original) do
  palette[name] = color
end

return palette
