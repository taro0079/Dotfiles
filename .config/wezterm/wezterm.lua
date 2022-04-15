local wezterm = require 'wezterm';

return {
	-- font = wezterm.font("JetBrains Mono", {weight="Bold", italic=true}),
	font = wezterm.font_with_fallback({
		{family = "JetBrains Mono", weight="Bold", italic=true},
		{family = "HackGenNerd", weight="Bold", italic=true},
	}),
	font_size = 15,
	color_scheme = "nord",
	send_composed_key_when_right_alt_is_pressed = false,
	enable_tab_bar = false,

}


