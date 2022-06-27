local wezterm = require 'wezterm';

return {
	-- font = wezterm.font("JetBrains Mono", {weight="Bold", italic=true}),
	font = wezterm.font_with_fallback({
		{ family = "Cascadia Code PL", weight = "Regular", italic = false },
		{ family = "Cascadia Code PL", weight = "Regular", italic = true },
		{ family = "CaskaydiaCove Nerd Font", weight = "Regular", italic = false },
		{ family = "JetBrainsMono Nerd Font", weight = "Regular", italic = false },
		{ family = "VictorMono Nerd Font Mono", weight = "Regular", italic = true },
		{ family = "HackGenNerd", weight = "Regular", italic = true },


	}),
	font_size = 16,
	color_scheme = "Catppuccin",
	send_composed_key_when_right_alt_is_pressed = false,
	enable_tab_bar = false,

}
