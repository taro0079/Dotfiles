require('lualine').setup {
	options = {
		theme = 'catppuccin'
	},
	sections = {
		lualine_a = {
			{
				'mode',
				icons_enabled = true,
			},
		},
		lualine_b = {
			{'branch'},
			{'diff'},
			{'diagnostics'},
		},
		lualine_c = {
			{
				'filename',
				file_status = true,      -- Displays file status (readonly status, modified status)
				path = 1,                -- 0: Just the filename

				shorting_target = 40,    -- Shortens path to leave 40 spaces in the window
				-- for other components. (terrible name, any suggestions?)
				symbols = {
					modified = '[+]',      -- Text to show when the file is modified.
					readonly = '[-]',      -- Text to show when the file is non-modifiable or readonly.
					unnamed = '[No Name]', -- Text to show for unnamed buffers.
				}
			}
		},

	}
}
