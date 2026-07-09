local original = {
  white = "#EEFFFF",
  gray = "#717CB4",
  black = "#000000",
  red = "#F07178",
  green = "#C3E88D",
  yellow = "#FFCB6B",
  blue = "#82AAFF",
  paleblue = "#B0C9FF",
  cyan = "#89DDFF",
  purple = "#C792EA",
  orange = "#F78C6C",
  darkred = "#DC6068",
  darkgreen = "#ABCF76",
  darkyellow = "#E6B455",
  darkblue = "#6E98EB",
  darkcyan = "#71C6E7",
  darkpurple = "#B480D6",
  darkorange = "#E2795B",
  link = "#80CBC4",
  cursor = "#FFCC00",
  title = "#EEFFFF",
  error = "#FF5370",
  bg = "#212121",
  bg_alt = "#1A1A1A",
  fg = "#B0BEC5",
  fg_dark = "#8C8B8B",
  selection = "#404040",
  contrast = "#1A1A1A",
  active = "#323232",
  border = "#343434",
  highlight = "#3F3F3F",
  disabled = "#474747",
  accent = "#FF9800",
  comments = "#515151",
  line_numbers = "#424242",
}

local palette = {}

for name, color in pairs(original) do
  palette[name] = color
end

return palette
