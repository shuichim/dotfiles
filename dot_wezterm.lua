-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'AdventureTime'

-- and font:
config.font = wezterm.font { family = 'HackGen Console NF', harfbuzz_features = { 'zero', 'ss01', 'cv05' } }
config.font_size = 14.0

config.window_background_opacity = 0.8

config.enable_tab_bar = false

-- Spawn a fish shell in login mode
config.default_prog = { '/opt/homebrew/bin/fish', '-l' }

-- and finally, return the configuration to wezterm
return config
