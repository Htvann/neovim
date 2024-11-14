-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- config.font = wezterm.font("MesloLGS Nerd Font Mono")

config.font_size = 11.5
config.enable_tab_bar = false

config.color_scheme = "catppuccin-macchiato"
config.window_background_opacity = 0.9
-- config.macos_window_background_blur = 30
--
-- config.window_decorations = "RESIZE"
--
-- Color scheme:
-- config.colors = {
-- 	foreground = "#CBE0F0",
-- 	background = "#011423",
-- 	cursor_bg = "#47FF9C",
-- 	cursor_border = "#47FF9C",
-- 	cursor_fg = "#011423",
-- 	selection_bg = "#033259",
-- 	selection_fg = "#CBE0F0",
-- 	ansi = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#0FC5ED", "#a277ff", "#24EAF7", "#24EAF7" },
-- 	brights = { "#214969", "#E52E2E", "#44FFB1", "#FFE073", "#A277FF", "#a277ff", "#24EAF7", "#24EAF7" },
-- }

-- You can specify some parameters to influence the font selection;
-- for example, this selects a Bold, Italic font variant.
-- config.font =
--   wezterm.font('JetBrains Mono', { weight = 'Bold', italic = true })

-- and finally, return the configuration to wezterm
return config