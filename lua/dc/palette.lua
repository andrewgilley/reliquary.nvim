local original = {
  background = "#282a36",
  current_line = "#44475a",
  foreground = "#f8f8f2",
  comment = "#6272a4",
  cyan = "#8be9fd",
  green = "#50fa7b",
  orange = "#ffb86c",
  pink = "#ff79c6",
  purple = "#bd93f9",
  red = "#ff5555",
  yellow = "#f1fa8c",

  menu = "#21222c",
  selection = "#44475a",
  subtle = "#343746",
  diff_add = "#294436",
  diff_change = "#3b3f56",
  diff_delete = "#4b2f3d",
}

local palette = {}

for name, color in pairs(original) do
  palette[name] = color
end

return palette
