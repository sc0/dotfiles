local wezterm = require("wezterm")

local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end

config.default_prog = { "/opt/homebrew/bin/fish", "-C", "tmux" }
config.freetype_load_flags = "NO_HINTING"
config.color_scheme = "Gruvbox dark, medium (base16)"
config.font = wezterm.font("NotoMono Nerd Font", { weight = "DemiBold" })
config.font_size = 13
config.enable_tab_bar = false
config.line_height = 1.15
config.window_decorations = "RESIZE"

return config
