local wezterm = require 'wezterm';

return {
	-- font = wezterm.font("JetBrains Mono", {weight="Bold", italic=true}),
	font = wezterm.font_with_fallback({
		{family = "FiraCode Nerd Font", weight="Medium", italic=false},
		{family = "VictorMono Nerd Font Mono", weight="Medium", italic=true},
		{family = "HackGenNerd", weight="Medium", italic=true},
	
		
	}),
	font_size = 15,
	color_scheme = "Gruvbox Dark",
	send_composed_key_when_right_alt_is_pressed = false,
	enable_tab_bar = true,

}


