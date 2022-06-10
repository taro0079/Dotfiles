local wezterm = require 'wezterm';

return {
	-- font = wezterm.font("JetBrains Mono", {weight="Bold", italic=true}),
	font = wezterm.font_with_fallback({
		{ family = "Cascadia Code PL", weight = "Medium", italic = false },
		{ family = "Cascadia Code PL", weight = "Medium", italic = true },
		{ family = "CaskaydiaCove Nerd Font", weight = "Medium", italic = false },
		{ family = "JetBrainsMono Nerd Font", weight = "Medium", italic = false },
		{ family = "VictorMono Nerd Font Mono", weight = "Medium", italic = true },
		{ family = "HackGenNerd", weight = "Medium", italic = true },


	}),
	font_size = 15,
	color_scheme = "Catppuccin",
	send_composed_key_when_right_alt_is_pressed = false,
	enable_tab_bar = false,

}
