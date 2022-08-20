require 'nvim-treesitter.configs'.setup {
	endwise = {
		enable = true
	},
	autotag = {
		enable = true
	},
	ensure_installed = "all", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
	ignore_install = { "phpdoc" },
	yati = { enable = true },
	highlight = {
		enable = true, -- false will disable the whole extension
		disable = { 'latex' },
		additional_vim_regex_highlighting = false,
	},
}
