local wezterm = require 'wezterm';

return {
	font = wezterm.font_with_fallback({
		{ family = "Monofur Font ", weight = "Medium", italic = false },
		-- { family = "JetBrainsMono Nerd Font", weight = "Medium", italic = false },
		-- { family = "Agave Nerd Font", weight = "Regular", italic = false },
		{ family = "HackGen35 Console NF", weight = "Regular", italic = false },


	}),
	font_size = 13,
	-- color_scheme = "GitHub Dark",
	send_composed_key_when_right_alt_is_pressed = false,
	enable_tab_bar = false,
	-- window_background_opacity = 0.95,
	-- colors = {
					-- foreground = "#c0caf5",
					-- background = "#1a1b26",
	-- 				cursor_bg = "#c0caf5",
	-- 				cursor_border = "#c0caf5",
	-- 				cursor_fg = "#1a1b26",
	-- 				selection_bg = "#33467C",
	-- 				selection_fg = "#c0caf5",
	-- 				ansi = { "#15161E", "#f7768e", "#9ece6a", "#e0af68", "#7aa2f7", "#bb9af7", "#7dcfff", "#a9b1d6" },
	-- 				brights = { "#414868", "#f7768e", "#9ece6a", "#e0af68", "#7aa2f7", "#bb9af7", "#7dcfff", "#c0caf5" }

	-- }
	color_scheme = "tokyonight",

}
