local original = {
  black = "#000000",
  background = "#191919",
  background_alt = "#222222",
  background_light = "#333333",
  foreground = "#cccccc",
  foreground_dim = "#999999",
  comment = "#666666",
  nontext = "#555555",
  green = "#4cd169",
  green_bright = "#8bff95",
  green_string = "#5dff9e",
  green_string_bg = "#0f291a",
  green_dark = "#005500",
  yellow = "#b8bb00",
  yellow_dark = "#aaa400",
  orange = "#ddaa66",
  peach = "#ffcd8b",
  cyan = "#4cbbd1",
  blue = "#4c72d1",
  purple = "#c476f1",
  purple_bright = "#cf7dff",
  purple_dim = "#9999cc",
  magenta = "#d14cb4",
  red = "#9a383a",
  red_dark = "#863132",
  error = "#990000",
  white = "#ffffff",
  visual = "#6e4287",
  diff_add = "#306d30",
  diff_change = "#541691",
  spell_bad = "#cc6666",
  spell_cap = "#66cccc",
  spell_rare = "#cc66cc",
  spell_local = "#cccc66",
}

local palette = {}

for name, color in pairs(original) do
  palette[name] = color
end

return palette
