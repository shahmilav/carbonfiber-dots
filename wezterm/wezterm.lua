local wezterm = require 'wezterm'

local config = {}

-- APPEARANCE
config.font = wezterm.font 'SF Mono'
config.font_size = 18

local function get_appearance()
  if wezterm.gui then
    return wezterm.gui.get_appearance()
  end
  return 'Dark'
end

local function scheme_for_appearance(appearance)
  if appearance:find 'Dark' then
    return 'One Dark (base16)'
  else
    return 'One Light (base16)'
  end
end

config.color_scheme = scheme_for_appearance(get_appearance())

-- config.window_background_image = '/Users/milav/wallpapers/vector/Fission.png'
-- config.window_background_image_hsb = {
--   -- Darken the background image by reducing it to 1/3rd
--   brightness = 0.1,
--
--   -- You can adjust the hue by scaling its value.
--   -- a multiplier of 1.0 leaves the value unchanged.
--   hue = 1.0,
--
--   -- You can adjust the saturation also.
--   saturation = 1.0,
-- }
--


config.enable_scroll_bar = true


return config
