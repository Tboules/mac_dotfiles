local wezterm = require("wezterm")

local config = {}

config.color_scheme = "Classic Dark (base16)"
-- config.color_scheme = "GitHub Dark"
config.font = wezterm.font("JetBrainsMono Nerd Font")
config.font_size = 15.0

config.enable_tab_bar = false
config.window_decorations = "RESIZE"

config.window_background_opacity = 0.95
config.macos_window_background_blur = 20

return config
