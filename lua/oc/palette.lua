local original = {
  bg = "#141414",
  bg1 = "#161616",
  bg2 = "#171717",
  bg3 = "#1e1e1e",
  bg4 = "#232323",
  outline = "#3f3f3f",
  outline_dim = "#282828",
  grey1 = "#545454",
  grey2 = "#757575",
  grey3 = "#a4a4a4",
  white = "#f0f0f0",
  red = "#f65a42",
  orange = "#fab283",
  yellow = "#FCD53B",
  green = "#29c121",
  teal = "#00ceb9",
  cyan = "#93e9f6",
  blue = "#8CB0FF",
  purple = "#EDB2F1",
  pink = "#FF9AE2",
  fn = "#8CB0FF",
  kw = "#EDB2F1",
  comment = "#757575",
  diff_add = "#172a16",
  diff_del = "#480702",
  diff_mod = "#05192e",
  diff_add_strong = "#133412",
  selection = "#332821",
  error_bg = "#1e1514",
  warning_bg = "#221f14",
  info_bg = "#181d1f",
  hint_bg = "#111b11",
}

local palette = {}

for name, color in pairs(original) do
  palette[name] = color
end

return palette
