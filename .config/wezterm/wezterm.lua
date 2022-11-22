local wezterm = require 'wezterm';

return {
	-- font=wezterm.font 'Agave Nerd Font',
	font = wezterm.font_with_fallback({
		{ family = "HackGen35 Console NF", weight = "Regular", style = "Normal" },
		{ family = "HackGen35 Console NF", weight = "Regular", style = "Italic" },


	}),
	font_size = 16,
	-- color_scheme = "GitHub Dark",
	send_composed_key_when_right_alt_is_pressed = false,
	enable_tab_bar = false,
	window_background_opacity = 0.95,
	colors = {

		foreground = "#c6c8d1",
		background = "#161821",
		cursor_bg = "#c6c8d1",
		cursor_border = "#c6c8d1",
		cursor_fg = "#161821",
		selection_bg = "#c6c8d1",
		selection_fg = "#161821",
		ansi = { "#1e2132", "#e27878", "#b4be82", "#e2a478", "#84a0c6", "#a093c7", "#89b8c2", "#c6c8d1" },
		brights = { "#6b7089", "#e98989", "#c0ca8e", "#e9b189", "#91acd1", "#ada0d3", "#95c4ce", "#d2d4de" }

	}
	-- color_scheme = "tokyonight",

}
