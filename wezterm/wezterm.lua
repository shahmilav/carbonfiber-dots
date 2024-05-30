local wezterm = require 'wezterm'

local config = {}

-- APPEARANCE
config.font = wezterm.font 'JetBrains Mono'
config.font_size = 18

config.color_scheme = 'Oxocarbon Dark (Gogh)'

config.enable_scroll_bar = true

config.default_cwd = wezterm.home_dir

return config
