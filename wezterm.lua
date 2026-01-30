local wezterm = require("wezterm")
local config = {}

-- Configurações básicas
config.color_scheme = "Dracula"
config.font = wezterm.font("JetBrainsMono Nerd Font", { weight = "Medium" })
config.font_size = 11.0

-- Configurações da janela
config.window_background_opacity = 0.95
config.window_decorations = "TITLE|RESIZE" -- Barra de título nativa do sistema
config.hide_tab_bar_if_only_one_tab = true

-- Remove padding/margens
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

-- Configurações do terminal
config.scrollback_lines = 10000
config.enable_scroll_bar = false

-- Atalhos de teclado
config.keys = {
	{
		key = "t",
		mods = "CTRL|SHIFT",
		action = wezterm.action.SpawnTab("CurrentPaneDomain"),
	},
	{
		key = "w",
		mods = "CTRL|SHIFT",
		action = wezterm.action.CloseCurrentTab({ confirm = true }),
	},
	-- Controles de janela
	{
		key = "F11",
		action = wezterm.action.ToggleFullScreen,
	},
	{
		key = "Enter",
		mods = "ALT",
		action = wezterm.action.ToggleFullScreen,
	},
}

return config
