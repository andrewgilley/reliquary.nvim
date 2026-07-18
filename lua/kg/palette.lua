local original = {
  near_black_blue = "#16161D",
  midnight_gray = "#181820",
  charcoal_black = "#1a1a22",
  dark_slate_gray = "#1F1F28",
  slate_charcoal = "#2A2A37",
  dark_blue_gray = "#363646",
  muted_blue_gray = "#54546D",
  dark_navy_blue = "#223249",
  steel_blue = "#2D4F67",
  dark_olive_green = "#2B3328",
  dark_taupe = "#49443C",
  dark_burgundy = "#43242B",
  dark_indigo_gray = "#252535",
  sage_green = "#76946A",
  brick_red = "#C34043",
  golden_tan = "#DCA561",
  vivid_red = "#E82424",
  bright_orange = "#FF9E3B",
  muted_teal = "#6A9589",
  slate_blue = "#658594",
  pure_white = "#FFFFFF",
  warm_beige = "#C8C093",
  ivory = "#DCD7BA",
  warm_gray = "#727169",
  muted_violet = "#957FB8",
  lavender_gray = "#b8b4d0",
  cornflower_blue = "#7E9CD8",
  dusty_lavender = "#938AA9",
  periwinkle_gray = "#9CABCA",
  sky_blue = "#7FB4CA",
  pale_cyan = "#A3D4D5",
  seafoam_teal = "#7AA89F",
  yellow_green = "#98BB6C",
  olive_brown = "#938056",
  muted_gold = "#C0A36E",
  pale_gold = "#E6C384",
  dusty_pink = "#D27E99",
  coral_red = "#E46876",
  salmon_red = "#FF5D62",
  peach_orange = "#FFA066",
  slate_gray = "#717C7C",
}

local palette = {}

for name, color in pairs(original) do
  palette[name] = color
end

return palette
