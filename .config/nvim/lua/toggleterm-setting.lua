require("toggleterm").setup{
	size = function(term)
		if term.direction == "horizontal" then
			return 15
		elseif term.direction == "vertical" then
			return vim.o.columns * 0.4
		end
	end,
	open_mapping = [[<c-\>]],
	shade_terminals = true,
        shading_factor = '1', -- the degree by which to darken to terminal colour, default: 1 for dark backgrounds, 3 for light
	start_in_insert = true,
	insert_mappings = true, -- whether or not the open mapping applies in insert mode
	persist_size = true,
	direction = 'horizontal',
	close_on_exit = true, -- close the terminal window when the process exits
	shell = vim.o.shell,
	float_opts = {
		border = 'shadow',
		width = 80,
		height = 20,
		winblend = 15,
		highlights = {
			border = "Normal",
			background = "Normal",
		}
	}
}