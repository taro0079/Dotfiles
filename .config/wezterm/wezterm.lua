local wezterm = require 'wezterm';

return {
	-- font = wezterm.font("JetBrains Mono", {weight="Bold", italic=true}),
	font = wezterm.font_with_fallback({
		{ family = "FantasqueSansMono Nerd Font", weight = "Regular", italic = false },
		{ family = "FantasqueSansMono Nerd Font", weight = "Regular", italic = true },
		{ family = "HackGenNerd", weight = "Regular", italic = true },


	}),
	font_size = 17,
	color_scheme = "Dracula",
	send_composed_key_when_right_alt_is_pressed = false,
	enable_tab_bar = false,

}
