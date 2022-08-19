local lualine = require('lualine')
lualine.setup{
				options = {
								theme = "gruvbox",
								section_separators = { left = '', right = '' },
								component_separators = { left = ' ', right = ' ' }
				},
				sections = {
								lualine_a = {
												{
																'mode',
																icons_enabled = true
												}
								}
				}
}
