vim.opt.runtimepath:append("~/.local/share/nvim/site/pack/packer/start/nvim-treesitter/parser")
require 'nvim-treesitter.configs'.setup {
	endwise = {
		enable = true
	},
	autotag = {
		enable = true
	},
	ensure_installed = "all", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  auto_install=true,
	ignore_install = { "phpdoc" },
	yati = { enable = true },
	highlight = {
		enable = true, -- false will disable the whole extension
		disable = { 'latex' },
		additional_vim_regex_highlighting = false,
	},
}
