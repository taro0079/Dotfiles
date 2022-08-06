local wezterm = require 'wezterm';

return {
	font = wezterm.font_with_fallback({
		{ family = "Agave Nerd Font", weight = "Regular", italic = false },
		{ family = "Agave Nerd Font", weight = "Regular", italic = true },
		{ family = "HackGenNerd", weight = "Regular", italic = false },


	}),
	font_size = 15,
	color_scheme = "nord",
	send_composed_key_when_right_alt_is_pressed = false,
	enable_tab_bar = false,
	window_background_opacity = 0.8

}
